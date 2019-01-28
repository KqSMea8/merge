.class public Lc8/msf;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xrf;,
        Lc8/asf;,
        Lc8/Yrf;,
        Lc8/isf;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;,
        Lc8/Wrf;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;,
        Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;,
        Lc8/ksf;,
        Lc8/bsf;,
        Lc8/dsf;,
        Lc8/fsf;,
        Lc8/gsf;,
        Lc8/csf;,
        Lc8/lsf;,
        Lc8/jsf;,
        Lc8/esf;,
        Lc8/hsf;
    }
.end annotation


# static fields
.field public static final ANR_CHECK_INTERVAL:I = 0xbb8

.field public static final BUNDLE_WATCH_INSTALL_FINISHED:I = 0x1

.field public static final BUNDLE_WATCH_START_BUNDLE:I = 0x2

.field public static final BUNDLE_WATCH_START_BUNDLE_FINISHED:I = 0x3

.field public static final BUNDLE_WATCH_START_INSTALL:I = 0x0

.field static final MSG_CHECK_ANR:I = 0x5

.field static final MSG_CHECK_APP_IMPORTANCE:I = 0x8

.field static final MSG_CHECK_THREAD:I = 0xc

.field static final MSG_COMMIT_DEVICE_INFO:I = 0x9

.field static final MSG_EMPTY_ON_IDEL:I = 0x1

.field static final MSG_GET_SYSTEM_INFO:I = 0x2

.field static final MSG_HOOK_METHOD:I = 0x3

.field static final MSG_NOTIFY_CHANGED:I = 0x4

.field static final MSG_ON_BACKBROUND:I = 0xb

.field static final MSG_ON_BOOT_END:I = 0xd

.field static final MSG_ON_CHECK_ACTIVITY_LOAD:I = 0x10

.field static final MSG_ON_CHECK_LIFECYCLE:I = 0xf

.field static final MSG_ON_STARTED_BUNDLE:I = 0x11

.field static final MSG_ON_START_MONITOR:I = 0xe

.field static final MSG_UPLOAD_BOOT_PERFORMANCE:I = 0x13

.field static final NUM_CATEGORIES:I = 0x7

.field static final TAG:Ljava/lang/String; = "OnLineMonitor"

.field public static final TASK_TYPE_FROM_BOOT:I = 0x186a0

.field static final offsetPrivateClean:I = 0x4

.field static final offsetPrivateDirty:I = 0x2

.field static final offsetPss:I = 0x0

.field static final offsetSharedClean:I = 0x5

.field static final offsetSharedDirty:I = 0x3

.field static final offsetSwappablePss:I = 0x1

.field static final offsetSwappedOut:I = 0x6

.field public static sApiLevel:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public static sIsDetailDebug:Z

.field public static sIsNormalDebug:Z

.field public static sIsTraceDetail:Z

.field static sOnLineMonitor:Lc8/msf;

.field static sOnLineMonitorFileDir:Ljava/lang/String;

.field public static sPerformanceLog:Z

.field static sThreadPriorty:I


# instance fields
.field mActivityIdleFistTime:J

.field mActivityIdleTime:J

.field mActivityLifecycleCallback:Lc8/Grf;

.field mActivityManager:Landroid/app/ActivityManager;

.field mActivityName:Ljava/lang/String;

.field mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

.field mActivityTraceRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

.field mActivitysHotOpenMap:Ljava/util/HashMap;
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

.field mActivitysMap:Ljava/util/HashMap;
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

.field mAnrCount:I

.field volatile mAppProgressImportance:I

.field volatile mApplicationContext:Landroid/content/Context;

.field mAvailMemory:J

.field mAvgIOWaitTime:I

.field mAvgMyPidScore:S

.field mAvgSystemRunningScore:S

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field mBatteryHealth:I

.field mBatteryLowStat:Z

.field mBatteryPercent:I

.field mBatteryStatus:I

.field mBatteryTemp:D

.field mBatteryV:I

.field mBgCpuTresholdCounter:I

.field mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBlockingGCCount:I

.field mBootActivityLoadTime:I

.field mBootEndTime:J

.field mBootJiffyTime:J

.field mBootLoadTimeTryCount:I

.field protected mBootResourceUsedInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBootStartActivityTime:I

.field mBootTotalTime:I

.field mBootUsedTime:I

.field volatile mCheckAnrCounter:I

.field mCheckAnrTime:J

.field mCheckIdleTimes:I

.field mClassCleaner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mClassFinalizer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mClassFragmentActivity:Ljava/lang/Class;

.field mColdBootOffsetTime:I

.field volatile mContext:Landroid/content/Context;

.field mCpuCheckIntervalControl:I

.field mCpuMaxFreq:F

.field mCpuProcessCount:S

.field mDalvikAllocated:J

.field mDalvikFree:J

.field mDalvikHeapSize:J

.field mDalvikPss:J

.field mDeviceTotalMemory:J

.field mDevicesScore:S

.field mDmVmInternalClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mEvaluateScore:Lc8/Irf;

.field mFileSchedIsNotExists:Z

.field mFirstMobileRxBytes:J

.field mFirstMobileTxBytes:J

.field mFirstSystemRunningScore:S

.field mFirstTotalRxBytes:J

.field mFirstTotalTxBytes:J

.field mGetStackTraceById:Ljava/lang/reflect/Method;

.field mGetSupportFragmentManager:Ljava/lang/reflect/Method;

.field mGetTotalUss:Ljava/lang/reflect/Method;

.field mGpuScore:I

.field mGraphicsSize:J

.field mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Lc8/asf;

.field protected mHandlerThreadTid:I

.field mHardWareInfo:Lc8/Lrf;

.field mIdleCheckIntervalControl:I

.field mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field mIdleNotifyCount:I

.field mInitBatteryPercent:I

.field mInitRunningProgress:I

.field mInitRunningService:I

.field mInited:Z

.field mIoIsWaitNow:Z

.field mIoWiatCount:S

.field mIsActivityColdOpen:Z

.field volatile mIsBootEndActivity:Z

.field mIsCheckAnrStat:Z

.field mIsCheckPerfromanceRunning:Z

.field mIsDeviceSampling:Z

.field mIsFirstOpenActivity:Z

.field mIsFullInBackGround:Z

.field mIsIdleGeted:Z

.field mIsInBackGround:Z

.field volatile mIsInBootStep:Z

.field mIsInitedActivity:Z

.field mIsLowMemroy:Z

.field protected mIsOnTouch:Z

.field mIsRooted:Z

.field mJavaHeapLimitLargeMemory:I

.field mJavaHeapLimitMemory:I

.field mJavaUsedMemoryPercent:J

.field mLastCPUCheckTime:J

.field mLastMemroyCheckTime:J

.field mLastNotifyType:I

.field mLastThreadPoolCheckTime:J

.field volatile mLastTimeThreadCount:I

.field mLayoutTimes:S

.field mLeakMemoryWeakMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadTimeCalculate:Lc8/Prf;

.field mMainThread:Ljava/lang/Thread;

.field mMajorFault:I

.field mMaxBlockIdletime:J

.field mMaxCanUseJavaMemory:I

.field mMaxPidRunningScore:S

.field mMaxRunningThreadCount:I

.field mMaxRuntimeThreadCount:I

.field mMaxSystemRunningScore:S

.field mMaxThreadCount:I

.field mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field mMemoryThreshold:J

.field mMessageQueue:Landroid/os/MessageQueue;

.field mMinPidRunningScore:S

.field mMinSystemRunningScore:S

.field mMobileRxBytes:J

.field mMobileTxBytes:J

.field mMyAvgPidCPUPercent:I

.field mMyCallback:Lc8/Xrf;

.field mMyPid:I

.field mMyPidCPUPercent:I

.field mMyPidScore:S

.field mMyPidScoreTestCounter:S

.field mMyPidTotalScore:S

.field mNativeHeapAllocatedSize:J

.field mNativeHeapPss:J

.field mNativeHeapSize:J

.field mOldAnrCount:I

.field mOldMajorFault:I

.field mOldMemoryNotify:I

.field mOldMyPidScore:S

.field mOldSystemRunningScore:S

.field mOldThreadCount:I

.field mOldTrimMemoryLevel:I

.field protected mOnAccurateBootListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/bsf;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnActivityLifeCycleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/csf;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnActivityLoadListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/dsf;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnBackForGroundListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/esf;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnBootFinishedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/fsf;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnCheckViewTreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/gsf;",
            ">;"
        }
    .end annotation
.end field

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mOnLineMonitorNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/jsf;",
            ">;"
        }
    .end annotation
.end field

.field mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

.field mOnlineStatistics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/psf;",
            ">;"
        }
    .end annotation
.end field

.field mOpenFileCount:I

.field mOpenGlVersion:Ljava/lang/String;

.field mPerformanceBadTimes:I

.field mPerformanceCheckTimes:J

.field mPerformanceDecined:Z

.field mPidExeRunTime:F

.field mPidIoWaitCount:I

.field mPidIoWaitCountInit:I

.field mPidIoWaitCountLast:I

.field mPidIoWaitCountOld:I

.field mPidIoWaitCountStart:I

.field mPidIoWaitSum:I

.field mPidIoWaitSumAvg:I

.field mPidIoWaitSumInit:I

.field mPidIoWaitSumLast:I

.field mPidIoWaitSumOld:I

.field mPidIoWaitSumStart:I

.field mPidIoWaitTotal:I

.field mPidOldWaitCount:I

.field mPidOldWaitSum:F

.field mPidPerCpuLoad:F

.field mPidPerCpuLoadAvg:F

.field mPidPerCpuLoadInit:F

.field mPidPerCpuLoadLast:F

.field mPidPerCpuLoadStart:F

.field mPidPerCpuLoadTotal:F

.field mPidWaitCount:I

.field mPidWaitMax:F

.field mPidWaitSum:F

.field mProblemCheck:Lc8/rsf;

.field mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

.field mRemainAvailMemory:I

.field mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

.field mRunningProgress:I

.field mRunningService:I

.field mRunningThreadCount:I

.field mRuntimeThreadCount:I

.field mSchedIsWaitNow:Z

.field protected mSmoothCalculate:Lc8/tsf;

.field protected mSmoothDetailDataNotify:Lc8/lsf;

.field mStartBlockingGCCount:I

.field mStartBlockingGCTime:J

.field mStartGcCount:I

.field mStatusBarHeight:I

.field mSysAvgCPUPercent:I

.field mSysCPUPercent:I

.field mSysGetCounter:I

.field mSysScoreTestCounter:S

.field mSystemLoadAvg:[F

.field mSystemRunningScore:S

.field mSystemRunningTotalScore:S

.field mTest:S

.field mTestForTime:J

.field mTestSleepTime:J

.field mThreadCount:I

.field mThreadHandler:Landroid/os/Handler;

.field mThreadInfoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mThreadInfoTidHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mThreadStats:Ljava/lang/reflect/Method;

.field mTotalBlockingGCTime:J

.field mTotalGcCount:I

.field mTotalIOWaitTime:I

.field mTotalMyPidCPUPercent:I

.field mTotalPidRunningScore:I

.field mTotalPidRunningScoreCount:I

.field mTotalRxBytes:J

.field mTotalSysCPUPercent:I

.field mTotalSysRunningScore:I

.field mTotalSysRunningScoreCount:I

.field mTotalTxBytes:J

.field mTotalUsedMemory:J

.field mTraceDetail:Lc8/Asf;

.field mTrimMemoryLevel:I

.field mUIHiddenTime:J

.field mWeakBitmapHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWeakCheckedThreadPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    sput-boolean v1, Lc8/msf;->sIsNormalDebug:Z

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lc8/msf;->sPerformanceLog:Z

    .line 139
    sput-boolean v1, Lc8/msf;->sIsDetailDebug:Z

    .line 143
    sput-boolean v1, Lc8/msf;->sIsTraceDetail:Z

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lc8/msf;->sApiLevel:I

    .line 150
    sput v1, Lc8/msf;->sThreadPriorty:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lc8/Grf;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycleCallback"    # Lc8/Grf;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 755
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v25, Ljava/util/ArrayList;

    const/16 v26, 0x14

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    .line 153
    new-instance v25, Ljava/util/ArrayList;

    const/16 v26, 0x14

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    .line 154
    new-instance v25, Lc8/asf;

    const-string/jumbo v26, "OnLineMonitor"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lc8/asf;-><init>(Lc8/msf;Ljava/lang/String;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mHandlerThread:Lc8/asf;

    .line 159
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsOnTouch:Z

    .line 160
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    .line 161
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    .line 162
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    .line 163
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    .line 164
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    .line 165
    new-instance v25, Ljava/util/ArrayList;

    const/16 v26, 0x64

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    .line 187
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsActivityColdOpen:Z

    .line 235
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mMemoryThreshold:J

    .line 236
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsRooted:Z

    .line 237
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mOldThreadCount:I

    .line 238
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mThreadCount:I

    .line 240
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mCheckIdleTimes:I

    .line 260
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mOldTrimMemoryLevel:I

    .line 274
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mLastNotifyType:I

    .line 311
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mStartBlockingGCCount:I

    .line 319
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mStartBlockingGCTime:J

    .line 320
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsCheckPerfromanceRunning:Z

    .line 329
    new-instance v25, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 330
    new-instance v25, Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    .line 341
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mSystemLoadAvg:[F

    .line 366
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mInitRunningProgress:I

    .line 367
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mInitRunningService:I

    .line 416
    const/16 v25, 0x64

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mAppProgressImportance:I

    .line 459
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mInitBatteryPercent:I

    .line 500
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mFirstMobileRxBytes:J

    .line 516
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsInitedActivity:Z

    .line 522
    new-instance v25, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    invoke-direct/range {v25 .. v25}, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    .line 523
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mMyPid:I

    .line 534
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mPidIoWaitSumInit:I

    .line 545
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsFullInBackGround:Z

    .line 566
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    .line 571
    new-instance v25, Ljava/util/HashMap;

    const/16 v26, 0x200

    invoke-direct/range {v25 .. v26}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    .line 572
    new-instance v25, Ljava/util/HashMap;

    const/16 v26, 0x200

    invoke-direct/range {v25 .. v26}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mThreadInfoTidHashMap:Ljava/util/HashMap;

    .line 577
    const/16 v25, 0x64

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 581
    const/16 v25, 0x3e8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 582
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mLastThreadPoolCheckTime:J

    .line 586
    const/16 v25, 0x3e8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mColdBootOffsetTime:I

    .line 595
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsInBootStep:Z

    .line 608
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsDeviceSampling:Z

    .line 611
    new-instance v25, Ljava/util/HashMap;

    const/16 v26, 0x40

    invoke-direct/range {v25 .. v26}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    .line 612
    new-instance v25, Ljava/util/HashMap;

    const/16 v26, 0x40

    invoke-direct/range {v25 .. v26}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mActivitysHotOpenMap:Ljava/util/HashMap;

    .line 615
    new-instance v25, Ljava/util/WeakHashMap;

    const/16 v26, 0x40

    invoke-direct/range {v25 .. v26}, Ljava/util/WeakHashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    .line 616
    new-instance v25, Ljava/util/WeakHashMap;

    const/16 v26, 0x40

    invoke-direct/range {v25 .. v26}, Ljava/util/WeakHashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    .line 617
    new-instance v25, Ljava/util/WeakHashMap;

    const/16 v26, 0x40

    invoke-direct/range {v25 .. v26}, Ljava/util/WeakHashMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mWeakBitmapHashMap:Ljava/util/WeakHashMap;

    .line 619
    new-instance v25, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 620
    new-instance v25, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    .line 621
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mBootJiffyTime:J

    .line 624
    new-instance v25, Lc8/Urf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Urf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 699
    new-instance v25, Lc8/Vrf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Vrf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mContext:Landroid/content/Context;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 758
    const-string/jumbo v25, "OnLineMonitor"

    const-string/jumbo v26, "Context is null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v25

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 762
    const-string/jumbo v25, "OnLineMonitor"

    const-string/jumbo v26, "\u9519\u8bef\uff0c\u8bf7\u4e0d\u8981\u5728\u975e\u4e3b\u7ebf\u7a0b\u521d\u59cb\u5316OnLineMonitor\uff01"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    const-wide/32 v28, 0xf4240

    div-long v20, v26, v28

    .line 766
    .local v20, "t1":J
    :try_start_0
    sput-object p0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    .line 767
    sget-object v25, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    if-eqz v25, :cond_3

    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_3

    .line 768
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "/OnlineMonitor"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lc8/msf;->sOnLineMonitorFileDir:Ljava/lang/String;

    .line 769
    new-instance v12, Ljava/io/File;

    sget-object v25, Lc8/msf;->sOnLineMonitorFileDir:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_3

    .line 771
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 774
    .end local v12    # "file":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    .line 776
    new-instance v25, Lc8/Prf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Prf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    .line 777
    new-instance v25, Lc8/tsf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/tsf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    .line 780
    new-instance v25, Lc8/rsf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/rsf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mProblemCheck:Lc8/rsf;

    .line 781
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getTrafficStats()V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    move-object/from16 v25, v0

    if-nez v25, :cond_4

    .line 783
    new-instance v25, Lc8/Lrf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lc8/Lrf;-><init>(Lc8/msf;Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    .line 785
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 786
    new-instance v25, Lc8/Irf;

    invoke-direct/range {v25 .. v25}, Lc8/Irf;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    .line 788
    :cond_5
    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_6

    .line 789
    new-instance v25, Lc8/Asf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Asf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lc8/Asf;->mMainThreadTid:I

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lc8/Asf;->mMainThreadTid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lc8/Asf;->mMainThreadNice:I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getPriority()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lc8/Asf;->mMainThreadPriority:I

    .line 794
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmp-long v25, v26, v28

    if-nez v25, :cond_7

    .line 795
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mMainThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_7
    :try_start_1
    const-string/jumbo v25, "org.apache.harmony.dalvik.ddmc.DdmVmInternal"

    invoke-static/range {v25 .. v25}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 799
    .local v7, "dmVmInternalClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v25, "getThreadStats"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mThreadStats:Ljava/lang/reflect/Method;

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mThreadStats:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 801
    const-string/jumbo v25, "getStackTraceById"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mGetStackTraceById:Ljava/lang/reflect/Method;

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetStackTraceById:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 803
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/msf;->mDmVmInternalClazz:Ljava/lang/Class;

    .line 804
    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_8

    sget-boolean v25, Lc8/Asf;->sTraceMemoryAllocator:Z

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    const-string/jumbo v26, "enableRecentAllocations"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Asf;->mEnableRecentAllocations:Ljava/lang/reflect/Method;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mEnableRecentAllocations:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    const-string/jumbo v26, "getRecentAllocations"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Asf;->mGetRecentAllocations:Ljava/lang/reflect/Method;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mGetRecentAllocations:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 809
    sget-object v25, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    .line 813
    :cond_8
    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_9

    .line 814
    const-string/jumbo v25, "java.lang.Thread"

    invoke-static/range {v25 .. v25}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 815
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v25, Lc8/msf;->sApiLevel:I

    const/16 v26, 0x17

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_f

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    const-string/jumbo v26, "count"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    .line 820
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mNewTheadCountAyr:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/Thread;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v27

    aput v27, v25, v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "dmVmInternalClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Lrf;->getCpuCore()I

    move-result v25

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/msf;->mCpuProcessCount:S

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Lrf;->getMaxCpuFreq()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mCpuMaxFreq:F

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mCpuMaxFreq:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Lrf;->getMaxGpuFreq()J

    move-result-wide v14

    .line 833
    .local v14, "gpuMaxFreq":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-wide v14, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuMaxFreq:J

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    .line 837
    new-instance v25, Lc8/Xrf;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/Xrf;-><init>(Lc8/msf;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mMyCallback:Lc8/Xrf;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/ActivityManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mCpuCount:I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 842
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getProgressServiceCount()V

    .line 843
    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mJavaHeapLimitMemory:I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mJavaHeapLimitLargeMemory:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 849
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOpenGlVersion:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 853
    :goto_3
    :try_start_4
    sget-boolean v25, Lc8/osf;->sIsLargeHeap:Z

    if-eqz v25, :cond_10

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mJavaHeapLimitLargeMemory:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mMaxCanUseJavaMemory:I

    .line 860
    :goto_4
    sget v25, Lc8/msf;->sApiLevel:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_11

    .line 862
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 870
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mMemoryThreshold:J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 874
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    const-wide/16 v28, 0x400

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mAvailMemory:J

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsLowMemroy:Z

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->maxCanUseJavaMemory:I

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMemoryThreshold:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->memoryThreshold:I

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    .line 879
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x100

    cmp-long v25, v26, v28

    if-gez v25, :cond_12

    .line 880
    const-wide/16 v26, 0x100

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J

    .line 892
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    .line 893
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->evaluateSystemPerformance()V

    .line 894
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->calculateSystemCheckValue()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 897
    :try_start_8
    const-string/jumbo v25, "android.app.ActivityManagerNative"

    invoke-static/range {v25 .. v25}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 898
    .local v4, "classAMN":Ljava/lang/Class;
    const-string/jumbo v25, "gDefault"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 899
    .local v11, "fieldgDefault":Ljava/lang/reflect/Field;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 900
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 901
    .local v13, "gDefault":Ljava/lang/Object;
    const-string/jumbo v25, "android.util.Singleton"

    invoke-static/range {v25 .. v25}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 902
    .local v5, "classSingle":Ljava/lang/Class;
    const-string/jumbo v25, "mInstance"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 903
    .local v10, "fieldInstance":Ljava/lang/reflect/Field;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 904
    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 906
    .local v17, "objIActivityManager":Ljava/lang/Object;
    new-instance v8, Lc8/Wrf;

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v8, v0, v1}, Lc8/Wrf;-><init>(Lc8/msf;I)V

    .line 907
    .local v8, "dynamic":Lc8/Wrf;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lc8/Wrf;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 908
    .local v18, "objNew":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-static {v10, v13, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 915
    .end local v4    # "classAMN":Ljava/lang/Class;
    .end local v5    # "classSingle":Ljava/lang/Class;
    .end local v8    # "dynamic":Lc8/Wrf;
    .end local v10    # "fieldInstance":Ljava/lang/reflect/Field;
    .end local v11    # "fieldgDefault":Ljava/lang/reflect/Field;
    .end local v13    # "gDefault":Ljava/lang/Object;
    .end local v17    # "objIActivityManager":Ljava/lang/Object;
    .end local v18    # "objNew":Ljava/lang/Object;
    :cond_b
    :goto_8
    const/16 v25, 0x1

    :try_start_9
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mInited:Z

    .line 916
    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_c

    .line 917
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    const-wide/32 v28, 0xf4240

    div-long v22, v26, v28

    .line 918
    .local v22, "t2":J
    const-string/jumbo v25, "OnLineMonitor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "\u6700\u5927\u53ef\u7528Java\u5185\u5b58="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", \u8bbe\u5907\u603b\u5185\u5b58="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ",MemoryThreshold="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMemoryThreshold:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ",\u5269\u4f59\u53ef\u7528\u5185\u5b58="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ",OnLineMonitor\u521d\u59cb\u5316\u8017\u65f6="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sub-long v28, v22, v20

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 922
    const-string/jumbo v25, "OnLineMonitor"

    const-string/jumbo v26, "\u76ee\u524d\u5904\u4e8e\u4f4e\u5185\u5b58\u72b6\u6001\uff0c\u8fd0\u884c\u4f1a\u6bd4\u8f83\u6162!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v22    # "t2":J
    :cond_c
    sget-boolean v25, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v25, :cond_d

    .line 927
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u8bbe\u5907\u5f97\u5206"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",\u5c5e\u4e8e"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lc8/Asf;->getDeviceStatus()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",\u7cfb\u7edf"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mFirstSystemRunningScore:S

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/Asf;->getRunStatus(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 928
    .local v24, "text":Ljava/lang/String;
    const-string/jumbo v25, "OnLineMonitor"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v24    # "text":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "GOLDFISH"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "RANCHU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "VBOX86"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 933
    :cond_e
    const-string/jumbo v25, "OnLineMonitor"

    const-string/jumbo v26, "\u4f60\u6b63\u5728\u4f7f\u7528\u6a21\u62df\u5668\uff0c\u8be5\u8bbe\u5907\u5f97\u5206\u53ef\u80fd\u4f1a\u4e0d\u51c6\u786e!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 938
    .end local v14    # "gpuMaxFreq":J
    :catch_0
    move-exception v9

    .line 939
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 818
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "dmVmInternalClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    const-string/jumbo v26, "threadInitNumber"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 824
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "dmVmInternalClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    .line 825
    .local v9, "e":Ljava/lang/Exception;
    :try_start_b
    sget-boolean v25, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v25, :cond_9

    .line 826
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 851
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "gpuMaxFreq":J
    :catch_2
    move-exception v25

    const-string/jumbo v25, "2.0"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mOpenGlVersion:Ljava/lang/String;

    goto/16 :goto_3

    .line 856
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mJavaHeapLimitMemory:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mMaxCanUseJavaMemory:I

    goto/16 :goto_4

    .line 864
    :catch_3
    move-exception v25

    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getTotalMemFromFile()I

    move-result v25

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J

    goto/16 :goto_5

    .line 867
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getTotalMemFromFile()I

    move-result v25

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J

    goto/16 :goto_5

    .line 872
    :catch_4
    move-exception v25

    const-wide/16 v26, 0x40

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mMemoryThreshold:J

    goto/16 :goto_6

    .line 881
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x200

    cmp-long v25, v26, v28

    if-gez v25, :cond_13

    .line 882
    const-wide/16 v26, 0x200

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J

    goto/16 :goto_7

    .line 884
    :cond_13
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_9
    const/16 v25, 0x14

    move/from16 v0, v16

    move/from16 v1, v25

    if-gt v0, v1, :cond_a

    .line 885
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    .line 886
    .local v19, "tempMem":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v26, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v25, v26, v28

    if-gez v25, :cond_14

    .line 887
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDeviceTotalMemory:J

    goto/16 :goto_7

    .line 884
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 909
    .end local v16    # "i":I
    .end local v19    # "tempMem":I
    :catch_5
    move-exception v9

    .line 910
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_8
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

.method static synthetic access$000(Lc8/msf;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lc8/msf;

    .prologue
    .line 83
    iget-object v0, p0, Lc8/msf;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static createArrayMap()Ljava/util/Map;
    .locals 5

    .prologue
    .line 7125
    const/4 v2, 0x0

    .line 7127
    .local v2, "map":Ljava/util/Map;
    :try_start_0
    sget v3, Lc8/msf;->sApiLevel:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 7128
    const-string/jumbo v3, "android.util.ArrayMap"

    invoke-static {v3}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7129
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 7137
    .end local v1    # "clazz":Ljava/lang/Class;
    :goto_0
    if-nez v2, :cond_0

    .line 7138
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/Map;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7140
    .restart local v2    # "map":Ljava/util/Map;
    :cond_0
    return-object v2

    .line 7131
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android.support.v4.util.ArrayMap"

    invoke-static {v3}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7132
    .restart local v1    # "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getActivityLifecycle()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .prologue
    .line 1128
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-nez v0, :cond_0

    .line 1129
    const/4 v0, 0x0

    .line 1131
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    goto :goto_0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1470
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    if-nez v0, :cond_1

    .line 1471
    :cond_0
    const/4 v0, 0x0

    .line 1473
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v0, v0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method protected static getInstance()Lc8/msf;
    .locals 1

    .prologue
    .line 951
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    return-object v0
.end method

.method public static getOnLineMonitorLifecycle()Lc8/Grf;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    goto :goto_0
.end method

.method public static getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .locals 1

    .prologue
    .line 960
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;-><init>()V

    .line 963
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1864
    const/4 v1, 0x0

    .line 1867
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1868
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1876
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 1872
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 1876
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method static getResourceUsedInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;ZZZZ)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    .locals 12
    .param p0, "resourceUsedInfo"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    .param p1, "checkMemory"    # Z
    .param p2, "checkThreadCount"    # Z
    .param p3, "checkThreadInterval"    # Z
    .param p4, "isLastGet"    # Z

    .prologue
    .line 1502
    const/4 v3, 0x0

    .line 1503
    .local v3, "isNew":Z
    if-nez p0, :cond_0

    .line 1504
    const/4 v3, 0x1

    .line 1505
    new-instance p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .end local p0    # "resourceUsedInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    invoke-direct {p0}, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;-><init>()V

    .line 1506
    .restart local p0    # "resourceUsedInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityName:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string/jumbo v8, ""

    :goto_0
    iput-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->activityName:Ljava/lang/String;

    .line 1507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadName:Ljava/lang/String;

    .line 1508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadId:J

    .line 1509
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    .line 1513
    :cond_0
    if-eqz v3, :cond_8

    .line 1514
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    sget-boolean v9, Lc8/msf;->sIsTraceDetail:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1515
    const/4 v8, 0x7

    new-array v4, v8, [F

    .line 1516
    .local v4, "outfloats":[F
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    if-lez v8, :cond_1

    .line 1517
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-virtual {v8, v9}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->loadTaskTime(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    .line 1518
    sget-boolean v8, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v8, :cond_1

    .line 1519
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-virtual {v8, v9, v4}, Lc8/msf;->getThreadIoWaitAndLoadAvg(I[F)V

    .line 1522
    :cond_1
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitSum:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidIoWaitTime:I

    .line 1523
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidIoWaitCout:I

    .line 1524
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidWaitSum:F

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidSchedWaitTime:J

    .line 1525
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidWaitCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidSchedWaitCout:I

    .line 1527
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    .line 1528
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    .line 1529
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 1530
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitSum:I

    if-lez v8, :cond_2

    .line 1531
    const/4 v8, 0x4

    aget v8, v4, v8

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitTime:J

    .line 1532
    const/4 v8, 0x5

    aget v8, v4, v8

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitCout:J

    .line 1533
    const/4 v8, 0x0

    aget v8, v4, v8

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitTime:J

    .line 1534
    const/4 v8, 0x3

    aget v8, v4, v8

    float-to-long v8, v8

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitCout:J

    .line 1540
    :cond_2
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadStart:I

    .line 1541
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadEnd:I

    .line 1542
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    .line 1543
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMin:I

    .line 1544
    sget-boolean v8, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v8, :cond_3

    .line 1546
    :try_start_0
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v8, v8, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    const-class v9, Ljava/lang/Thread;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newThreadCount:I

    .line 1547
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->loadClassCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1552
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1553
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v8, p1}, Lc8/msf;->getMemInfo(Z)V

    .line 1555
    :cond_4
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    .line 1556
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    .line 1557
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMax:I

    .line 1558
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMin:I

    .line 1559
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mDalvikPss:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaStart:I

    .line 1560
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaEnd:I

    .line 1561
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMax:I

    .line 1562
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMin:I

    .line 1563
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mNativeHeapPss:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeStart:I

    .line 1564
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeEnd:I

    .line 1565
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMax:I

    .line 1566
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeStart:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMin:I

    .line 1567
    if-eqz p3, :cond_5

    .line 1568
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    .line 1571
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedTime:J

    .line 1572
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedCpuTime:J

    .line 1667
    :cond_6
    :goto_2
    return-object p0

    .line 1506
    .end local v4    # "outfloats":[F
    :cond_7
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1575
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedTime:J

    .line 1576
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 1577
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedCpuTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedCpuTime:J

    .line 1579
    :cond_9
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    sget-boolean v9, Lc8/msf;->sIsTraceDetail:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1580
    const/4 v8, 0x7

    new-array v4, v8, [F

    .line 1581
    .restart local v4    # "outfloats":[F
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    if-lez v8, :cond_b

    .line 1582
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-virtual {v8, v9}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->loadTaskTime(I)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    .line 1583
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    if-eq v8, v9, :cond_a

    .line 1584
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedCpuTime:J

    .line 1586
    :cond_a
    sget-boolean v8, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v8, :cond_b

    .line 1587
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskThreadTid:I

    invoke-virtual {v8, v9, v4}, Lc8/msf;->getThreadIoWaitAndLoadAvg(I[F)V

    .line 1591
    :cond_b
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    .line 1592
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    .line 1593
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 1594
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 1595
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 1597
    :cond_c
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_d

    .line 1598
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    .line 1600
    :cond_d
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_e

    .line 1601
    iget-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 1603
    :cond_e
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitSum:I

    if-lez v8, :cond_12

    .line 1604
    const/4 v8, 0x4

    aget v8, v4, v8

    float-to-long v8, v8

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitTime:J

    .line 1605
    const/4 v8, 0x5

    aget v8, v4, v8

    float-to-long v8, v8

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitCout:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitCout:J

    .line 1606
    const/4 v8, 0x0

    aget v8, v4, v8

    float-to-long v8, v8

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitTime:J

    .line 1607
    const/4 v8, 0x3

    aget v8, v4, v8

    float-to-long v8, v8

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitCout:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->schedWaitCout:J

    .line 1611
    :goto_3
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadEnd:I

    .line 1612
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadStart:I

    sget-object v9, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v9, v9, Lc8/msf;->mRuntimeThreadCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    .line 1613
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v8, v8, Lc8/msf;->mRuntimeThreadCount:I

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMin:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMin:I

    .line 1615
    :try_start_1
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v8, v8, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    const-class v9, Ljava/lang/Thread;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newThreadCount:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newThreadCount:I

    .line 1616
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v8

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->loadClassCount:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->loadClassCount:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1620
    :goto_4
    if-eqz p1, :cond_f

    .line 1621
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v8, p1}, Lc8/msf;->getMemInfo(Z)V

    .line 1623
    :cond_f
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    .line 1624
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    .line 1625
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v8, v8

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMax:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMax:I

    .line 1626
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v8, v8

    iget v9, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMin:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memMin:I

    .line 1627
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mDalvikPss:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaEnd:I

    .line 1628
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMax:I

    sget-object v9, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v10, v9, Lc8/msf;->mDalvikPss:J

    long-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMax:I

    .line 1629
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMin:I

    sget-object v9, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v10, v9, Lc8/msf;->mDalvikPss:J

    long-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memJavaMin:I

    .line 1630
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mNativeHeapPss:J

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeEnd:I

    .line 1631
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMax:I

    sget-object v9, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v10, v9, Lc8/msf;->mNativeHeapPss:J

    long-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMax:I

    .line 1632
    iget v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMin:I

    sget-object v9, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v10, v9, Lc8/msf;->mNativeHeapPss:J

    long-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memNativeMin:I

    .line 1633
    if-eqz p3, :cond_6

    .line 1634
    iget-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    if-eqz v8, :cond_6

    .line 1635
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 1636
    .local v0, "currentThreadsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v0, :cond_13

    .line 1637
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1638
    .local v7, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1639
    .local v1, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v1, :cond_10

    .line 1640
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 1642
    .local v6, "thread":Ljava/lang/Thread;
    iget-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1644
    iget-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newTheadMap:Ljava/util/Map;

    if-nez v8, :cond_11

    .line 1645
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newTheadMap:Ljava/util/Map;

    .line 1647
    :cond_11
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 1649
    .local v5, "statcks":[Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_10

    .line 1650
    iget-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->newTheadMap:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1609
    .end local v0    # "currentThreadsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v1    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "statcks":[Ljava/lang/StackTraceElement;
    .end local v6    # "thread":Ljava/lang/Thread;
    .end local v7    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :cond_12
    sget-object v8, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mIoWaitTime:J

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->ioWaitTime:J

    goto/16 :goto_3

    .line 1657
    .restart local v0    # "currentThreadsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_13
    if-eqz p4, :cond_14

    .line 1658
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    goto/16 :goto_2

    .line 1660
    :cond_14
    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    goto/16 :goto_2

    .end local v0    # "currentThreadsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :catch_0
    move-exception v8

    goto/16 :goto_4

    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method

.method public static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1845
    if-nez p0, :cond_1

    .line 1846
    const-string/jumbo p0, ""

    .line 1855
    .end local p0    # "name":Ljava/lang/String;
    .local v0, "lastIndex":I
    :cond_0
    :goto_0
    return-object p0

    .line 1848
    .end local v0    # "lastIndex":I
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1849
    .restart local v0    # "lastIndex":I
    if-gez v0, :cond_2

    .line 1850
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1852
    :cond_2
    if-ltz v0, :cond_0

    .line 1855
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    .locals 5
    .param p0, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "start"    # I
    .param p2, "depth"    # I

    .prologue
    .line 1219
    if-nez p0, :cond_0

    .line 1220
    const/4 v3, 0x0

    .line 1240
    :goto_0
    return-object v3

    .line 1222
    :cond_0
    array-length v3, p0

    if-lt p1, v3, :cond_1

    .line 1223
    const/4 p1, 0x0

    .line 1226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1227
    .local v1, "sbStack":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "j":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 1228
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";</br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    if-lez p2, :cond_2

    if-ge v0, p2, :cond_3

    .line 1227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1237
    .end local v2    # "temp":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1238
    const-string/jumbo v3, "Test For StackTraceElement;Test For StackTraceElement\uff1bTest For StackTraceElement\uff1b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1860
    invoke-static {p0}, Lc8/msf;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static isActivityTouched()Z
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-nez v0, :cond_1

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 1167
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityTouched:Z

    goto :goto_0
.end method

.method public static isInHomeActivity()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1147
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 1155
    .local v0, "lastActivity":Ljava/lang/String;
    .local v1, "len":I
    :cond_0
    :goto_0
    return v2

    .line 1150
    .end local v0    # "lastActivity":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_1
    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v1, v3

    .line 1151
    .restart local v1    # "len":I
    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v0, v3, v4

    .line 1152
    .restart local v0    # "lastActivity":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1155
    sget-object v2, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isTraceDetail()Z
    .locals 1

    .prologue
    .line 967
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    return v0
.end method

.method public static onInstallBundler(Ljava/lang/String;I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1671
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v3, :cond_0

    sget-boolean v3, Lc8/msf;->sIsTraceDetail:Z

    if-nez v3, :cond_1

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 1675
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    .line 1676
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    .line 1678
    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 1679
    :cond_3
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1680
    .local v2, "tid":I
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;-><init>()V

    .line 1681
    .local v0, "bundleInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->activityName:Ljava/lang/String;

    .line 1682
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadId:J

    .line 1683
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    .line 1684
    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1685
    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1686
    .local v1, "index":I
    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->threadName:Ljava/lang/String;

    .line 1688
    .end local v1    # "index":I
    :cond_4
    iput-object p0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->bundleName:Ljava/lang/String;

    .line 1689
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-boolean v3, v3, Lc8/msf;->mIsInBootStep:Z

    iput-boolean v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->isInBoot:Z

    .line 1690
    iput v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->tid:I

    .line 1691
    const/4 v3, 0x0

    invoke-static {v3, v6, v6, v6, v6}, Lc8/msf;->getResourceUsedInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;ZZZZ)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .line 1693
    if-nez p1, :cond_5

    .line 1694
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1696
    :cond_5
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1702
    .end local v0    # "bundleInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    .end local v2    # "tid":I
    :cond_6
    if-eq p1, v5, :cond_7

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 1704
    :cond_7
    if-ne p1, v5, :cond_8

    .line 1705
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;

    .line 1709
    .restart local v0    # "bundleInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    :goto_1
    if-eqz v0, :cond_0

    .line 1712
    iget-object v3, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    invoke-static {v3, v6, v6, v6, v5}, Lc8/msf;->getResourceUsedInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;ZZZZ)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    goto/16 :goto_0

    .line 1707
    .end local v0    # "bundleInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    :cond_8
    sget-object v3, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;

    .restart local v0    # "bundleInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    goto :goto_1
.end method

.method public static onTaskEnd(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;)V
    .locals 2
    .param p0, "resourceUsedInfo"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .prologue
    const/4 v1, 0x0

    .line 1489
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-static {p0, v1, v1, v1, v1}, Lc8/msf;->getResourceUsedInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;ZZZZ)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .line 1493
    iget v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->type:I

    const v1, 0x186a0

    if-ne v0, v1, :cond_0

    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1494
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1495
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onTaskStart(Ljava/lang/String;II)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    .locals 3
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "taskQueuePriority"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1477
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-nez v1, :cond_0

    .line 1485
    :goto_0
    return-object v0

    .line 1480
    :cond_0
    invoke-static {v0, v2, v2, v2, v2}, Lc8/msf;->getResourceUsedInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;ZZZZ)Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-result-object v0

    .line 1481
    .local v0, "resourceUsedInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    iput-object p0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskName:Ljava/lang/String;

    .line 1482
    iput p1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskQueuePriority:I

    .line 1483
    iput p2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->type:I

    .line 1484
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-boolean v1, v1, Lc8/msf;->mIsInBootStep:Z

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->isInBootStep:Z

    goto :goto_0
.end method

.method public static putCheckedThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V
    .locals 1
    .param p0, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p1, "poolName"    # Ljava/lang/String;

    .prologue
    .line 1211
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static registerBackForGroundListener(Lc8/esf;)Z
    .locals 3
    .param p0, "l"    # Lc8/esf;

    .prologue
    .line 1393
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1394
    :cond_0
    const/4 v1, 0x0

    .line 1408
    :goto_0
    return v1

    .line 1397
    :cond_1
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v2, v1, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1398
    :try_start_0
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    sget-boolean v1, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v1, :cond_2

    .line 1400
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 1401
    .local v0, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 1402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 1403
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v1, :cond_2

    .line 1404
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v1, v1, Lc8/Asf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    :cond_2
    monitor-exit v2

    .line 1408
    const/4 v1, 0x1

    goto :goto_0

    .line 1407
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerOnAccurateBootListener(Lc8/bsf;)Z
    .locals 2
    .param p0, "l"    # Lc8/bsf;

    .prologue
    .line 1100
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1101
    :cond_0
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    .line 1104
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1105
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    monitor-exit v1

    .line 1107
    const/4 v0, 0x1

    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerOnActivityLifeCycle(Lc8/csf;)Z
    .locals 3
    .param p0, "l"    # Lc8/csf;

    .prologue
    .line 977
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 978
    :cond_0
    const/4 v1, 0x0

    .line 992
    :goto_0
    return v1

    .line 981
    :cond_1
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v2, v1, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 982
    :try_start_0
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    sget-boolean v1, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v1, :cond_2

    .line 984
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 985
    .local v0, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 987
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v1, :cond_2

    .line 988
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v1, v1, Lc8/Asf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    :cond_2
    monitor-exit v2

    .line 992
    const/4 v1, 0x1

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerOnActivityLoadListener(Lc8/dsf;)Z
    .locals 2
    .param p0, "l"    # Lc8/dsf;

    .prologue
    .line 1073
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1074
    :cond_0
    const/4 v0, 0x0

    .line 1080
    :goto_0
    return v0

    .line 1077
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1078
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    monitor-exit v1

    .line 1080
    const/4 v0, 0x1

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerOnBootFinished(Lc8/fsf;)Z
    .locals 2
    .param p0, "l"    # Lc8/fsf;

    .prologue
    .line 1018
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1019
    :cond_0
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    .line 1022
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1023
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    monitor-exit v1

    .line 1025
    const/4 v0, 0x1

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerOnCheckViewTree(Lc8/gsf;)Z
    .locals 2
    .param p0, "l"    # Lc8/gsf;

    .prologue
    .line 1029
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    .line 1033
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1034
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    monitor-exit v1

    .line 1036
    const/4 v0, 0x1

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerOnlineNotify(Lc8/jsf;)Z
    .locals 3
    .param p0, "l"    # Lc8/jsf;

    .prologue
    .line 1357
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1358
    :cond_0
    const/4 v1, 0x0

    .line 1372
    :goto_0
    return v1

    .line 1361
    :cond_1
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v2, v1, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1362
    :try_start_0
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    sget-boolean v1, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v1, :cond_2

    .line 1364
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 1365
    .local v0, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 1366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 1367
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v1, :cond_2

    .line 1368
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v1, v1, Lc8/Asf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    :cond_2
    monitor-exit v2

    .line 1372
    const/4 v1, 0x1

    goto :goto_0

    .line 1371
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerOnlineStatistics(Lc8/psf;)Z
    .locals 2
    .param p0, "l"    # Lc8/psf;

    .prologue
    .line 1184
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .line 1191
    :goto_0
    return v0

    .line 1188
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1189
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    monitor-exit v1

    .line 1191
    const/4 v0, 0x1

    goto :goto_0

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerSmoothDetailListener(Lc8/lsf;)Z
    .locals 4
    .param p0, "l"    # Lc8/lsf;

    .prologue
    const/16 v3, 0xe10

    const/4 v0, 0x0

    .line 1429
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    if-nez v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iput-object p0, v1, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    .line 1434
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    new-array v2, v3, [S

    iput-object v2, v1, Lc8/tsf;->mFrameTimeByteArray:[S

    .line 1435
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iput-short v0, v1, Lc8/tsf;->mFrameTimeIndex:S

    .line 1436
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    new-array v2, v3, [S

    iput-object v2, v1, Lc8/Prf;->mFrameTimeByteArray:[S

    .line 1437
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iput-short v0, v1, Lc8/Prf;->mFrameTimeIndex:S

    .line 1438
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static regsterOnBootFinished(Lc8/fsf;)Z
    .locals 1
    .param p0, "l"    # Lc8/fsf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1042
    invoke-static {p0}, Lc8/msf;->registerOnBootFinished(Lc8/fsf;)Z

    move-result v0

    return v0
.end method

.method public static regsterOnlineNotify(Lc8/jsf;)Z
    .locals 1
    .param p0, "l"    # Lc8/jsf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1347
    invoke-static {p0}, Lc8/msf;->registerOnlineNotify(Lc8/jsf;)Z

    move-result v0

    return v0
.end method

.method public static setOnlineStatistics(Lc8/psf;)V
    .locals 1
    .param p0, "onlineStatistics"    # Lc8/psf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1177
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-nez v0, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1180
    :cond_0
    invoke-static {p0}, Lc8/msf;->registerOnlineStatistics(Lc8/psf;)Z

    goto :goto_0
.end method

.method public static setThreadRunTimeInfo(Ljava/lang/String;IJJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V
    .locals 44
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tid"    # I
    .param p2, "startTime"    # J
    .param p4, "realTime"    # J
    .param p6, "cpuTime"    # J
    .param p8, "className"    # Ljava/lang/String;
    .param p9, "queuePriority"    # I
    .param p10, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1245
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v4, :cond_0

    sget-boolean v4, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lc8/Asf;->sTraceStatisticsThread:Z

    if-eqz v4, :cond_0

    sget v4, Lc8/Asf;->sTraceRegThreadThreshold:I

    int-to-long v4, v4

    cmp-long v4, p4, v4

    if-gez v4, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    const/16 v34, 0x0

    .line 1249
    .local v34, "queueSize":I
    if-eqz p10, :cond_2

    invoke-virtual/range {p10 .. p10}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1250
    invoke-virtual/range {p10 .. p10}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v34

    .line 1251
    const/16 v4, 0x100

    move/from16 v0, v34

    if-le v0, v4, :cond_2

    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v4, :cond_2

    .line 1252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v42, v4, v6

    .line 1253
    .local v42, "time":J
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mLastThreadPoolCheckTime:J

    sub-long v4, v42, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 1254
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const-string/jumbo v5, "\u7ebf\u7a0b\u6c60\u8fc7\u4e8e\u7e41\u5fd9!"

    invoke-virtual {v4, v5}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 1255
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 1256
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move-wide/from16 v0, v42

    iput-wide v0, v4, Lc8/msf;->mLastThreadPoolCheckTime:J

    .line 1260
    .end local v42    # "time":J
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    .line 1262
    .local v13, "nice":I
    const-string/jumbo v33, ""

    .line 1263
    .local v33, "poolName":Ljava/lang/String;
    if-eqz p10, :cond_3

    .line 1264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1266
    :cond_3
    const/4 v4, 0x7

    new-array v0, v4, [F

    move-object/from16 v32, v0

    .line 1267
    .local v32, "outfloats":[F
    if-lez p1, :cond_4

    .line 1269
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lc8/msf;->getThreadIoWaitAndLoadAvg(I[F)V

    .line 1273
    :cond_4
    new-instance v3, Lcom/taobao/onlinemonitor/ThreadInfo;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-boolean v0, v5, Lc8/msf;->mIsInBackGround:Z

    move/from16 v20, v0

    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x5

    aget v5, v32, v5

    float-to-int v0, v5

    move/from16 v22, v0

    const/4 v5, 0x5

    aget v5, v32, v5

    float-to-int v0, v5

    move/from16 v23, v0

    const/4 v5, 0x3

    aget v5, v32, v5

    float-to-int v0, v5

    move/from16 v24, v0

    const/4 v5, 0x0

    aget v5, v32, v5

    float-to-int v0, v5

    move/from16 v25, v0

    const-string/jumbo v26, ""

    move-object/from16 v5, p0

    move/from16 v7, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v14, p2

    invoke-direct/range {v3 .. v26}, Lcom/taobao/onlinemonitor/ThreadInfo;-><init>(ILjava/lang/String;IIJJZIJJJZLjava/lang/String;IIIILjava/lang/String;)V

    .line 1275
    .local v3, "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    move-object/from16 v0, p8

    iput-object v0, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mClassName:Ljava/lang/String;

    .line 1276
    move/from16 v0, p9

    iput v0, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mQueuePriority:I

    .line 1277
    move-object/from16 v0, v33

    iput-object v0, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mPoolName:Ljava/lang/String;

    .line 1278
    move/from16 v0, v34

    iput v0, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mQueueSize:I

    .line 1280
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v4, v3}, Lc8/Asf;->getThreadSchedTime(Lcom/taobao/onlinemonitor/ThreadInfo;)V

    .line 1281
    sget-boolean v4, Lc8/Asf;->sTraceStatisticsPercent:Z

    if-eqz v4, :cond_8

    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-boolean v4, v4, Lc8/msf;->mIsInBootStep:Z

    if-eqz v4, :cond_8

    .line 1294
    :try_start_0
    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v30

    .line 1296
    .local v30, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->size()I

    move-result v39

    .line 1297
    .local v39, "tempSize":I
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mLastTimeThreadCount:I

    move/from16 v0, v39

    if-ge v4, v0, :cond_9

    .line 1298
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move/from16 v0, v39

    iput v0, v4, Lc8/msf;->mLastTimeThreadCount:I

    .line 1299
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-boolean v4, v4, Lc8/msf;->mIsInBootStep:Z

    if-eqz v4, :cond_9

    .line 1300
    new-instance v35, Ljava/lang/StringBuilder;

    const/16 v4, 0x12c

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1301
    .local v35, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v41

    .line 1302
    .local v41, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1303
    .local v2, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v2, :cond_5

    .line 1304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Thread;

    .line 1305
    .local v40, "thread":Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1306
    .local v29, "keyName":Ljava/lang/String;
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v4, v4, Lc8/Asf;->mBootDiffThreadMap:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/lang/StackTraceElement;

    .line 1308
    .local v37, "stackTraceElements":[Ljava/lang/StackTraceElement;
    if-eqz v37, :cond_5

    .line 1309
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move-object/from16 v0, v37

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_6

    .line 1310
    aget-object v4, v37, v27

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 1313
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 1314
    .local v36, "stack":Ljava/lang/String;
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v4, v4, Lc8/Asf;->mBootDiffThreadMap:Ljava/util/Map;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mIncreaseThreadList:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 1316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mIncreaseThreadList:Ljava/util/ArrayList;

    .line 1318
    :cond_7
    iget-object v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mIncreaseThreadList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    .line 1326
    .end local v2    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v27    # "i":I
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v29    # "keyName":Ljava/lang/String;
    .end local v30    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v35    # "sb":Ljava/lang/StringBuilder;
    .end local v36    # "stack":Ljava/lang/String;
    .end local v37    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v39    # "tempSize":I
    .end local v40    # "thread":Ljava/lang/Thread;
    .end local v41    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    .line 1340
    :cond_8
    :goto_3
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v4, Lc8/Asf;->mExecuteThreadInfoList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1341
    :try_start_3
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v4, v4, Lc8/Asf;->mExecuteThreadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1326
    .restart local v30    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .restart local v39    # "tempSize":I
    :cond_9
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1327
    :try_start_5
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mLastTimeThreadCount:I

    iput v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mTotalThreadCount:I

    .line 1329
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 1330
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v0, v4, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    move/from16 v38, v0

    .line 1331
    .local v38, "sysPercent":I
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v0, v4, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    move/from16 v31, v0

    .line 1332
    .local v31, "myPercent":I
    move/from16 v0, v31

    int-to-short v4, v0

    iput-short v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInPid:S

    .line 1333
    move/from16 v0, v38

    int-to-short v4, v0

    iput-short v4, v3, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInDevice:S
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 1457
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mHandlerThread:Lc8/asf;

    if-nez v0, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mHandlerThread:Lc8/asf;

    invoke-virtual {v0}, Lc8/asf;->start()V

    goto :goto_0
.end method

.method public static startPerformanceTrace()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1721
    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 1767
    .local v1, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :goto_0
    return v3

    .line 1725
    .end local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :cond_1
    :try_start_0
    new-instance v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-direct {v1}, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;-><init>()V

    .line 1726
    .restart local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iput-object v1, v4, Lc8/msf;->mActivityTraceRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 1727
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    .line 1728
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    .line 1729
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x0

    iput v5, v4, Lc8/msf;->mMaxRunningThreadCount:I

    .line 1730
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x0

    iput v5, v4, Lc8/msf;->mMaxThreadCount:I

    .line 1731
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x0

    iput v5, v4, Lc8/msf;->mSysGetCounter:I

    .line 1733
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1734
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lc8/msf;->getMemInfo(Z)V

    .line 1735
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v4}, Lc8/msf;->getTrafficStats()V

    .line 1737
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mRuntimeThreadCount:I

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    .line 1738
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memStart:S

    .line 1739
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mDalvikPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaStart:S

    .line 1740
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mNativeHeapPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeStart:S

    .line 1741
    sget v4, Lc8/msf;->sApiLevel:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    .line 1742
    const-string/jumbo v4, "art.gc.gc-count"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1743
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1744
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->gcCount:I

    .line 1746
    :cond_2
    const-string/jumbo v4, "art.gc.blocking-gc-count"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1747
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1748
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    .line 1750
    :cond_3
    const-string/jumbo v4, "art.gc.blocking-gc-time"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1751
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1752
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockTime:J

    .line 1756
    .end local v2    # "temp":Ljava/lang/String;
    :cond_4
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v4}, Lc8/msf;->getFinalizerReferenceQueueSize()I

    move-result v4

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    .line 1758
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mOpenFileCount:I

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    .line 1759
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v4

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    .line 1761
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalTxBytes:F

    float-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalTx:S

    .line 1762
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalRxBytes:F

    float-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalRx:S

    .line 1763
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mBatteryPercent:I

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->battery:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static stopPerformanceTrace()Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1775
    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v4

    .line 1835
    .local v1, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :goto_0
    return-object v1

    .line 1778
    .end local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :cond_1
    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v5, Lc8/msf;->mActivityTraceRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 1779
    .restart local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-nez v1, :cond_2

    move-object v1, v4

    .line 1780
    goto :goto_0

    .line 1783
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-wide v6, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    .line 1784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    .line 1786
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1787
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lc8/msf;->getMemInfo(Z)V

    .line 1788
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v4}, Lc8/msf;->getTrafficStats()V

    .line 1790
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mRuntimeThreadCount:I

    iget v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    .line 1791
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mMaxRunningThreadCount:I

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRunningThread:I

    .line 1792
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mMaxThreadCount:I

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxThread:I

    .line 1793
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memEnd:S

    .line 1794
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mDalvikPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaEnd:S

    .line 1795
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mDalvikHeapSize:J

    sget-object v6, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mDalvikFree:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaAllocal:S

    .line 1796
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mNativeHeapPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeEnd:S

    .line 1797
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mNativeHeapAllocatedSize:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeAllocal:S

    .line 1798
    sget v4, Lc8/msf;->sApiLevel:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    .line 1799
    const-string/jumbo v4, "art.gc.gc-count"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1800
    .local v3, "temp":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1801
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->gcCount:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->gcCount:I

    .line 1803
    :cond_3
    const-string/jumbo v4, "art.gc.blocking-gc-count"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1804
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1805
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    .line 1807
    :cond_4
    const-string/jumbo v4, "art.gc.blocking-gc-time"

    invoke-static {v4}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1808
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1809
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockTime:J

    .line 1813
    .end local v3    # "temp":Ljava/lang/String;
    :cond_5
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    invoke-virtual {v4}, Lc8/msf;->getFinalizerReferenceQueueSize()I

    move-result v4

    iget v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    .line 1815
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-short v4, v4, Lc8/msf;->mMyPidScore:S

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidScore:S

    .line 1816
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-short v4, v4, Lc8/msf;->mSystemRunningScore:S

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->sysScore:S

    .line 1817
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mMyAvgPidCPUPercent:I

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidAvgCpu:S

    .line 1818
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mSysAvgCPUPercent:I

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->sysAvgCpu:S

    .line 1820
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mOpenFileCount:I

    iget-short v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    sub-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    .line 1821
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v4

    iget v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    .line 1822
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mPidIoWaitCount:I

    if-lez v4, :cond_6

    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v2, v4, Lc8/msf;->mPidIoWaitCount:I

    .line 1823
    .local v2, "ioWaitCount":I
    :goto_1
    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    sub-int v4, v2, v4

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    .line 1824
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mPidIoWaitSumAvg:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    .line 1825
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mPidPerCpuLoadAvg:F

    sget-object v5, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mCpuProcessCount:S

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidPerCpuLoadAvg:F

    .line 1826
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mAvgIOWaitTime:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    .line 1827
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mSystemLoadAvg:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadAvg1Min:F

    .line 1829
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalTxBytes:F

    iget-short v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalTx:S

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalTx:S

    .line 1830
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalRxBytes:F

    iget-short v5, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalRx:S

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalRx:S

    .line 1831
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget v4, v4, Lc8/msf;->mBatteryPercent:I

    int-to-short v4, v4

    iput-short v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->battery:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1832
    .end local v2    # "ioWaitCount":I
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1822
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    sget-object v4, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-short v2, v4, Lc8/msf;->mIoWiatCount:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static unregisterBackForGroundListener(Lc8/esf;)Z
    .locals 2
    .param p0, "l"    # Lc8/esf;

    .prologue
    .line 1412
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1413
    :cond_0
    const/4 v0, 0x0

    .line 1417
    :goto_0
    return v0

    .line 1416
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1417
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnAccurateBootListener(Lc8/bsf;)V
    .locals 2
    .param p0, "l"    # Lc8/bsf;

    .prologue
    .line 1111
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1116
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1117
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnActivityLifeCycle(Lc8/csf;)V
    .locals 2
    .param p0, "l"    # Lc8/csf;

    .prologue
    .line 1002
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1007
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1008
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnActivityLoadListener(Lc8/dsf;)V
    .locals 2
    .param p0, "l"    # Lc8/dsf;

    .prologue
    .line 1084
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1089
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1090
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnBootFinished(Lc8/fsf;)V
    .locals 2
    .param p0, "l"    # Lc8/fsf;

    .prologue
    .line 1052
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1057
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1058
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnCheckViewTree(Lc8/gsf;)V
    .locals 2
    .param p0, "l"    # Lc8/gsf;

    .prologue
    .line 1062
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1067
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1068
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnlineNotify(Lc8/jsf;)Z
    .locals 2
    .param p0, "l"    # Lc8/jsf;

    .prologue
    .line 1376
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1377
    :cond_0
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    .line 1380
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1381
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnlineStatistics(Lc8/psf;)Z
    .locals 2
    .param p0, "l"    # Lc8/psf;

    .prologue
    .line 1195
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1196
    :cond_0
    const/4 v0, 0x0

    .line 1200
    :goto_0
    return v0

    .line 1199
    :cond_1
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1200
    :try_start_0
    sget-object v0, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterSmoothDetailListener()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1442
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    if-nez v1, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return v0

    .line 1446
    :cond_1
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iput-object v2, v1, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    .line 1447
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iput-short v0, v1, Lc8/tsf;->mFrameTimeIndex:S

    .line 1448
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iput-object v2, v1, Lc8/Prf;->mFrameTimeByteArray:[S

    .line 1449
    sget-object v1, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iput-short v0, v1, Lc8/Prf;->mFrameTimeIndex:S

    .line 1450
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addSmoothViewToLeak(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3089
    .local p2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v3, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v3, p1}, Lc8/tsf;->isSmoothView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3090
    iget-object v3, p0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 3100
    check-cast v1, Landroid/view/ViewGroup;

    .line 3101
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3102
    .local v0, "cc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3103
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lc8/msf;->addSmoothViewToLeak(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    .line 3102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3106
    .end local v0    # "cc":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method back2ForeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2684
    iget-boolean v0, p0, Lc8/msf;->mIsFullInBackGround:Z

    if-eqz v0, :cond_1

    .line 2685
    iput-boolean v2, p0, Lc8/msf;->mIsFullInBackGround:Z

    .line 2686
    iget v0, p0, Lc8/msf;->mTrimMemoryLevel:I

    iput v0, p0, Lc8/msf;->mOldTrimMemoryLevel:I

    .line 2687
    iget-object v0, p0, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    .line 2688
    iget-object v0, p0, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2689
    invoke-virtual {p0}, Lc8/msf;->registerComponentCallbacks()V

    .line 2691
    :cond_0
    invoke-virtual {p0}, Lc8/msf;->startPerformanceMonitor()V

    .line 2692
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFullInBackGround:Z

    .line 2695
    :cond_1
    iget-boolean v0, p0, Lc8/msf;->mIsInBackGround:Z

    if-eqz v0, :cond_5

    .line 2696
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/msf;->notifyBackForGroundListener(I)V

    .line 2697
    iput-boolean v2, p0, Lc8/msf;->mIsInBackGround:Z

    .line 2698
    iget-object v0, p0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 2699
    iget-object v0, p0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2701
    :cond_2
    iget v0, p0, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 2702
    iput v2, p0, Lc8/msf;->mTrimMemoryLevel:I

    .line 2704
    :cond_3
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 2705
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 2707
    :cond_4
    iget-boolean v0, p0, Lc8/msf;->mIsFullInBackGround:Z

    if-nez v0, :cond_5

    .line 2708
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 2709
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2713
    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/msf;->mUIHiddenTime:J

    .line 2714
    return-void
.end method

.method calculateSystemCheckValue()V
    .locals 6

    .prologue
    const/16 v5, 0xfa

    const/16 v4, 0x55

    const/16 v3, 0x32

    const/16 v2, 0x46

    const/16 v1, 0x3c

    .line 2543
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v4, :cond_1

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-lt v0, v4, :cond_1

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-lt v0, v2, :cond_1

    .line 2546
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2547
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2548
    const/16 v0, 0x50

    iput v0, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2549
    const/16 v0, 0x3e8

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2550
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0x50

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2551
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iput v5, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 2613
    :cond_0
    :goto_0
    return-void

    .line 2552
    :cond_1
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v4, :cond_2

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-lt v0, v2, :cond_2

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-lt v0, v2, :cond_2

    .line 2555
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2556
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2557
    const/16 v0, 0x64

    iput v0, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2558
    const/16 v0, 0x7d0

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2559
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0x64

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2560
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x190

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    goto :goto_0

    .line 2561
    :cond_2
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v1, :cond_3

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-lt v0, v2, :cond_3

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-lt v0, v2, :cond_3

    .line 2564
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2565
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2566
    const/16 v0, 0xc8

    iput v0, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2567
    const/16 v0, 0x9c4

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2568
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0x78

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2569
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x1f4

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 2570
    const/16 v0, 0x4b0

    iput v0, p0, Lc8/msf;->mColdBootOffsetTime:I

    goto :goto_0

    .line 2571
    :cond_3
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v1, :cond_4

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-lt v0, v1, :cond_4

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-lt v0, v1, :cond_4

    .line 2574
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2575
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2576
    iput v5, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2577
    const/16 v0, 0xbb8

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2578
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0x96

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2579
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x258

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    goto/16 :goto_0

    .line 2580
    :cond_4
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v3, :cond_5

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-le v0, v1, :cond_5

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-le v0, v1, :cond_5

    .line 2583
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2584
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2585
    iput v5, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2586
    const/16 v0, 0xdac

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2587
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0xb4

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2588
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x2bc

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 2589
    const/16 v0, 0x5dc

    iput v0, p0, Lc8/msf;->mColdBootOffsetTime:I

    goto/16 :goto_0

    .line 2590
    :cond_5
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    if-lt v0, v3, :cond_6

    iget-short v0, p0, Lc8/msf;->mSystemRunningScore:S

    if-lt v0, v1, :cond_6

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-lt v0, v1, :cond_6

    .line 2593
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    shl-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2594
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2595
    const/16 v0, 0x12c

    iput v0, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2596
    const/16 v0, 0xfa0

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2597
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0xdc

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2598
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x320

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 2599
    const/16 v0, 0x5dc

    iput v0, p0, Lc8/msf;->mColdBootOffsetTime:I

    goto/16 :goto_0

    .line 2600
    :cond_6
    iget-short v0, p0, Lc8/msf;->mFirstSystemRunningScore:S

    if-le v0, v3, :cond_7

    iget-short v0, p0, Lc8/msf;->mAvgMyPidScore:S

    if-gt v0, v3, :cond_0

    .line 2603
    :cond_7
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolCoreSize:S

    .line 2604
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-short v1, p0, Lc8/msf;->mCpuProcessCount:S

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->recommendPoolMaxSize:S

    .line 2605
    const/16 v0, 0x12c

    iput v0, p0, Lc8/msf;->mIdleCheckIntervalControl:I

    .line 2606
    const/16 v0, 0x1194

    iput v0, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    .line 2607
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const-wide/16 v2, 0xfa

    iput-wide v2, v0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 2608
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/16 v1, 0x384

    iput v1, v0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 2609
    const/16 v0, 0x7d0

    iput v0, p0, Lc8/msf;->mColdBootOffsetTime:I

    goto/16 :goto_0
.end method

.method checkMemoryLeack(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4806
    .local p1, "arrayListLeakObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 4810
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v12}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4811
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4812
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4813
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 4814
    .local v10, "val":Ljava/lang/Object;
    instance-of v12, v10, Ljava/lang/ref/WeakReference;

    if-eqz v12, :cond_0

    .line 4815
    move-object v0, v10

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v11, v0

    .line 4816
    .local v11, "weakReference":Ljava/lang/ref/WeakReference;
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 4818
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v10    # "val":Ljava/lang/Object;
    .end local v11    # "weakReference":Ljava/lang/ref/WeakReference;
    :catch_0
    move-exception v12

    .line 4826
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v12}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 4827
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4828
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 4829
    if-eqz p1, :cond_3

    .line 4830
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4832
    :cond_3
    if-eqz v7, :cond_2

    .line 4833
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4834
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_2

    .line 4835
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/psf;

    .line 4836
    .local v8, "onlineStatistics":Lc8/psf;
    if-eqz v8, :cond_4

    .line 4837
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    const-string/jumbo v13, ""

    invoke-interface {v8, v12, v14, v15, v13}, Lc8/psf;->onMemoryLeak(Ljava/lang/String;JLjava/lang/String;)V

    .line 4834
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4844
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "onlineStatistics":Lc8/psf;
    .end local v9    # "size":I
    :cond_5
    return-void
.end method

.method checkToStopPerformance(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    const-wide/16 v4, 0x3a98

    const-wide/16 v2, 0x0

    .line 4318
    iget-object v0, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget-wide v0, v0, Lc8/tsf;->mLastTouchTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iget-wide v0, v0, Lc8/Prf;->mLoadStartTime:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget-wide v0, v0, Lc8/tsf;->mLastTouchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget-wide v0, v0, Lc8/tsf;->mLastTouchTime:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 4319
    :cond_1
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4320
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lc8/Asf;->sTraceThread:Z

    if-eqz v0, :cond_2

    .line 4321
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4323
    :cond_2
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isSystemIdle:Z

    .line 4325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/msf;->mIsCheckPerfromanceRunning:Z

    .line 4327
    :cond_3
    return-void
.end method

.method clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 4714
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 4715
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 4717
    :cond_0
    iget-object v0, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    if-eqz v0, :cond_1

    .line 4718
    iget-object v0, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lc8/msf;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 4719
    iget-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4721
    :cond_1
    iput v2, p0, Lc8/msf;->mCheckIdleTimes:I

    .line 4722
    iget v0, p0, Lc8/msf;->mBlockingGCCount:I

    iput v0, p0, Lc8/msf;->mStartBlockingGCCount:I

    .line 4723
    iget-wide v0, p0, Lc8/msf;->mTotalBlockingGCTime:J

    iput-wide v0, p0, Lc8/msf;->mStartBlockingGCTime:J

    .line 4724
    iget v0, p0, Lc8/msf;->mTotalGcCount:I

    iput v0, p0, Lc8/msf;->mStartGcCount:I

    .line 4725
    iput-wide v4, p0, Lc8/msf;->mActivityIdleTime:J

    .line 4726
    iput v2, p0, Lc8/msf;->mSysGetCounter:I

    .line 4727
    iput v2, p0, Lc8/msf;->mTotalSysCPUPercent:I

    .line 4728
    iput v2, p0, Lc8/msf;->mTotalMyPidCPUPercent:I

    .line 4729
    iput v2, p0, Lc8/msf;->mTotalIOWaitTime:I

    .line 4730
    iput v2, p0, Lc8/msf;->mOldMajorFault:I

    .line 4731
    iput-short v2, p0, Lc8/msf;->mMyPidScoreTestCounter:S

    .line 4732
    iput-short v2, p0, Lc8/msf;->mSysScoreTestCounter:S

    .line 4733
    iput-short v2, p0, Lc8/msf;->mSystemRunningTotalScore:S

    .line 4734
    iput-short v2, p0, Lc8/msf;->mMyPidTotalScore:S

    .line 4735
    iput-wide v4, p0, Lc8/msf;->mLastMemroyCheckTime:J

    .line 4736
    iput-wide v4, p0, Lc8/msf;->mLastCPUCheckTime:J

    .line 4737
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/msf;->mFirstMobileRxBytes:J

    .line 4738
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v0, :cond_2

    .line 4739
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityTouched:Z

    .line 4741
    :cond_2
    return-void
.end method

.method commitOnActivityPaused()V
    .locals 26

    .prologue
    .line 4629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsIdleGeted:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsInitedActivity:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 4630
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/msf;->mMobileRxBytes:J

    .line 4631
    .local v10, "mobileRxBytes":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lc8/msf;->mMobileTxBytes:J

    .line 4632
    .local v12, "mobileTxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalRxBytes:J

    move-wide/from16 v16, v0

    .line 4633
    .local v16, "totalRxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalTxBytes:J

    move-wide/from16 v18, v0

    .line 4635
    .local v18, "totalTxBytes":J
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getTrafficStats()V

    .line 4637
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMobileRxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v10

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v5, v0

    .line 4638
    .local v5, "fmobileRxBytes":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMobileTxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v12

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v6, v0

    .line 4639
    .local v6, "fmobileTxBytes":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalRxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v16

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v7, v0

    .line 4640
    .local v7, "ftotalRxBytes":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalTxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v18

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v8, v0

    .line 4642
    .local v8, "ftotalTxBytes":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->activityMobileRxBytes:F

    .line 4643
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->activityMobileTxBytes:F

    .line 4644
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v7, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->activityTotalRxBytes:F

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->activityTotalTxBytes:F

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMobileRxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mFirstMobileRxBytes:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalMobileRxBytes:F

    .line 4647
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mMobileTxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mFirstMobileTxBytes:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalMobileTxBytes:F

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalRxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mFirstTotalRxBytes:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalRxBytes:F

    .line 4649
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalTxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mFirstTotalTxBytes:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalTxBytes:F

    .line 4654
    sget-boolean v20, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v20, :cond_1

    .line 4655
    const-string/jumbo v20, "OnLineMonitor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MobileRxBytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ",MobileTxBytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ",TotalRxBytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ",TotalTxBytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    .end local v5    # "fmobileRxBytes":F
    .end local v6    # "fmobileTxBytes":F
    .end local v7    # "ftotalRxBytes":F
    .end local v8    # "ftotalTxBytes":F
    .end local v10    # "mobileRxBytes":J
    .end local v12    # "mobileTxBytes":J
    .end local v16    # "totalRxBytes":J
    .end local v18    # "totalTxBytes":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsInitedActivity:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 4663
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsInitedActivity:Z

    .line 4665
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalTxBytes:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalTx:S

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;->totalTotalRxBytes:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalRx:S

    .line 4668
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 4669
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lc8/Prf;->needStopLoadTimeCalculate(Z)V

    .line 4670
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v20, v0

    if-gtz v20, :cond_3

    .line 4672
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    .line 4673
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lc8/Prf;->setActivityInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 4677
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v20, v0

    if-gtz v20, :cond_4

    .line 4678
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mIdleNotifyCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->checkIdleTimes:S

    .line 4682
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/4 v4, 0x0

    .line 4683
    .local v4, "curfps":I
    :goto_0
    const/16 v20, 0x3c

    move/from16 v0, v20

    if-lt v4, v0, :cond_6

    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mTotalBadSmTime:I

    move/from16 v20, v0

    if-ltz v20, :cond_5

    .line 4685
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lc8/tsf;->mActivityTotalSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3c

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lc8/tsf;->mActivityTotalSmUsedTime:I

    .line 4686
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lc8/tsf;->mTotalBadSmTime:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lc8/tsf;->mActivityTotalSmUsedTime:I

    .line 4688
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    move/from16 v20, v0

    if-nez v20, :cond_a

    const/4 v4, 0x0

    .line 4690
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->avgSm:I

    .line 4691
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 4692
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->finalizerSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    .line 4695
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->onActivityPause()V

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v20, v0

    if-lez v20, :cond_b

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 4699
    .local v15, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v15, :cond_b

    .line 4700
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/psf;

    .line 4701
    .local v14, "onlineStatistics":Lc8/psf;
    if-eqz v14, :cond_8

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lc8/psf;->onActivityPaused(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 4699
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4682
    .end local v4    # "curfps":I
    .end local v9    # "i":I
    .end local v14    # "onlineStatistics":Lc8/psf;
    .end local v15    # "size":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mActivityTotalSmCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    move/from16 v21, v0

    div-int v4, v20, v21

    goto/16 :goto_0

    .line 4688
    .restart local v4    # "curfps":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/tsf;->mActivityTotalSmCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    move/from16 v21, v0

    div-int v4, v20, v21

    goto/16 :goto_1

    .line 4706
    :cond_b
    sget-boolean v20, Lc8/msf;->sIsTraceDetail:Z

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 4707
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    .line 4711
    .end local v4    # "curfps":I
    :cond_c
    return-void
.end method

.method commmitBootFinished()V
    .locals 11

    .prologue
    .line 3281
    iget-boolean v1, p0, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lc8/osf;->sIsBootCorrect:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/msf;->mBootActivityLoadTime:I

    if-lez v1, :cond_1

    .line 3282
    iget v1, p0, Lc8/msf;->mBootUsedTime:I

    iget v2, p0, Lc8/msf;->mBootActivityLoadTime:I

    add-int v8, v1, v2

    .line 3283
    .local v8, "bootTotalTime":I
    sget-boolean v1, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v1, :cond_0

    .line 3284
    const-string/jumbo v1, "OnLineMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7eaf\u542f\u52a8\u8017\u65f6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/msf;->mBootUsedTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \u542f\u52a8\u52a0\u9996\u9875\u8017\u65f6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \u9996\u9875\u7684StartActivityTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/msf;->mBootStartActivityTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff0c\u5e7f\u544a\u8017\u65f6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lc8/osf;->sAdvertisementTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    :cond_0
    sget-boolean v1, Lc8/osf;->sBackInGroundOnBoot:Z

    if-eqz v1, :cond_2

    .line 3287
    sget-boolean v1, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v1, :cond_1

    .line 3288
    const-string/jumbo v1, "OnLineMonitor"

    const-string/jumbo v2, "\u65e0\u6548\u7684\u542f\u52a8,\u542f\u52a8\u8fc7\u7a0b\u4e2d\u754c\u9762\u8fdb\u5165\u8fc7\u540e\u53f0!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    .end local v8    # "bootTotalTime":I
    :cond_1
    :goto_0
    return-void

    .line 3292
    .restart local v8    # "bootTotalTime":I
    :cond_2
    iput v8, p0, Lc8/msf;->mBootTotalTime:I

    .line 3293
    sget v1, Lc8/osf;->sMaxBootTotalTime:I

    if-le v8, v1, :cond_3

    .line 3294
    sget-boolean v1, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v1, :cond_1

    .line 3295
    const-string/jumbo v1, "OnLineMonitor"

    const-string/jumbo v2, "\u65e0\u6548\u7684\u542f\u52a8,\u6570\u636e\u5f02\u5e38!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3299
    :cond_3
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-nez v1, :cond_4

    .line 3300
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v2, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-object v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 3302
    :cond_4
    iget-object v1, p0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3303
    .local v10, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_6

    .line 3304
    iget-object v1, p0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/psf;

    .line 3305
    .local v0, "onlineStatistics":Lc8/psf;
    if-eqz v0, :cond_5

    .line 3306
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget v2, p0, Lc8/msf;->mBootUsedTime:I

    int-to-long v2, v2

    int-to-long v4, v8

    sget-boolean v6, Lc8/osf;->sIsCodeBoot:Z

    sget-object v7, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lc8/psf;->onBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;JJZLjava/lang/String;)V

    .line 3303
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3309
    .end local v0    # "onlineStatistics":Lc8/psf;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/msf;->mIsBootEndActivity:Z

    .line 3310
    iget-object v1, p0, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3311
    iget-object v1, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 3312
    iget-object v1, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method createOnGlobalLayoutListener(I)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1937
    new-instance v0, Lc8/isf;

    invoke-direct {v0, p0, p1}, Lc8/isf;-><init>(Lc8/msf;I)V

    return-object v0
.end method

.method doLifeCycleCheck(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 3112
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-nez v0, :cond_0

    .line 3124
    :goto_0
    return-void

    .line 3115
    :cond_0
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-nez v0, :cond_1

    .line 3116
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;-><init>()V

    iput-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 3117
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    .line 3118
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v1, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v1, v1, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    .line 3120
    :cond_1
    iget-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 3121
    new-instance v0, Lc8/Yrf;

    invoke-direct {v0, p0}, Lc8/Yrf;-><init>(Lc8/msf;)V

    iput-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    .line 3123
    :cond_2
    iget-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, p2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method evaluatePidPerformance()V
    .locals 3

    .prologue
    .line 3955
    iget-object v1, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    if-nez v1, :cond_1

    .line 3981
    :cond_0
    :goto_0
    return-void

    .line 3958
    :cond_1
    iget-object v1, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    invoke-virtual {v1, p0}, Lc8/Irf;->evaluatePidScore(Lc8/msf;)I

    move-result v0

    .line 3959
    .local v0, "pidScore":I
    if-lez v0, :cond_0

    .line 3962
    int-to-short v1, v0

    iput-short v1, p0, Lc8/msf;->mMyPidScore:S

    .line 3963
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget-short v2, p0, Lc8/msf;->mMyPidScore:S

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    .line 3964
    iget-short v1, p0, Lc8/msf;->mMinPidRunningScore:S

    if-nez v1, :cond_2

    .line 3965
    iget-short v1, p0, Lc8/msf;->mMyPidScore:S

    iput-short v1, p0, Lc8/msf;->mMinPidRunningScore:S

    .line 3967
    :cond_2
    iget v1, p0, Lc8/msf;->mTotalPidRunningScore:I

    iget-short v2, p0, Lc8/msf;->mMyPidScore:S

    add-int/2addr v1, v2

    iput v1, p0, Lc8/msf;->mTotalPidRunningScore:I

    .line 3968
    iget v1, p0, Lc8/msf;->mTotalPidRunningScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/msf;->mTotalPidRunningScoreCount:I

    .line 3971
    iget-short v1, p0, Lc8/msf;->mMyPidScoreTestCounter:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mMyPidScoreTestCounter:S

    .line 3972
    iget-short v1, p0, Lc8/msf;->mMyPidTotalScore:S

    iget-short v2, p0, Lc8/msf;->mMyPidScore:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mMyPidTotalScore:S

    .line 3973
    iget-short v1, p0, Lc8/msf;->mMyPidTotalScore:S

    iget-short v2, p0, Lc8/msf;->mMyPidScoreTestCounter:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mAvgMyPidScore:S

    .line 3975
    iget-short v1, p0, Lc8/msf;->mMaxPidRunningScore:S

    iget-short v2, p0, Lc8/msf;->mMyPidScore:S

    if-ge v1, v2, :cond_3

    .line 3976
    iget-short v1, p0, Lc8/msf;->mMyPidScore:S

    iput-short v1, p0, Lc8/msf;->mMaxPidRunningScore:S

    .line 3978
    :cond_3
    iget-short v1, p0, Lc8/msf;->mMinPidRunningScore:S

    iget-short v2, p0, Lc8/msf;->mMyPidScore:S

    if-le v1, v2, :cond_0

    .line 3979
    iget-short v1, p0, Lc8/msf;->mMyPidScore:S

    iput-short v1, p0, Lc8/msf;->mMinPidRunningScore:S

    goto :goto_0
.end method

.method evaluateSystemPerformance()V
    .locals 3

    .prologue
    .line 3984
    iget-object v1, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    if-nez v1, :cond_1

    .line 4013
    :cond_0
    :goto_0
    return-void

    .line 3987
    :cond_1
    iget-short v1, p0, Lc8/msf;->mDevicesScore:S

    if-nez v1, :cond_2

    .line 3988
    iget-object v1, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    iget-object v2, p0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    invoke-virtual {v1, p0, v2}, Lc8/Irf;->evaluateDeviceScore(Lc8/msf;Lc8/Lrf;)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mDevicesScore:S

    .line 3989
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget-short v2, p0, Lc8/msf;->mDevicesScore:S

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    .line 3991
    :cond_2
    iget-object v1, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    invoke-virtual {v1, p0}, Lc8/Irf;->evaluateSystemScore(Lc8/msf;)I

    move-result v0

    .line 3992
    .local v0, "sysScore":I
    if-lez v0, :cond_0

    .line 3995
    int-to-short v1, v0

    iput-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    .line 3996
    iget v1, p0, Lc8/msf;->mTotalSysRunningScore:I

    iget-short v2, p0, Lc8/msf;->mSystemRunningScore:S

    add-int/2addr v1, v2

    iput v1, p0, Lc8/msf;->mTotalSysRunningScore:I

    .line 3997
    iget v1, p0, Lc8/msf;->mTotalSysRunningScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/msf;->mTotalSysRunningScoreCount:I

    .line 3998
    iget-short v1, p0, Lc8/msf;->mFirstSystemRunningScore:S

    if-nez v1, :cond_3

    .line 3999
    iget-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    iput-short v1, p0, Lc8/msf;->mFirstSystemRunningScore:S

    .line 4000
    iget-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    iput-short v1, p0, Lc8/msf;->mMinSystemRunningScore:S

    .line 4001
    iget-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    iput-short v1, p0, Lc8/msf;->mMaxSystemRunningScore:S

    .line 4003
    :cond_3
    iget-object v1, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget-short v2, p0, Lc8/msf;->mSystemRunningScore:S

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    .line 4004
    iget-short v1, p0, Lc8/msf;->mSysScoreTestCounter:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mSysScoreTestCounter:S

    .line 4005
    iget-short v1, p0, Lc8/msf;->mSystemRunningTotalScore:S

    iget-short v2, p0, Lc8/msf;->mSystemRunningScore:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mSystemRunningTotalScore:S

    .line 4006
    iget-short v1, p0, Lc8/msf;->mSystemRunningTotalScore:S

    iget-short v2, p0, Lc8/msf;->mSysScoreTestCounter:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lc8/msf;->mAvgSystemRunningScore:S

    .line 4007
    iget-short v1, p0, Lc8/msf;->mMaxSystemRunningScore:S

    iget-short v2, p0, Lc8/msf;->mSystemRunningScore:S

    if-ge v1, v2, :cond_4

    .line 4008
    iget-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    iput-short v1, p0, Lc8/msf;->mMaxSystemRunningScore:S

    .line 4010
    :cond_4
    iget-short v1, p0, Lc8/msf;->mMinSystemRunningScore:S

    iget-short v2, p0, Lc8/msf;->mSystemRunningScore:S

    if-le v1, v2, :cond_0

    .line 4011
    iget-short v1, p0, Lc8/msf;->mSystemRunningScore:S

    iput-short v1, p0, Lc8/msf;->mMinSystemRunningScore:S

    goto :goto_0
.end method

.method getAllowCheckCountPerActivity()I
    .locals 2

    .prologue
    .line 2299
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    .line 2300
    const/16 v0, 0xa

    .line 2310
    :goto_0
    return v0

    .line 2301
    :cond_0
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x55

    if-lt v0, v1, :cond_1

    .line 2302
    const/16 v0, 0x8

    goto :goto_0

    .line 2303
    :cond_1
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_2

    .line 2304
    const/4 v0, 0x6

    goto :goto_0

    .line 2305
    :cond_2
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_3

    .line 2306
    const/4 v0, 0x4

    goto :goto_0

    .line 2307
    :cond_3
    iget-short v0, p0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4

    .line 2308
    const/4 v0, 0x3

    goto :goto_0

    .line 2310
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getCleanerQueueInfo()V
    .locals 56
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2316
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 2317
    .local v4, "activityRuntimeInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    sget v50, Lc8/msf;->sApiLevel:I

    const/16 v51, 0x17

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_0

    sget v50, Lc8/msf;->sApiLevel:I

    const/16 v51, 0x19

    move/from16 v0, v50

    move/from16 v1, v51

    if-gt v0, v1, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsActivityColdOpen:Z

    move/from16 v50, v0

    if-eqz v50, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassCleaner:Ljava/lang/Class;

    move-object/from16 v50, v0

    if-nez v50, :cond_1

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectGetCount:I

    move/from16 v34, v0

    .line 2321
    .local v34, "getCount":I
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->getAllowCheckCountPerActivity()I

    move-result v5

    .line 2322
    .local v5, "allowCount":I
    move/from16 v0, v34

    if-gt v0, v5, :cond_0

    .line 2325
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v50

    const-wide/32 v52, 0xf4240

    div-long v42, v50, v52

    .line 2326
    .local v42, "now":J
    iget-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetCleanerObjectTime:J

    move-wide/from16 v50, v0

    sub-long v50, v42, v50

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-lez v50, :cond_2

    iget-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetCleanerObjectTime:J

    move-wide/from16 v50, v0

    sub-long v50, v42, v50

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mCpuCheckIntervalControl:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v50, v50, v52

    if-gez v50, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v50, v0

    if-nez v50, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mTrimMemoryLevel:I

    move/from16 v50, v0

    const/16 v51, 0x3c

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_2

    sget-boolean v50, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v50, :cond_0

    .line 2329
    :cond_2
    move-wide/from16 v0, v42

    iput-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetCleanerObjectTime:J

    .line 2330
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectGetCount:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectGetCount:I

    .line 2331
    const/16 v46, 0x0

    .line 2333
    .local v46, "size":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassCleaner:Ljava/lang/Class;

    move-object/from16 v50, v0

    const-string/jumbo v51, "first"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v33

    .line 2334
    .local v33, "fieldHead":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassCleaner:Ljava/lang/Class;

    move-object/from16 v50, v0

    const-string/jumbo v51, "next"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2335
    .local v31, "fieldCleanerNext":Ljava/lang/reflect/Field;
    const-string/jumbo v50, "java.lang.ref.Reference"

    invoke-static/range {v50 .. v50}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v29

    .line 2336
    .local v29, "classReference":Ljava/lang/Class;
    const-string/jumbo v50, "referent"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v32

    .line 2337
    .local v32, "fieldFeferent":Ljava/lang/reflect/Field;
    const/16 v50, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2338
    const/16 v50, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2339
    const/16 v50, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassCleaner:Ljava/lang/Class;

    move-object/from16 v50, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 2342
    .local v38, "mObjCleanerHead":Ljava/lang/Object;
    if-eqz v38, :cond_0

    .line 2346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v50

    const-wide/32 v52, 0xf4240

    div-long v48, v50, v52

    .line 2347
    .local v48, "t1":J
    const/4 v13, 0x0

    .local v13, "bitmap2AreaSize":I
    const/16 v19, 0x0

    .local v19, "bitmapAreaSize":I
    const/16 v24, 0x0

    .local v24, "bitmapHalfAreaSize":I
    const/16 v20, 0x0

    .line 2348
    .local v20, "bitmapAreaSize1In4":I
    const/4 v12, 0x0

    .local v12, "bitmap20M":I
    const/4 v9, 0x0

    .local v9, "bitmap12M":I
    const/4 v10, 0x0

    .local v10, "bitmap15M":I
    const/4 v8, 0x0

    .local v8, "bitmap10M":I
    const/16 v17, 0x0

    .local v17, "bitmap8M":I
    const/16 v16, 0x0

    .local v16, "bitmap6M":I
    const/4 v15, 0x0

    .local v15, "bitmap4M":I
    const/4 v14, 0x0

    .local v14, "bitmap2M":I
    const/4 v11, 0x0

    .line 2349
    .local v11, "bitmap1M":I
    const/16 v22, 0x0

    .local v22, "bitmapByteSize":I
    const/16 v23, 0x0

    .local v23, "bitmapCount":I
    const/16 v25, 0x0

    .local v25, "bmp565Count":I
    const/16 v26, 0x0

    .line 2351
    .local v26, "bmp8888Count":I
    iget-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    move-object/from16 v50, v0

    if-nez v50, :cond_3

    .line 2352
    new-instance v50, Ljava/util/HashMap;

    invoke-direct/range {v50 .. v50}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v50

    iput-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    .line 2354
    :cond_3
    iget-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->size()I

    move-result v39

    .line 2355
    .local v39, "mapSzie":I
    const/4 v6, 0x0

    .line 2356
    .local v6, "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    sget-boolean v50, Lc8/Asf;->sTraceBigBitmap:Z

    if-eqz v50, :cond_4

    .line 2357
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v50, 0x3c

    move/from16 v0, v50

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2359
    .restart local v6    # "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mStatusBarHeight:I

    move/from16 v52, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v51, v51, v52

    mul-int v45, v50, v51

    .line 2361
    .local v45, "screenArea":I
    :try_start_1
    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .line 2362
    .local v40, "nextRef":Ljava/lang/Object;
    move-object/from16 v35, v40

    .line 2363
    .local v35, "headRef":Ljava/lang/Object;
    :cond_5
    if-eqz v40, :cond_16

    .line 2364
    add-int/lit8 v46, v46, 0x1

    .line 2365
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v50, v0

    const/16 v51, 0x55

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_15

    .line 2366
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 2367
    .local v41, "obj":Ljava/lang/Object;
    if-nez v39, :cond_6

    .line 2368
    if-eqz v41, :cond_6

    .line 2369
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v28

    .line 2370
    .local v28, "className":Ljava/lang/String;
    iget-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 2371
    .local v36, "integer":Ljava/lang/Integer;
    if-nez v36, :cond_28

    .line 2372
    iget-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    .end local v28    # "className":Ljava/lang/String;
    .end local v36    # "integer":Ljava/lang/Integer;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v50, v0

    const/16 v51, 0x3c

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_15

    move-object/from16 v0, v41

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v50, v0

    if-eqz v50, :cond_15

    .line 2380
    move-object/from16 v0, v41

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 2381
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v50

    if-nez v50, :cond_15

    .line 2382
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v50

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v51

    mul-int v18, v50, v51

    .line 2383
    .local v18, "bitmapArea":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v21

    .line 2384
    .local v21, "bitmapByte":I
    const/high16 v44, 0x100000

    .line 2385
    .local v44, "perM":I
    add-int/lit8 v23, v23, 0x1

    .line 2386
    add-int v22, v22, v21

    .line 2387
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v27

    .line 2388
    .local v27, "bmpConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v27, :cond_7

    .line 2389
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v47

    .line 2390
    .local v47, "type":I
    if-nez v47, :cond_29

    .line 2391
    add-int/lit8 v25, v25, 0x1

    .line 2397
    .end local v47    # "type":I
    :cond_7
    :goto_2
    const/16 v37, 0x0

    .line 2398
    .local v37, "isContains":Z
    move/from16 v0, v21

    move/from16 v1, v44

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakBitmapHashMap:Ljava/util/WeakHashMap;

    move-object/from16 v50, v0

    if-eqz v50, :cond_8

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakBitmapHashMap:Ljava/util/WeakHashMap;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    .line 2400
    if-nez v37, :cond_8

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakBitmapHashMap:Ljava/util/WeakHashMap;

    move-object/from16 v50, v0

    const-string/jumbo v51, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v0, v7, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    if-eqz v6, :cond_8

    .line 2405
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    :cond_8
    if-nez v37, :cond_15

    .line 2414
    if-lez v45, :cond_c

    .line 2415
    shl-int/lit8 v50, v45, 0x1

    move/from16 v0, v18

    move/from16 v1, v50

    if-lt v0, v1, :cond_9

    .line 2416
    add-int/lit8 v13, v13, 0x1

    .line 2418
    :cond_9
    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_a

    .line 2419
    add-int/lit8 v19, v19, 0x1

    .line 2421
    :cond_a
    div-int/lit8 v50, v45, 0x2

    move/from16 v0, v18

    move/from16 v1, v50

    if-lt v0, v1, :cond_b

    .line 2422
    add-int/lit8 v24, v24, 0x1

    .line 2424
    :cond_b
    div-int/lit8 v50, v45, 0x4

    move/from16 v0, v18

    move/from16 v1, v50

    if-lt v0, v1, :cond_c

    .line 2425
    add-int/lit8 v20, v20, 0x1

    .line 2428
    :cond_c
    const/high16 v50, 0x1400000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_d

    .line 2429
    add-int/lit8 v12, v12, 0x1

    .line 2431
    :cond_d
    const/high16 v50, 0xf00000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_e

    .line 2432
    add-int/lit8 v10, v10, 0x1

    .line 2434
    :cond_e
    const/high16 v50, 0xc00000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_f

    .line 2435
    add-int/lit8 v9, v9, 0x1

    .line 2437
    :cond_f
    const/high16 v50, 0xa00000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_10

    .line 2438
    add-int/lit8 v8, v8, 0x1

    .line 2440
    :cond_10
    const/high16 v50, 0x800000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_11

    .line 2441
    add-int/lit8 v17, v17, 0x1

    .line 2443
    :cond_11
    const/high16 v50, 0x600000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_12

    .line 2444
    add-int/lit8 v16, v16, 0x1

    .line 2446
    :cond_12
    const/high16 v50, 0x400000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_13

    .line 2447
    add-int/lit8 v15, v15, 0x1

    .line 2449
    :cond_13
    const/high16 v50, 0x200000

    move/from16 v0, v21

    move/from16 v1, v50

    if-lt v0, v1, :cond_14

    .line 2450
    add-int/lit8 v14, v14, 0x1

    .line 2452
    :cond_14
    move/from16 v0, v21

    move/from16 v1, v44

    if-lt v0, v1, :cond_15

    .line 2453
    add-int/lit8 v11, v11, 0x1

    .line 2460
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "bitmapArea":I
    .end local v21    # "bitmapByte":I
    .end local v27    # "bmpConfig":Landroid/graphics/Bitmap$Config;
    .end local v37    # "isContains":Z
    .end local v41    # "obj":Ljava/lang/Object;
    .end local v44    # "perM":I
    :cond_15
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v40

    .line 2461
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 2470
    .end local v35    # "headRef":Ljava/lang/Object;
    .end local v40    # "nextRef":Ljava/lang/Object;
    :cond_16
    :goto_3
    :try_start_2
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectSize:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 2471
    move/from16 v0, v46

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectSize:I

    .line 2473
    :cond_17
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    .line 2474
    move/from16 v0, v23

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    .line 2475
    move/from16 v0, v25

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap565Count:I

    .line 2476
    move/from16 v0, v26

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8888Count:I

    .line 2478
    :cond_18
    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    .line 2479
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapByteCount:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 2480
    move/from16 v0, v22

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapByteCount:I

    .line 2482
    :cond_19
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap1M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v11, :cond_1a

    .line 2483
    iput v11, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap1M:I

    .line 2485
    :cond_1a
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap2M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v14, :cond_1b

    .line 2486
    iput v14, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap2M:I

    .line 2488
    :cond_1b
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap4M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v15, :cond_1c

    .line 2489
    iput v15, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap4M:I

    .line 2491
    :cond_1c
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d

    .line 2492
    move/from16 v0, v16

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    .line 2494
    :cond_1d
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8M:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e

    .line 2495
    move/from16 v0, v17

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8M:I

    .line 2497
    :cond_1e
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap10M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v8, :cond_1f

    .line 2498
    iput v8, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap10M:I

    .line 2500
    :cond_1f
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap12M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v9, :cond_20

    .line 2501
    iput v9, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap12M:I

    .line 2503
    :cond_20
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap15M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v10, :cond_21

    .line 2504
    iput v10, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap15M:I

    .line 2506
    :cond_21
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap20M:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v12, :cond_22

    .line 2507
    iput v12, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap20M:I

    .line 2510
    :cond_22
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeScreen:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    .line 2511
    move/from16 v0, v19

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeScreen:I

    .line 2513
    :cond_23
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v24

    if-ge v0, v1, :cond_24

    .line 2514
    move/from16 v0, v24

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    .line 2516
    :cond_24
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize2Screen:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-ge v0, v13, :cond_25

    .line 2517
    iput v13, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize2Screen:I

    .line 2519
    :cond_25
    iget v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize14Screen:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v20

    if-ge v0, v1, :cond_26

    .line 2520
    move/from16 v0, v20

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize14Screen:I

    .line 2523
    :cond_26
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v50

    if-lez v50, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v50, v0

    if-eqz v50, :cond_27

    sget-boolean v50, Lc8/Asf;->sTraceBigBitmap:Z

    if-eqz v50, :cond_27

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v0, v6, v1}, Lc8/Asf;->saveBigBitmap(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2529
    :cond_27
    sget-boolean v50, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v50, :cond_0

    .line 2530
    const-string/jumbo v50, "OnLineMonitor"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "getCleanerQueueInfo size="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, ", time="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v52

    const-wide/32 v54, 0xf4240

    div-long v52, v52, v54

    sub-long v52, v52, v48

    invoke-virtual/range {v51 .. v53}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2535
    .end local v6    # "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v8    # "bitmap10M":I
    .end local v9    # "bitmap12M":I
    .end local v10    # "bitmap15M":I
    .end local v11    # "bitmap1M":I
    .end local v12    # "bitmap20M":I
    .end local v13    # "bitmap2AreaSize":I
    .end local v14    # "bitmap2M":I
    .end local v15    # "bitmap4M":I
    .end local v16    # "bitmap6M":I
    .end local v17    # "bitmap8M":I
    .end local v19    # "bitmapAreaSize":I
    .end local v20    # "bitmapAreaSize1In4":I
    .end local v22    # "bitmapByteSize":I
    .end local v23    # "bitmapCount":I
    .end local v24    # "bitmapHalfAreaSize":I
    .end local v25    # "bmp565Count":I
    .end local v26    # "bmp8888Count":I
    .end local v29    # "classReference":Ljava/lang/Class;
    .end local v31    # "fieldCleanerNext":Ljava/lang/reflect/Field;
    .end local v32    # "fieldFeferent":Ljava/lang/reflect/Field;
    .end local v33    # "fieldHead":Ljava/lang/reflect/Field;
    .end local v38    # "mObjCleanerHead":Ljava/lang/Object;
    .end local v39    # "mapSzie":I
    .end local v45    # "screenArea":I
    .end local v48    # "t1":J
    :catch_0
    move-exception v30

    .line 2536
    .local v30, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2374
    .end local v30    # "e":Ljava/lang/Throwable;
    .restart local v6    # "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .restart local v8    # "bitmap10M":I
    .restart local v9    # "bitmap12M":I
    .restart local v10    # "bitmap15M":I
    .restart local v11    # "bitmap1M":I
    .restart local v12    # "bitmap20M":I
    .restart local v13    # "bitmap2AreaSize":I
    .restart local v14    # "bitmap2M":I
    .restart local v15    # "bitmap4M":I
    .restart local v16    # "bitmap6M":I
    .restart local v17    # "bitmap8M":I
    .restart local v19    # "bitmapAreaSize":I
    .restart local v20    # "bitmapAreaSize1In4":I
    .restart local v22    # "bitmapByteSize":I
    .restart local v23    # "bitmapCount":I
    .restart local v24    # "bitmapHalfAreaSize":I
    .restart local v25    # "bmp565Count":I
    .restart local v26    # "bmp8888Count":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v29    # "classReference":Ljava/lang/Class;
    .restart local v31    # "fieldCleanerNext":Ljava/lang/reflect/Field;
    .restart local v32    # "fieldFeferent":Ljava/lang/reflect/Field;
    .restart local v33    # "fieldHead":Ljava/lang/reflect/Field;
    .restart local v35    # "headRef":Ljava/lang/Object;
    .restart local v36    # "integer":Ljava/lang/Integer;
    .restart local v38    # "mObjCleanerHead":Ljava/lang/Object;
    .restart local v39    # "mapSzie":I
    .restart local v40    # "nextRef":Ljava/lang/Object;
    .restart local v41    # "obj":Ljava/lang/Object;
    .restart local v45    # "screenArea":I
    .restart local v48    # "t1":J
    :cond_28
    :try_start_3
    iget-object v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v51

    add-int/lit8 v51, v51, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2466
    .end local v28    # "className":Ljava/lang/String;
    .end local v35    # "headRef":Ljava/lang/Object;
    .end local v36    # "integer":Ljava/lang/Integer;
    .end local v40    # "nextRef":Ljava/lang/Object;
    .end local v41    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v30

    .line 2467
    .restart local v30    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 2392
    .end local v30    # "e":Ljava/lang/Throwable;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "bitmapArea":I
    .restart local v21    # "bitmapByte":I
    .restart local v27    # "bmpConfig":Landroid/graphics/Bitmap$Config;
    .restart local v35    # "headRef":Ljava/lang/Object;
    .restart local v40    # "nextRef":Ljava/lang/Object;
    .restart local v41    # "obj":Ljava/lang/Object;
    .restart local v44    # "perM":I
    .restart local v47    # "type":I
    :cond_29
    const/16 v50, 0x3

    move/from16 v0, v47

    move/from16 v1, v50

    if-ne v0, v1, :cond_7

    .line 2393
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2
.end method

.method getCpuInfo(ZZZ)V
    .locals 10
    .param p1, "getioWait"    # Z
    .param p2, "getFileCount"    # Z
    .param p3, "getThreadStat"    # Z

    .prologue
    const/4 v8, 0x0

    .line 4182
    iget v5, p0, Lc8/msf;->mPidIoWaitSum:I

    iput v5, p0, Lc8/msf;->mPidIoWaitSumOld:I

    .line 4183
    iget v5, p0, Lc8/msf;->mPidIoWaitCount:I

    iput v5, p0, Lc8/msf;->mPidIoWaitCountOld:I

    .line 4184
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 4186
    if-eqz p1, :cond_0

    .line 4187
    invoke-virtual {p0}, Lc8/msf;->getIoWaitAndLoadAvg()V

    .line 4190
    :cond_0
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    iput-object v5, p0, Lc8/msf;->mSystemLoadAvg:[F

    .line 4191
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget-object v6, p0, Lc8/msf;->mSystemLoadAvg:[F

    aget v6, v6, v8

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->systemLoadAvg:F

    .line 4193
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v5, :cond_1

    .line 4194
    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLoadAvg:F

    iget-object v6, p0, Lc8/msf;->mSystemLoadAvg:[F

    aget v6, v6, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 4195
    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v6, p0, Lc8/msf;->mSystemLoadAvg:[F

    aget v6, v6, v8

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLoadAvg:F

    .line 4203
    :cond_1
    iget-boolean v5, p0, Lc8/msf;->mInited:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    .line 4204
    invoke-virtual {p0}, Lc8/msf;->pidOpenFileCount()V

    .line 4207
    :cond_3
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mThreadCount:J

    long-to-int v5, v6

    iput v5, p0, Lc8/msf;->mThreadCount:I

    .line 4208
    iget v5, p0, Lc8/msf;->mOldThreadCount:I

    if-gtz v5, :cond_4

    .line 4209
    iget v5, p0, Lc8/msf;->mThreadCount:I

    iput v5, p0, Lc8/msf;->mOldThreadCount:I

    .line 4211
    :cond_4
    iget v5, p0, Lc8/msf;->mMajorFault:I

    iput v5, p0, Lc8/msf;->mOldMajorFault:I

    .line 4212
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMajorFault:J

    long-to-int v5, v6

    iput v5, p0, Lc8/msf;->mMajorFault:I

    .line 4213
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, p0, Lc8/msf;->mThreadCount:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->threadCount:I

    .line 4214
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v6, p0, Lc8/msf;->mMajorFault:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->majorFault:I

    .line 4215
    iget-boolean v5, p0, Lc8/msf;->mInited:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_6

    :cond_5
    if-eqz p3, :cond_6

    .line 4216
    invoke-virtual {p0}, Lc8/msf;->getThreadStat()V

    .line 4219
    :cond_6
    iget v5, p0, Lc8/msf;->mSysGetCounter:I

    if-nez v5, :cond_7

    .line 4220
    iput v8, p0, Lc8/msf;->mTotalSysCPUPercent:I

    .line 4221
    iput v8, p0, Lc8/msf;->mTotalMyPidCPUPercent:I

    .line 4222
    iput v8, p0, Lc8/msf;->mTotalIOWaitTime:I

    .line 4223
    iget v5, p0, Lc8/msf;->mPidIoWaitSumLast:I

    iput v5, p0, Lc8/msf;->mPidIoWaitSumStart:I

    .line 4224
    iget v5, p0, Lc8/msf;->mPidIoWaitCountLast:I

    iput v5, p0, Lc8/msf;->mPidIoWaitCountStart:I

    .line 4225
    iget v5, p0, Lc8/msf;->mPidPerCpuLoadLast:F

    iput v5, p0, Lc8/msf;->mPidPerCpuLoadStart:F

    .line 4226
    iput v8, p0, Lc8/msf;->mBgCpuTresholdCounter:I

    .line 4229
    :cond_7
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    iput v5, p0, Lc8/msf;->mSysCPUPercent:I

    .line 4230
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    iput v5, p0, Lc8/msf;->mMyPidCPUPercent:I

    .line 4231
    iget v5, p0, Lc8/msf;->mTotalSysCPUPercent:I

    iget v6, p0, Lc8/msf;->mSysCPUPercent:I

    add-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mTotalSysCPUPercent:I

    .line 4232
    iget v5, p0, Lc8/msf;->mTotalMyPidCPUPercent:I

    iget v6, p0, Lc8/msf;->mMyPidCPUPercent:I

    add-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mTotalMyPidCPUPercent:I

    .line 4233
    iget v5, p0, Lc8/msf;->mTotalIOWaitTime:I

    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mTotalIOWaitTime:I

    .line 4234
    iget v5, p0, Lc8/msf;->mPidIoWaitTotal:I

    iget v6, p0, Lc8/msf;->mPidIoWaitSumOld:I

    add-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mPidIoWaitTotal:I

    .line 4235
    iget v5, p0, Lc8/msf;->mPidPerCpuLoadTotal:F

    iget v6, p0, Lc8/msf;->mPidPerCpuLoad:F

    add-float/2addr v5, v6

    iput v5, p0, Lc8/msf;->mPidPerCpuLoadTotal:F

    .line 4236
    iget v5, p0, Lc8/msf;->mSysGetCounter:I

    if-gtz v5, :cond_11

    .line 4237
    iget v5, p0, Lc8/msf;->mSysCPUPercent:I

    iput v5, p0, Lc8/msf;->mSysAvgCPUPercent:I

    .line 4238
    iget v5, p0, Lc8/msf;->mMyPidCPUPercent:I

    iput v5, p0, Lc8/msf;->mMyAvgPidCPUPercent:I

    .line 4239
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    iput v5, p0, Lc8/msf;->mAvgIOWaitTime:I

    .line 4240
    iget v5, p0, Lc8/msf;->mPidIoWaitSumStart:I

    iput v5, p0, Lc8/msf;->mPidIoWaitSumAvg:I

    .line 4241
    iget v5, p0, Lc8/msf;->mPidPerCpuLoadStart:F

    iput v5, p0, Lc8/msf;->mPidPerCpuLoadAvg:F

    .line 4249
    :goto_0
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    if-lez v5, :cond_8

    .line 4250
    iget-short v5, p0, Lc8/msf;->mIoWiatCount:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, p0, Lc8/msf;->mIoWiatCount:S

    .line 4253
    :cond_8
    iget v5, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/msf;->mSysGetCounter:I

    .line 4254
    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v5, :cond_9

    .line 4255
    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    iget v6, p0, Lc8/msf;->mOpenFileCount:I

    if-ge v5, v6, :cond_9

    .line 4256
    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, p0, Lc8/msf;->mOpenFileCount:I

    int-to-short v6, v6

    iput-short v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    .line 4260
    :cond_9
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->iOStat:Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;->currentIOWaitTime:I

    .line 4261
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->iOStat:Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

    iget v6, p0, Lc8/msf;->mAvgIOWaitTime:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;->avgIOWaitTime:I

    .line 4262
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mSysCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysCPUPercent:I

    .line 4263
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mSysAvgCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    .line 4264
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mMyPidCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    .line 4265
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mMyAvgPidCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myAVGPidCPUPercent:I

    .line 4266
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidIoWaitSumAvg:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->iOWaitTimeAvg:I

    .line 4267
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidIoWaitCount:I

    iget v7, p0, Lc8/msf;->mPidIoWaitCountStart:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidIoWaitCount:I

    .line 4268
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidPerCpuLoadAvg:F

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidPerCpuLoadAvg:F

    .line 4269
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidWaitSum:F

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitSum:F

    .line 4270
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidWaitMax:F

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitMax:F

    .line 4271
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mPidWaitCount:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitCount:I

    .line 4272
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myMaxPidCPUPercent:I

    iget v6, p0, Lc8/msf;->mMyPidCPUPercent:I

    if-ge v5, v6, :cond_a

    .line 4273
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mMyPidCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myMaxPidCPUPercent:I

    .line 4275
    :cond_a
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysMaxCPUPercent:I

    iget v6, p0, Lc8/msf;->mSysCPUPercent:I

    if-ge v5, v6, :cond_b

    .line 4276
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, p0, Lc8/msf;->mSysCPUPercent:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysMaxCPUPercent:I

    .line 4279
    :cond_b
    iget-boolean v5, p0, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_d

    .line 4280
    iget v5, p0, Lc8/msf;->mMyPidCPUPercent:I

    sget-short v6, Lc8/osf;->sBgCpuUseTreshold:S

    if-lt v5, v6, :cond_c

    .line 4281
    iget v5, p0, Lc8/msf;->mBgCpuTresholdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/msf;->mBgCpuTresholdCounter:I

    .line 4283
    :cond_c
    iget v5, p0, Lc8/msf;->mBgCpuTresholdCounter:I

    sget-short v6, Lc8/osf;->sBgCpuUseTresholdTimes:S

    if-lt v5, v6, :cond_d

    .line 4284
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->cpuAlarmInBg:Z

    .line 4288
    :cond_d
    iget v5, p0, Lc8/msf;->mThreadCount:I

    iput v5, p0, Lc8/msf;->mOldThreadCount:I

    .line 4289
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, p0, Lc8/msf;->mRuntimeThreadCount:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    .line 4290
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, p0, Lc8/msf;->mRunningThreadCount:I

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    .line 4292
    iget v5, p0, Lc8/msf;->mThreadCount:I

    iget v6, p0, Lc8/msf;->mMaxThreadCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lc8/msf;->mMaxThreadCount:I

    .line 4293
    iget v5, p0, Lc8/msf;->mRuntimeThreadCount:I

    iget v6, p0, Lc8/msf;->mMaxRuntimeThreadCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lc8/msf;->mMaxRuntimeThreadCount:I

    .line 4294
    iget v5, p0, Lc8/msf;->mRunningThreadCount:I

    iget v6, p0, Lc8/msf;->mMaxRunningThreadCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lc8/msf;->mMaxRunningThreadCount:I

    .line 4296
    iget-boolean v5, p0, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    if-eqz v5, :cond_10

    .line 4298
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadStart:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    long-to-int v2, v6

    .line 4299
    .local v2, "pidCpuTime":I
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 4300
    .local v3, "sysRunCpuTime":I
    iget-object v5, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadEnd:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    long-to-int v4, v6

    .line 4301
    .local v4, "sysTotalCpuTime":I
    if-lez v3, :cond_10

    if-lez v4, :cond_10

    .line 4302
    mul-int/lit8 v5, v2, 0x64

    div-int v1, v5, v3

    .line 4303
    .local v1, "percentSys":I
    mul-int/lit8 v5, v2, 0x64

    div-int v0, v5, v4

    .line 4304
    .local v0, "percentDev":I
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    if-ge v5, v1, :cond_e

    .line 4305
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iput v1, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    .line 4307
    :cond_e
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    if-ge v5, v0, :cond_f

    .line 4308
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iput v0, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    .line 4310
    :cond_f
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    long-to-int v6, v6

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadStart:I

    .line 4311
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    long-to-int v6, v6

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadEnd:I

    .line 4312
    iget-object v5, p0, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    long-to-int v6, v6

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    .line 4315
    .end local v0    # "percentDev":I
    .end local v1    # "percentSys":I
    .end local v2    # "pidCpuTime":I
    .end local v3    # "sysRunCpuTime":I
    .end local v4    # "sysTotalCpuTime":I
    :cond_10
    return-void

    .line 4243
    :cond_11
    iget v5, p0, Lc8/msf;->mTotalSysCPUPercent:I

    iget v6, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mSysAvgCPUPercent:I

    .line 4244
    iget v5, p0, Lc8/msf;->mTotalMyPidCPUPercent:I

    iget v6, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mMyAvgPidCPUPercent:I

    .line 4245
    iget v5, p0, Lc8/msf;->mTotalIOWaitTime:I

    iget v6, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mAvgIOWaitTime:I

    .line 4246
    iget v5, p0, Lc8/msf;->mPidIoWaitTotal:I

    iget v6, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iput v5, p0, Lc8/msf;->mPidIoWaitSumAvg:I

    .line 4247
    iget v5, p0, Lc8/msf;->mPidPerCpuLoadTotal:F

    iget v6, p0, Lc8/msf;->mSysGetCounter:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lc8/msf;->mPidPerCpuLoadAvg:F

    goto/16 :goto_0
.end method

.method getFinalizerReferenceQueueSize()I
    .locals 30

    .prologue
    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassFinalizer:Ljava/lang/Class;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 2165
    const/16 v20, 0x0

    .line 2295
    :cond_0
    :goto_0
    return v20

    .line 2167
    :cond_1
    const/16 v20, 0x0

    .line 2169
    .local v20, "size":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 2170
    .local v4, "activityRuntimeInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-nez v4, :cond_2

    .line 2171
    const/16 v20, 0x0

    goto :goto_0

    .line 2173
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    const-wide/32 v26, 0xf4240

    div-long v18, v24, v26

    .line 2174
    .local v18, "now":J
    iget-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetFinalizerTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-lez v21, :cond_3

    iget-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetFinalizerTime:J

    move-wide/from16 v24, v0

    sub-long v24, v18, v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mCpuCheckIntervalControl:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v21, v24, v26

    if-gez v21, :cond_3

    .line 2175
    const/16 v20, 0x0

    goto :goto_0

    .line 2177
    :cond_3
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetFinalizerTime:J

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassFinalizer:Ljava/lang/Class;

    move-object/from16 v21, v0

    const-string/jumbo v24, "head"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 2180
    .local v11, "fieldHead":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassFinalizer:Ljava/lang/Class;

    move-object/from16 v21, v0

    const-string/jumbo v24, "next"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 2181
    .local v10, "fieldFinalizerNext":Ljava/lang/reflect/Field;
    const-string/jumbo v21, "java.lang.ref.Reference"

    invoke-static/range {v21 .. v21}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2182
    .local v6, "classReference":Ljava/lang/Class;
    const-string/jumbo v21, "referent"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 2187
    .local v9, "fieldFinalizerFeferent":Ljava/lang/reflect/Field;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2188
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2189
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2200
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2202
    .local v14, "mObjFinalizerReferenceHead":Ljava/lang/Object;
    if-nez v14, :cond_4

    .line 2203
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2205
    :cond_4
    const/4 v15, 0x0

    .line 2206
    .local v15, "mapSzie":I
    sget-boolean v21, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v21, :cond_5

    sget-boolean v21, Lc8/Asf;->sTraceFinalizer:Z

    if-eqz v21, :cond_5

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    .line 2212
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v15

    .line 2214
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    const-wide/32 v26, 0xf4240

    div-long v22, v24, v26
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2218
    .local v22, "t1":J
    :try_start_1
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 2219
    .local v16, "nextRef":Ljava/lang/Object;
    move-object/from16 v12, v16

    .line 2220
    .local v12, "headRef":Ljava/lang/Object;
    :cond_6
    if-eqz v16, :cond_8

    .line 2221
    add-int/lit8 v20, v20, 0x1

    .line 2222
    sget-boolean v21, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v21, :cond_7

    sget-boolean v21, Lc8/Asf;->sTraceFinalizer:Z

    if-eqz v21, :cond_7

    if-nez v15, :cond_7

    .line 2223
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 2224
    .local v17, "obj":Ljava/lang/Object;
    if-eqz v17, :cond_7

    .line 2225
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 2226
    .local v5, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2227
    .local v7, "count":Ljava/lang/Integer;
    if-eqz v7, :cond_d

    .line 2228
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v13, v21, 0x1

    .line 2229
    .local v13, "intCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v13    # "intCount":I
    .end local v17    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 2252
    move-object/from16 v0, v16

    if-ne v0, v12, :cond_6

    .line 2264
    .end local v12    # "headRef":Ljava/lang/Object;
    .end local v16    # "nextRef":Ljava/lang/Object;
    :cond_8
    :goto_3
    :try_start_2
    sget-boolean v21, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 2265
    if-lez v20, :cond_e

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->size()I

    move-result v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->finalizerSize:I

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 2275
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerSize:I

    .line 2277
    :cond_a
    sget-boolean v21, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v21, :cond_b

    .line 2278
    const-string/jumbo v21, "OnLineMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "FinalizerReference="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ",size="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", time="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    sub-long v26, v26, v22

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_b
    sget v21, Lc8/osf;->sFinalizerThreshold:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 2281
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 2282
    sget-boolean v21, Lc8/osf;->sRunFinalizerOnThreshold:Z

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mJavaUsedMemoryPercent:J

    move-wide/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v26, 0x32

    cmp-long v21, v24, v26

    if-lez v21, :cond_0

    .line 2284
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2285
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2286
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 2210
    .end local v22    # "t1":J
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 2292
    .end local v4    # "activityRuntimeInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    .end local v6    # "classReference":Ljava/lang/Class;
    .end local v9    # "fieldFinalizerFeferent":Ljava/lang/reflect/Field;
    .end local v10    # "fieldFinalizerNext":Ljava/lang/reflect/Field;
    .end local v11    # "fieldHead":Ljava/lang/reflect/Field;
    .end local v14    # "mObjFinalizerReferenceHead":Ljava/lang/Object;
    .end local v15    # "mapSzie":I
    .end local v18    # "now":J
    :catch_1
    move-exception v8

    .line 2293
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2231
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v4    # "activityRuntimeInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "classReference":Ljava/lang/Class;
    .restart local v7    # "count":Ljava/lang/Integer;
    .restart local v9    # "fieldFinalizerFeferent":Ljava/lang/reflect/Field;
    .restart local v10    # "fieldFinalizerNext":Ljava/lang/reflect/Field;
    .restart local v11    # "fieldHead":Ljava/lang/reflect/Field;
    .restart local v12    # "headRef":Ljava/lang/Object;
    .restart local v14    # "mObjFinalizerReferenceHead":Ljava/lang/Object;
    .restart local v15    # "mapSzie":I
    .restart local v16    # "nextRef":Ljava/lang/Object;
    .restart local v17    # "obj":Ljava/lang/Object;
    .restart local v18    # "now":J
    .restart local v22    # "t1":J
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v21, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 2256
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "count":Ljava/lang/Integer;
    .end local v12    # "headRef":Ljava/lang/Object;
    .end local v16    # "nextRef":Ljava/lang/Object;
    .end local v17    # "obj":Ljava/lang/Object;
    :catch_2
    move-exception v8

    .line 2257
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 2260
    :catch_3
    move-exception v8

    .line 2261
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 2267
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v20

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->size()I

    move-result v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4
.end method

.method getIoWaitAndLoadAvg()V
    .locals 8

    .prologue
    .line 4095
    :try_start_0
    iget-boolean v6, p0, Lc8/msf;->mFileSchedIsNotExists:Z

    if-eqz v6, :cond_1

    .line 4179
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/msf;->mMyPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/sched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4099
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4100
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/msf;->mFileSchedIsNotExists:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4176
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 4177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 4104
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4106
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 4109
    .local v5, "text":Ljava/lang/String;
    iget v6, p0, Lc8/msf;->mPidWaitSum:F

    iput v6, p0, Lc8/msf;->mPidOldWaitSum:F

    .line 4110
    iget v6, p0, Lc8/msf;->mPidWaitCount:I

    iput v6, p0, Lc8/msf;->mPidOldWaitCount:I

    .line 4112
    :goto_1
    if-eqz v5, :cond_5

    .line 4113
    const-string/jumbo v6, ".wait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4114
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4115
    .local v4, "split":I
    if-lez v4, :cond_3

    .line 4116
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4117
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lc8/msf;->mPidWaitSum:F

    .line 4160
    .end local v4    # "split":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4119
    :cond_4
    const-string/jumbo v6, ".sum_exec_runtime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4120
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4121
    .restart local v4    # "split":I
    if-lez v4, :cond_3

    .line 4122
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4123
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lc8/msf;->mPidExeRunTime:F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v4    # "split":I
    .end local v5    # "text":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4165
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4166
    iget v6, p0, Lc8/msf;->mPidIoWaitSumInit:I

    if-gez v6, :cond_0

    .line 4167
    iget v6, p0, Lc8/msf;->mPidIoWaitSum:I

    iput v6, p0, Lc8/msf;->mPidIoWaitSumInit:I

    .line 4168
    iget v6, p0, Lc8/msf;->mPidIoWaitCount:I

    iput v6, p0, Lc8/msf;->mPidIoWaitCountInit:I

    .line 4169
    iget v6, p0, Lc8/msf;->mPidPerCpuLoad:F

    iput v6, p0, Lc8/msf;->mPidPerCpuLoadInit:F

    .line 4170
    iget v6, p0, Lc8/msf;->mPidIoWaitCount:I

    iput v6, p0, Lc8/msf;->mPidIoWaitCountLast:I

    .line 4171
    iget v6, p0, Lc8/msf;->mPidPerCpuLoad:F

    iput v6, p0, Lc8/msf;->mPidPerCpuLoadLast:F

    .line 4172
    iget v6, p0, Lc8/msf;->mPidIoWaitSum:I

    iput v6, p0, Lc8/msf;->mPidIoWaitSumOld:I

    .line 4173
    iget v6, p0, Lc8/msf;->mPidIoWaitCount:I

    iput v6, p0, Lc8/msf;->mPidIoWaitCountOld:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4126
    .restart local v5    # "text":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string/jumbo v6, ".wait_max"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4127
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4128
    .restart local v4    # "split":I
    if-lez v4, :cond_3

    .line 4129
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4130
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lc8/msf;->mPidWaitMax:F

    goto :goto_2

    .line 4133
    .end local v4    # "split":I
    :cond_7
    const-string/jumbo v6, ".wait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4134
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4135
    .restart local v4    # "split":I
    if-lez v4, :cond_3

    .line 4136
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4137
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lc8/msf;->mPidWaitCount:I

    goto/16 :goto_2

    .line 4140
    .end local v4    # "split":I
    :cond_8
    const-string/jumbo v6, "iowait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4141
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4142
    .restart local v4    # "split":I
    if-lez v4, :cond_3

    .line 4143
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4144
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lc8/msf;->mPidIoWaitSum:I

    goto/16 :goto_2

    .line 4146
    .end local v4    # "split":I
    :cond_9
    const-string/jumbo v6, "iowait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4147
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4148
    .restart local v4    # "split":I
    if-lez v4, :cond_3

    .line 4149
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4150
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lc8/msf;->mPidIoWaitCount:I

    goto/16 :goto_2

    .line 4152
    .end local v4    # "split":I
    :cond_a
    const-string/jumbo v6, "avg_per_cpu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4153
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4154
    .restart local v4    # "split":I
    if-lez v4, :cond_5

    .line 4155
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4156
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lc8/msf;->mPidPerCpuLoad:F
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3
.end method

.method getMemInfo(Z)V
    .locals 31
    .param p1, "getForce"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3585
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0xf

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 3952
    :cond_0
    :goto_0
    return-void

    .line 3588
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3589
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mAvailMemory:J

    .line 3590
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsLowMemroy:Z

    .line 3592
    const/4 v9, 0x2

    .line 3593
    .local v9, "memoryGetTimes":I
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v19, v0

    const/16 v22, 0x5a

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2e

    .line 3594
    const/16 v9, 0xa

    .line 3602
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mTrimMemoryLevel:I

    move/from16 v19, v0

    const/16 v22, 0x3c

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 3603
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->getMemoryCount:S

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v9, :cond_0

    .line 3606
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityLoading:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->getMemoryCount:S

    move/from16 v19, v0

    if-gtz v19, :cond_0

    .line 3615
    :cond_4
    const/4 v7, 0x0

    .line 3617
    .local v7, "meminfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 3618
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_31

    .line 3619
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [I

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    aput v22, v14, v19

    .line 3620
    .local v14, "pids":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v8

    .line 3621
    .local v8, "meminfos":[Landroid/os/Debug$MemoryInfo;
    if-eqz v8, :cond_5

    .line 3622
    const/16 v19, 0x0

    aget-object v7, v8, v19

    .line 3632
    .end local v8    # "meminfos":[Landroid/os/Debug$MemoryInfo;
    .end local v14    # "pids":[I
    :cond_5
    :goto_2
    if-eqz v7, :cond_0

    .line 3635
    iget v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDalvikPss:J

    .line 3636
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_6

    .line 3637
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 3638
    .local v16, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDalvikPss:J

    .line 3640
    .end local v16    # "runtime":Ljava/lang/Runtime;
    :cond_6
    iget v0, v7, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mNativeHeapPss:J

    .line 3641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_7

    .line 3642
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mNativeHeapPss:J

    .line 3644
    :cond_7
    const/4 v6, 0x0

    .line 3645
    .local v6, "isMaxNow":Z
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mTotalUsedMemory:J

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMax:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-gez v19, :cond_8

    .line 3647
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMax:S

    .line 3648
    const/4 v6, 0x1

    .line 3650
    :cond_8
    sget-boolean v19, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v19, :cond_9

    .line 3652
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 3653
    .restart local v16    # "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDalvikFree:J

    .line 3654
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDalvikHeapSize:J

    .line 3655
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikHeapSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikFree:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mDalvikAllocated:J

    .line 3656
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mNativeHeapSize:J

    .line 3657
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mNativeHeapAllocatedSize:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 3663
    .end local v16    # "runtime":Ljava/lang/Runtime;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 3664
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->getMemoryCount:S

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->getMemoryCount:S

    .line 3667
    :try_start_1
    sget v19, Lc8/msf;->sApiLevel:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 3669
    if-eqz v6, :cond_a

    .line 3670
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.graphics"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryGraphics:I

    .line 3671
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.code"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryCode:I

    .line 3672
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.stack"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryStack:I

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.system"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summarySystem:I

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.java-heap"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryJavaHeap:I

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.native-heap"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryNativeHeap:I

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.private-other"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryPrivateOther:I

    .line 3677
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.total-pss"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryTotalpss:I

    .line 3678
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const-string/jumbo v22, "summary.total-swap"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryTotalswap:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 3684
    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    .line 3686
    :try_start_3
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_32

    .line 3687
    const-class v19, Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v22, "getOtherPrivate"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 3688
    .local v11, "methodGetOtherPrivate":Ljava/lang/reflect/Method;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3689
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherSo:I

    .line 3690
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherJar:I

    .line 3691
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherApk:I

    .line 3692
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x9

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherTtf:I

    .line 3693
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0xa

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherDex:I

    .line 3694
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0xb

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherOat:I

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0xc

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherArt:I

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0xd

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherMap:I

    .line 3697
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v19, v23

    move-object/from16 v0, v19

    invoke-static {v11, v7, v0}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherAshmem:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 3721
    .end local v11    # "methodGetOtherPrivate":Ljava/lang/reflect/Method;
    :cond_b
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    if-eqz v6, :cond_18

    .line 3723
    sget-boolean v19, Lc8/Asf;->sTraceMemoryInstance:Z

    if-eqz v19, :cond_c

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stringInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stringInstanceCount:J

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/Runnable;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->runnableInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->runnableInstanceCount:J

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/concurrent/ThreadPoolExecutor;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadPoolExecutorInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadPoolExecutorInstanceCount:J

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static/range {v26 .. v26}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openSslSocketCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openSslSocketCount:J

    .line 3728
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Landroid/graphics/drawable/Drawable;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->drawableInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->drawableInstanceCount:J

    .line 3729
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/nio/ByteBuffer;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->byteBufferInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->byteBufferInstanceCount:J

    .line 3730
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, [B

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->byteArrayInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->byteArrayInstanceCount:J

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Landroid/graphics/Bitmap;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapInstanceCount:J

    .line 3732
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Landroid/os/Message;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->messageInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->messageInstanceCount:J

    .line 3735
    :cond_c
    sget-boolean v19, Lc8/Asf;->sTraceMemoryInstance:Z

    if-eqz v19, :cond_d

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/ArrayList;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->arrayListInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->arrayListInstanceCount:J

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/LinkedList;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->linkedListInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->linkedListInstanceCount:J

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/List;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->listInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->listInstanceCount:J

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/HashMap;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->hashMapInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->hashMapInstanceCount:J

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->concurrentHashMapInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->concurrentHashMapInstanceCount:J

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/Map;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->mapInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->mapInstanceCount:J

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/util/Collection;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->collectionInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->collectionInstanceCount:J

    .line 3745
    :cond_d
    sget-boolean v19, Lc8/Asf;->sTraceMemoryInstance:Z

    if-eqz v19, :cond_e

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/io/File;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileInstanceCount:J

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/io/InputStream;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileStreamInstanceCount:J

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileStreamInstanceCount:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileStreamInstanceCount:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/io/OutputStream;

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    add-long v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fileStreamInstanceCount:J

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/Readable;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/Appendable;

    aput-object v28, v26, v27

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->filereadwriteInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->filereadwriteInstanceCount:J

    .line 3753
    :cond_e
    sget-boolean v19, Lc8/Asf;->sTraceMemoryInstance:Z

    if-eqz v19, :cond_16

    .line 3754
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetViewInstanceCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetViewInstanceCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/view/ViewDebug;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->viewInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->viewInstanceCount:J

    .line 3757
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetViewRootImplCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 3758
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetViewRootImplCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/view/ViewDebug;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->viewRootInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->viewRootInstanceCount:J

    .line 3760
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mClassContextImpl:Ljava/lang/Class;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/Asf;->mClassContextImpl:Ljava/lang/Class;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->appContextInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->appContextInstanceCount:J

    .line 3763
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 3764
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Landroid/app/Activity;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityInstanceCount:J

    .line 3766
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAssetCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAssetCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/content/res/AssetManager;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->globalAssetCount:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->globalAssetCount:I

    .line 3769
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAssetManagerCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAssetManagerCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/content/res/AssetManager;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->globalAssetManagerCount:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->globalAssetManagerCount:I

    .line 3772
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    .line 3773
    const-wide/16 v20, 0x0

    .line 3774
    .local v20, "v4Count":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mClassV4Fragment:Ljava/lang/Class;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v22, Landroid/os/Debug;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mClassV4Fragment:Ljava/lang/Class;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3777
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Debug;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Landroid/app/Fragment;

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    add-long v24, v24, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fragmentInstanceCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fragmentInstanceCount:J

    .line 3781
    .end local v20    # "v4Count":J
    :cond_16
    sget-boolean v19, Lc8/Asf;->sTraceMemoryInstance:Z

    if-eqz v19, :cond_18

    .line 3782
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderLocalObjectCount:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderLocalObjectCount:I

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderLocalObjectCount:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderProxyObjectCount:I

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderLocalObjectCount:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->binderDeathObjectCount:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 3786
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAllocSize:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAllocSize:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Parcel;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->parcelSize:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->parcelSize:J

    .line 3789
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAllocCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetGlobalAllocCount:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const-class v23, Landroid/os/Parcel;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->parcelCount:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->parcelCount:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 3800
    :cond_18
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    if-eqz v6, :cond_19

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lc8/Asf;->mClassSQLiteDebug:Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3802
    .local v12, "objdb":Ljava/lang/Object;
    if-eqz v12, :cond_19

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lc8/Asf;->mDataBaseMemoryUsed:Ljava/lang/reflect/Field;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->databaseMemory:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->databaseMemory:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 3813
    .end local v12    # "objdb":Ljava/lang/Object;
    :cond_19
    :goto_7
    if-eqz v6, :cond_1a

    .line 3815
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalPrivateDirty:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalPrivateDirty:I

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSharedDirty:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSharedDirty:I

    .line 3817
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x13

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_1a

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalPrivateClean:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalPrivateClean:I

    .line 3819
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSharedClean:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSharedClean:I

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSwappablePss:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalSwappablePss:I

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetTotalUss:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 3823
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetTotalUss:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v7, v1}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 3824
    .local v18, "uss":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalUss:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalUss:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 3836
    .end local v18    # "uss":I
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    if-eqz v6, :cond_1b

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryTotalpss:I

    .line 3838
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryJavaHeap:I

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryPrivateOther:I

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryNativeHeap:I

    .line 3844
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mRemainAvailMemory:I

    .line 3848
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v19, v0

    if-lez v19, :cond_1c

    .line 3849
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x64

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mJavaUsedMemoryPercent:J

    .line 3852
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mRemainAvailMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->maxCanUseTotalMemory:I

    .line 3854
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x17

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_33

    .line 3855
    const-string/jumbo v19, "art.gc.gc-count"

    invoke-static/range {v19 .. v19}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3856
    .local v17, "temp":Ljava/lang/String;
    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1d

    .line 3857
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mTotalGcCount:I

    .line 3859
    :cond_1d
    const-string/jumbo v19, "art.gc.blocking-gc-count"

    invoke-static/range {v19 .. v19}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3860
    if-eqz v17, :cond_1e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1e

    .line 3861
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mBlockingGCCount:I

    .line 3863
    :cond_1e
    const-string/jumbo v19, "art.gc.blocking-gc-time"

    invoke-static/range {v19 .. v19}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3864
    if-eqz v17, :cond_1f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1f

    .line 3865
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mTotalBlockingGCTime:J

    .line 3873
    .end local v17    # "temp":Ljava/lang/String;
    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mStartBlockingGCCount:I

    move/from16 v19, v0

    if-gez v19, :cond_20

    .line 3874
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mBlockingGCCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mStartBlockingGCCount:I

    .line 3875
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalBlockingGCTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/msf;->mStartBlockingGCTime:J

    .line 3876
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mStartGcCount:I

    .line 3879
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2d

    .line 3880
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x64

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v10, v0

    .line 3881
    .local v10, "mempercent":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalMemPercent:S

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v10, :cond_21

    .line 3882
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-short v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalMemPercent:S

    .line 3883
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mRemainAvailMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalCanUseMemory:S

    .line 3885
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMemPercent:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mJavaUsedMemoryPercent:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-gez v19, :cond_23

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mJavaUsedMemoryPercent:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMemPercent:S

    .line 3887
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalCanUseJavaMemory:S

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalCanUseJavaMemory:S

    move/from16 v19, v0

    if-gez v19, :cond_22

    .line 3889
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalCanUseJavaMemory:S

    .line 3891
    :cond_22
    sget-boolean v19, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v19, :cond_23

    .line 3892
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikAllocated:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaAllocal:S

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikHeapSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaHeapSize:S

    .line 3894
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikFree:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaHeapFree:S

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapAllocatedSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeAllocal:S

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeHeapSize:S

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapAllocatedSize:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeHeapFree:S

    .line 3900
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaStart:S

    move/from16 v19, v0

    if-nez v19, :cond_24

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaStart:S

    .line 3903
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMin:S

    move/from16 v19, v0

    if-nez v19, :cond_25

    .line 3904
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMin:S

    .line 3906
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMin:S

    move/from16 v19, v0

    if-nez v19, :cond_26

    .line 3907
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMin:S

    .line 3909
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMin:S

    move/from16 v19, v0

    if-nez v19, :cond_27

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMin:S

    .line 3913
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMin:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_28

    .line 3914
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMin:S

    .line 3916
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMax:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-gez v19, :cond_29

    .line 3917
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMax:S

    .line 3920
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMin:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_2a

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMin:S

    .line 3923
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMax:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-gez v19, :cond_2b

    .line 3924
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMax:S

    .line 3926
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMin:S

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_2c

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-short v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMin:S

    .line 3929
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryGraphics:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->summaryGraphics:I

    .line 3934
    .end local v10    # "mempercent":S
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mBlockingGCCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->blockingGCCount:I

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    .line 3936
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsLowMemroy:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    .line 3937
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mRemainAvailMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalBlockingGCTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalBlockingGCTime:J

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mStartGcCount:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalGcCount:I

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    .line 3941
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x64

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalMemoryPercent:J

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mJavaUsedMemoryPercent:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalJavaPercent:J

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    .line 3945
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    goto/16 :goto_0

    .line 3595
    .end local v6    # "isMaxNow":Z
    .end local v7    # "meminfo":Landroid/os/Debug$MemoryInfo;
    :cond_2e
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v19, v0

    const/16 v22, 0x55

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2f

    .line 3596
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 3597
    :cond_2f
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v19, v0

    const/16 v22, 0x4b

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_30

    .line 3598
    const/4 v9, 0x5

    goto/16 :goto_1

    .line 3599
    :cond_30
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v19, v0

    const/16 v22, 0x3c

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 3600
    const/4 v9, 0x4

    goto/16 :goto_1

    .line 3625
    .restart local v7    # "meminfo":Landroid/os/Debug$MemoryInfo;
    :cond_31
    new-instance v7, Landroid/os/Debug$MemoryInfo;

    .end local v7    # "meminfo":Landroid/os/Debug$MemoryInfo;
    invoke-direct {v7}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 3626
    .restart local v7    # "meminfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v7}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 3627
    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v15

    .line 3628
    .local v15, "privateDirty":I
    if-nez v15, :cond_5

    .line 3629
    invoke-static {v7}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    goto/16 :goto_2

    .line 3698
    .end local v15    # "privateDirty":I
    .restart local v6    # "isMaxNow":Z
    :cond_32
    :try_start_8
    sget v19, Lc8/msf;->sApiLevel:I

    const/16 v22, 0x13

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 3699
    const-class v19, Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v22, "otherStats"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 3700
    .local v5, "fieldOtherStats":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3701
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 3702
    .local v13, "otherStats":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x2e

    aget v22, v13, v22

    const/16 v23, 0x2c

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherSo:I

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x35

    aget v22, v13, v22

    const/16 v23, 0x33

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherJar:I

    .line 3704
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x3c

    aget v22, v13, v22

    const/16 v23, 0x3a

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherApk:I

    .line 3705
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x43

    aget v22, v13, v22

    const/16 v23, 0x41

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherTtf:I

    .line 3706
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x4a

    aget v22, v13, v22

    const/16 v23, 0x48

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherDex:I

    .line 3707
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x51

    aget v22, v13, v22

    const/16 v23, 0x4f

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherOat:I

    .line 3708
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x58

    aget v22, v13, v22

    const/16 v23, 0x56

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherArt:I

    .line 3709
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x5f

    aget v22, v13, v22

    const/16 v23, 0x5d

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherMap:I

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v19, v0

    const/16 v22, 0x19

    aget v22, v13, v22

    const/16 v23, 0x17

    aget v23, v13, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherAshmem:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    .end local v5    # "fieldOtherStats":Ljava/lang/reflect/Field;
    .end local v13    # "otherStats":[I
    :catch_0
    move-exception v19

    goto/16 :goto_5

    .line 3809
    :catch_1
    move-exception v4

    .line 3810
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 3869
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_33
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mBlockingGCCount:I

    .line 3870
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mBlockingGCCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mTotalGcCount:I

    goto/16 :goto_9

    :catch_2
    move-exception v19

    goto/16 :goto_8

    :catch_3
    move-exception v19

    goto/16 :goto_6

    :catch_4
    move-exception v19

    goto/16 :goto_4

    :catch_5
    move-exception v19

    goto/16 :goto_3
.end method

.method getProgressServiceCount()V
    .locals 14

    .prologue
    .line 2742
    iget-object v10, p0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v10, :cond_1

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2745
    :cond_1
    const/4 v6, 0x0

    .line 2747
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    iget-object v10, p0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 2748
    if-eqz v6, :cond_2

    .line 2749
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lc8/msf;->mRunningProgress:I

    .line 2750
    iget-object v10, p0, Lc8/msf;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 2751
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lc8/msf;->mRunningProgress:I

    if-ge v4, v10, :cond_2

    .line 2752
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2753
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2754
    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v10, p0, Lc8/msf;->mAppProgressImportance:I

    .line 2761
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "i":I
    :cond_2
    iget-object v10, p0, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v11, 0xc8

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    .line 2762
    .local v8, "listService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v8, :cond_3

    .line 2763
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lc8/msf;->mRunningService:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 2769
    .end local v8    # "listService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_3
    :goto_2
    sget v10, Lc8/msf;->sApiLevel:I

    const/16 v11, 0x17

    if-ne v10, v11, :cond_7

    .line 2772
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v10, "/proc"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2773
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2774
    new-instance v3, Lc8/ksf;

    invoke-direct {v3}, Lc8/ksf;-><init>()V

    .line 2775
    .local v3, "fileNameFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    .line 2776
    .local v9, "procList":[Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 2777
    array-length v10, v9

    iput v10, p0, Lc8/msf;->mRunningProgress:I

    .line 2778
    sget-boolean v10, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v10, :cond_6

    sget-boolean v10, Lc8/Asf;->sTraceBootProgress:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v10, v10, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_6

    .line 2779
    new-instance v7, Ljava/util/ArrayList;

    iget v10, p0, Lc8/msf;->mRunningProgress:I

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2780
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    :try_start_2
    array-length v10, v9

    if-ge v4, v10, :cond_5

    .line 2781
    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2783
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_3
    aget-object v10, v9, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 2784
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2780
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2751
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v9    # "procList":[Ljava/lang/String;
    .restart local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v9    # "procList":[Ljava/lang/String;
    :cond_5
    move-object v6, v7

    .line 2791
    .end local v4    # "i":I
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_6
    :try_start_4
    sget-boolean v10, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v10, :cond_7

    .line 2792
    const-string/jumbo v10, "OnLineMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ">=6.0 RunningProgress="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/msf;->mRunningProgress:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2801
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .end local v9    # "procList":[Ljava/lang/String;
    :cond_7
    :goto_5
    iget v10, p0, Lc8/msf;->mInitRunningProgress:I

    if-gez v10, :cond_8

    .line 2802
    iget v10, p0, Lc8/msf;->mRunningProgress:I

    iput v10, p0, Lc8/msf;->mInitRunningProgress:I

    .line 2803
    iget v10, p0, Lc8/msf;->mRunningService:I

    iput v10, p0, Lc8/msf;->mInitRunningService:I

    .line 2805
    :cond_8
    iget-object v10, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v11, p0, Lc8/msf;->mAppProgressImportance:I

    iput v11, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->appProgressImportance:I

    .line 2806
    iget-object v10, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v11, p0, Lc8/msf;->mRunningProgress:I

    iput v11, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    .line 2807
    iget-object v10, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v11, p0, Lc8/msf;->mRunningService:I

    iput v11, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    .line 2809
    sget-boolean v10, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v10, :cond_9

    .line 2810
    const-string/jumbo v10, "OnLineMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RunningApp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/msf;->mRunningProgress:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", RunningServices="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/msf;->mRunningService:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",AppProgressImportance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/msf;->mAppProgressImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_9
    sget-boolean v10, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v10, v10, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    .line 2815
    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v11, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v12, v11, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iput-wide v12, v10, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    .line 2816
    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v11, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v12, v11, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iput-wide v12, v10, Lc8/Asf;->mSystemRunCpuTimeStart:J

    .line 2818
    sget-boolean v10, Lc8/Asf;->sTraceBootProgress:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v10, v10, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    if-nez v10, :cond_0

    .line 2819
    iget-object v10, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v11, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    const/4 v12, 0x1

    invoke-virtual {v11, v6, v12}, Lc8/Asf;->getBootOtherProgressInfo(Ljava/util/List;Z)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v10, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    goto/16 :goto_0

    .line 2796
    :catch_0
    move-exception v1

    .line 2797
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 2796
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .restart local v4    # "i":I
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v9    # "procList":[Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    goto :goto_6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_2
    move-exception v10

    goto/16 :goto_4

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v9    # "procList":[Ljava/lang/String;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_3
    move-exception v10

    goto/16 :goto_2
.end method

.method getThreadIoWaitAndLoadAvg(I[F)V
    .locals 8
    .param p1, "tid"    # I
    .param p2, "outfloats"    # [F

    .prologue
    .line 4017
    :try_start_0
    iget-boolean v6, p0, Lc8/msf;->mFileSchedIsNotExists:Z

    if-eqz v6, :cond_1

    .line 4091
    :cond_0
    :goto_0
    return-void

    .line 4021
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/msf;->mMyPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/sched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4022
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4025
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 4026
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4028
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 4031
    .local v5, "text":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_4

    .line 4032
    const-string/jumbo v6, ".wait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4033
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4034
    .local v4, "split":I
    if-lez v4, :cond_2

    .line 4035
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4036
    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6

    .line 4082
    .end local v4    # "split":I
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4047
    :cond_3
    const-string/jumbo v6, ".wait_max"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4048
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4049
    .restart local v4    # "split":I
    if-lez v4, :cond_2

    .line 4050
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4051
    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v4    # "split":I
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4087
    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 4088
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 4089
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4054
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string/jumbo v6, ".wait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4055
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4056
    .restart local v4    # "split":I
    if-lez v4, :cond_2

    .line 4057
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4058
    const/4 v6, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    aput v7, p2, v6

    goto :goto_2

    .line 4061
    .end local v4    # "split":I
    :cond_6
    const-string/jumbo v6, "iowait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4062
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4063
    .restart local v4    # "split":I
    if-lez v4, :cond_2

    .line 4064
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4065
    const/4 v6, 0x4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6

    goto :goto_2

    .line 4068
    .end local v4    # "split":I
    :cond_7
    const-string/jumbo v6, "iowait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4069
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4070
    .restart local v4    # "split":I
    if-lez v4, :cond_2

    .line 4071
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4072
    const/4 v6, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    aput v7, p2, v6

    goto/16 :goto_2

    .line 4074
    .end local v4    # "split":I
    :cond_8
    const-string/jumbo v6, "avg_per_cpu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4075
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4076
    .restart local v4    # "split":I
    if-lez v4, :cond_4

    .line 4077
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4078
    const/4 v6, 0x6

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, p2, v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method getThreadStat()V
    .locals 83

    .prologue
    .line 4354
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadStats:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1d

    .line 4356
    :try_start_0
    sget-wide v68, Lc8/osf;->sLaunchTime:J

    .line 4357
    .local v68, "startTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadStats:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, [B

    .line 4358
    .local v70, "stat":[B
    if-eqz v70, :cond_1d

    .line 4359
    invoke-static/range {v70 .. v70}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v49

    .line 4363
    .local v49, "data":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v53, v0

    .line 4364
    .local v53, "headerLen":I
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v48, v0

    .line 4365
    .local v48, "bytesPerEntry":I
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v75

    .line 4366
    .local v75, "threadCount":I
    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mRuntimeThreadCount:I

    .line 4367
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lc8/msf;->mRunningThreadCount:I

    .line 4368
    add-int/lit8 v53, v53, -0x4

    move/from16 v54, v53

    .line 4369
    .end local v53    # "headerLen":I
    .local v54, "headerLen":I
    :goto_0
    add-int/lit8 v53, v54, -0x1

    .end local v54    # "headerLen":I
    .restart local v53    # "headerLen":I
    if-lez v54, :cond_0

    .line 4370
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    move/from16 v54, v53

    .end local v53    # "headerLen":I
    .restart local v54    # "headerLen":I
    goto :goto_0

    .line 4371
    .end local v54    # "headerLen":I
    .restart local v53    # "headerLen":I
    :cond_0
    add-int/lit8 v51, v48, -0x12

    .line 4372
    .local v51, "extraPerEntry":I
    new-instance v65, Ljava/lang/StringBuffer;

    const/16 v6, 0x1e

    move-object/from16 v0, v65

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4373
    .local v65, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v10, v6, v8

    .line 4374
    .local v10, "nowTime":J
    const/16 v17, 0x0

    .line 4375
    .local v17, "isInBg":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/msf;->mIsInBackGround:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/msf;->mUIHiddenTime:J

    sub-long v6, v10, v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 4376
    const/16 v17, 0x1

    .line 4378
    :cond_1
    sub-long v72, v10, v68

    .line 4379
    .local v72, "staticTime":J
    const-wide/16 v12, 0x0

    .line 4380
    .local v12, "pidTotalTime":J
    const-wide/16 v14, 0x0

    .line 4381
    .local v14, "deviceTotalTime":J
    const/16 v58, 0x0

    .line 4382
    .local v58, "isAddToList":Z
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/16 v7, 0xbb8

    if-ge v6, v7, :cond_3

    .line 4383
    move-wide/from16 v0, v72

    long-to-float v6, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v74, v6, v7

    .line 4384
    .local v74, "t":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iput-wide v10, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLastCheckTime:J

    .line 4385
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-virtual {v6}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 4386
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    if-gez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    if-ltz v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v7, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    if-lt v6, v7, :cond_3

    .line 4388
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4390
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4392
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mCpuPercentTimestamps:Ljava/util/ArrayList;

    invoke-static/range {v74 .. v74}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4393
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mMajorFaults:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMajorFault:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4394
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalIoWaitPercent:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4395
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mPidIoWaitCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4396
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v6, Lc8/Asf;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidIoWaitSum:I

    if-lez v6, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidIoWaitSum:I

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 4397
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mPidWaitSum:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4398
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mPidWaitCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4399
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mMemoryLevels:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mMemoryLevels:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mTrimMemoryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4400
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mPerCpuLoads:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mPidPerCpuLoad:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4401
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysLoads1Min:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-object v7, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4402
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysLoads5Min:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-object v7, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4403
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-short v8, v0, Lc8/msf;->mSystemRunningScore:S

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4405
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mRunningPidScores:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mRunningPidScores:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-short v8, v0, Lc8/msf;->mMyPidScore:S

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4406
    const/16 v58, 0x1

    .line 4407
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v12, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidRunCpuTimeInterval:J

    .line 4408
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v14, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTimeInterval:J

    .line 4411
    .end local v74    # "t":F
    :cond_3
    const/4 v6, 0x6

    new-array v0, v6, [J

    move-object/from16 v22, v0

    .line 4412
    .local v22, "statsData":[J
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4414
    .local v21, "outStrings":[Ljava/lang/String;
    const/16 v55, 0x0

    .local v55, "i":I
    :goto_2
    move/from16 v0, v55

    move/from16 v1, v75

    if-ge v0, v1, :cond_1c

    .line 4416
    const/16 v32, 0x0

    .line 4418
    .local v32, "isDaemon":Z
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v24

    .line 4419
    .local v24, "threadId":I
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 4420
    .local v5, "status":I
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 4421
    .local v20, "tid":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    const/4 v6, 0x7

    if-gt v5, v6, :cond_5

    .line 4422
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mRunningThreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lc8/msf;->mRunningThreadCount:I

    .line 4424
    :cond_5
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v80

    .line 4425
    .local v80, "utime":I
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v71

    .line 4426
    .local v71, "stime":I
    const/16 v6, 0x12

    move/from16 v0, v48

    if-lt v0, v6, :cond_6

    .line 4427
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-eqz v6, :cond_11

    const/16 v32, 0x1

    .line 4439
    :cond_6
    :goto_3
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_7

    sget-boolean v6, Lc8/Asf;->sTraceThread:Z

    if-eqz v6, :cond_7

    sget v6, Lc8/msf;->sApiLevel:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/msf;->mIsInBackGround:Z

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-short v6, v0, Lc8/msf;->mDevicesScore:S

    const/16 v7, 0x3c

    if-lt v6, v7, :cond_f

    sget v6, Lc8/msf;->sApiLevel:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v7, 0x13

    if-lt v6, v7, :cond_f

    .line 4441
    :cond_8
    :try_start_1
    invoke-static/range {v20 .. v20}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v16

    .line 4442
    .local v16, "priority":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-short v7, v6, Lc8/Asf;->mCheckThreadCount:S

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    iput-short v7, v6, Lc8/Asf;->mCheckThreadCount:S

    .line 4443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 4445
    .local v59, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 4446
    .local v4, "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v4, :cond_16

    .line 4447
    move/from16 v0, v80

    int-to-long v6, v0

    move/from16 v0, v71

    int-to-long v8, v0

    invoke-virtual/range {v4 .. v17}, Lcom/taobao/onlinemonitor/ThreadInfo;->updateThread(IJJJJJIZ)V

    .line 4450
    sget-boolean v6, Lc8/Asf;->sTraceThreadWait:Z

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/msf;->mFileSchedIsNotExists:Z

    if-nez v6, :cond_c

    .line 4451
    const/4 v6, 0x7

    new-array v0, v6, [F

    move-object/from16 v62, v0

    .line 4452
    .local v62, "outfloats":[F
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lc8/msf;->getThreadIoWaitAndLoadAvg(I[F)V

    .line 4454
    const/4 v6, 0x0

    aget v6, v62, v6

    float-to-int v6, v6

    iget v7, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitSum:I

    sub-int v82, v6, v7

    .line 4455
    .local v82, "waitSum":I
    const/4 v6, 0x3

    aget v6, v62, v6

    float-to-int v6, v6

    iget v7, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitCount:I

    sub-int v81, v6, v7

    .line 4456
    .local v81, "waitCont":I
    if-gtz v82, :cond_9

    if-lez v81, :cond_b

    .line 4457
    :cond_9
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidWaitCount:I

    iget v7, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastSchedWaitCount:I

    sub-int v64, v6, v7

    .line 4458
    .local v64, "pidWaitCountInterval":I
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidWaitSum:F

    float-to-int v6, v6

    iget v7, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastSchedWaitSum:I

    sub-int v61, v6, v7

    .line 4459
    .local v61, "oldpidWaitSumInterval":I
    mul-int/lit8 v6, v64, 0xa

    move/from16 v0, v81

    if-gt v0, v6, :cond_a

    const/16 v6, 0x64

    move/from16 v0, v82

    if-le v0, v6, :cond_12

    move/from16 v0, v82

    move/from16 v1, v61

    if-lt v0, v1, :cond_12

    .line 4460
    :cond_a
    const/4 v6, 0x3

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mTooMuchLock:I

    .line 4467
    .end local v61    # "oldpidWaitSumInterval":I
    .end local v64    # "pidWaitCountInterval":I
    :cond_b
    :goto_4
    const/4 v6, 0x5

    aget v6, v62, v6

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastIoWaitCount:I

    .line 4468
    const/4 v6, 0x4

    aget v6, v62, v6

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastIoWaitTime:I

    .line 4469
    const/4 v6, 0x3

    aget v6, v62, v6

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitCount:I

    .line 4470
    const/4 v6, 0x0

    aget v6, v62, v6

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitSum:I

    .line 4471
    const/4 v6, 0x1

    aget v6, v62, v6

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitMax:I

    .line 4472
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxAvgPerCpu:F

    const/4 v7, 0x6

    aget v7, v62, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxAvgPerCpu:F

    .line 4475
    .end local v62    # "outfloats":[F
    .end local v81    # "waitCont":I
    .end local v82    # "waitSum":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iput-wide v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceLastTotalTime:J

    .line 4476
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iput-wide v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    .line 4477
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidIoWaitCount:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastIoWaitCount:I

    .line 4478
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidIoWaitSum:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastIoWaitTime:I

    .line 4479
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidWaitCount:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastSchedWaitCount:I

    .line 4480
    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidWaitSum:F

    float-to-int v6, v6

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastSchedWaitSum:I

    .line 4482
    sget-boolean v6, Lc8/Asf;->sTraceThreadStack:Z

    if-eqz v6, :cond_f

    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuPercentInPid:I

    sget v7, Lc8/osf;->sThreadPidCpuPercentForStatistics:I

    if-ge v6, v7, :cond_d

    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuPercentInDevice:I

    sget v7, Lc8/osf;->sThreadDeviceCpuPercentForStatistics:I

    if-lt v6, v7, :cond_f

    .line 4485
    :cond_d
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_f

    sget-boolean v6, Lc8/Asf;->sTraceThread:Z

    if-eqz v6, :cond_f

    .line 4486
    iget-object v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuStacks:Ljava/util/ArrayList;

    if-nez v6, :cond_e

    .line 4487
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuStacks:Ljava/util/ArrayList;

    .line 4489
    :cond_e
    iget-object v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_f

    .line 4490
    const-string/jumbo v46, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 4492
    .local v46, "stacks":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mGetStackTraceById:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mDmVmInternalClazz:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v8, v9

    invoke-static {v6, v7, v8}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, [Ljava/lang/StackTraceElement;

    .line 4493
    .local v67, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object/from16 v0, v67

    invoke-static {v0, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v46

    .line 4497
    .end local v67    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :goto_5
    :try_start_3
    iget-object v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuStacks:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 4498
    iget-object v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuStacks:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 4563
    .end local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v16    # "priority":I
    .end local v46    # "stacks":Ljava/lang/String;
    .end local v59    # "key":Ljava/lang/String;
    :cond_f
    :goto_6
    move/from16 v66, v51

    .local v66, "slurp":I
    :goto_7
    if-lez v66, :cond_1b

    .line 4564
    :try_start_4
    invoke-virtual/range {v49 .. v49}, Ljava/nio/ByteBuffer;->get()B

    .line 4563
    add-int/lit8 v66, v66, -0x1

    goto :goto_7

    .line 4396
    .end local v5    # "status":I
    .end local v20    # "tid":I
    .end local v21    # "outStrings":[Ljava/lang/String;
    .end local v22    # "statsData":[J
    .end local v24    # "threadId":I
    .end local v32    # "isDaemon":Z
    .end local v55    # "i":I
    .end local v66    # "slurp":I
    .end local v71    # "stime":I
    .end local v80    # "utime":I
    .restart local v74    # "t":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v0, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mIoWaitTime:J

    move-wide/from16 v18, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v0, v18

    long-to-int v6, v0

    goto/16 :goto_1

    .line 4427
    .end local v74    # "t":F
    .restart local v5    # "status":I
    .restart local v20    # "tid":I
    .restart local v21    # "outStrings":[Ljava/lang/String;
    .restart local v22    # "statsData":[J
    .restart local v24    # "threadId":I
    .restart local v32    # "isDaemon":Z
    .restart local v55    # "i":I
    .restart local v71    # "stime":I
    .restart local v80    # "utime":I
    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 4461
    .restart local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .restart local v16    # "priority":I
    .restart local v59    # "key":Ljava/lang/String;
    .restart local v61    # "oldpidWaitSumInterval":I
    .restart local v62    # "outfloats":[F
    .restart local v64    # "pidWaitCountInterval":I
    .restart local v81    # "waitCont":I
    .restart local v82    # "waitSum":I
    :cond_12
    mul-int/lit8 v6, v64, 0x7

    move/from16 v0, v81

    if-gt v0, v6, :cond_13

    const/16 v6, 0x3c

    move/from16 v0, v82

    if-le v0, v6, :cond_14

    :try_start_5
    div-int/lit8 v6, v61, 0x2

    move/from16 v0, v82

    if-lt v0, v6, :cond_14

    .line 4462
    :cond_13
    const/4 v6, 0x2

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mTooMuchLock:I

    goto/16 :goto_4

    .end local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v16    # "priority":I
    .end local v59    # "key":Ljava/lang/String;
    .end local v61    # "oldpidWaitSumInterval":I
    .end local v62    # "outfloats":[F
    .end local v64    # "pidWaitCountInterval":I
    .end local v81    # "waitCont":I
    .end local v82    # "waitSum":I
    :catch_0
    move-exception v6

    goto :goto_6

    .line 4463
    .restart local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .restart local v16    # "priority":I
    .restart local v59    # "key":Ljava/lang/String;
    .restart local v61    # "oldpidWaitSumInterval":I
    .restart local v62    # "outfloats":[F
    .restart local v64    # "pidWaitCountInterval":I
    .restart local v81    # "waitCont":I
    .restart local v82    # "waitSum":I
    :cond_14
    shl-int/lit8 v6, v64, 0x2

    move/from16 v0, v81

    if-gt v0, v6, :cond_15

    const/16 v6, 0x1e

    move/from16 v0, v82

    if-le v0, v6, :cond_b

    div-int/lit8 v6, v61, 0x3

    move/from16 v0, v82

    if-lt v0, v6, :cond_b

    .line 4464
    :cond_15
    const/4 v6, 0x1

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mTooMuchLock:I

    goto/16 :goto_4

    .line 4494
    .end local v61    # "oldpidWaitSumInterval":I
    .end local v62    # "outfloats":[F
    .end local v64    # "pidWaitCountInterval":I
    .end local v81    # "waitCont":I
    .end local v82    # "waitSum":I
    .restart local v46    # "stacks":Ljava/lang/String;
    :catch_1
    move-exception v50

    .line 4495
    .local v50, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 4508
    .end local v46    # "stacks":Ljava/lang/String;
    .end local v50    # "e":Ljava/lang/Throwable;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mMyPid:I

    move/from16 v19, v0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v23}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->getProcInfo(II[Ljava/lang/String;[J[F)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 4509
    const/4 v6, 0x0

    aget-object v25, v21, v6

    .line 4510
    .local v25, "name":Ljava/lang/String;
    const/4 v6, 0x5

    aget-wide v6, v22, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    int-to-long v8, v8

    mul-long v78, v6, v8

    .line 4511
    .local v78, "taskStartTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v76

    .line 4512
    .local v76, "taskNowTime":J
    sub-long v56, v76, v78

    .line 4514
    .local v56, "interval":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long v10, v6, v56

    .line 4515
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-gez v6, :cond_17

    .line 4516
    const-wide/16 v10, 0x0

    .line 4529
    .end local v56    # "interval":J
    .end local v76    # "taskNowTime":J
    .end local v78    # "taskStartTime":J
    :cond_17
    :goto_8
    const-string/jumbo v46, ""

    .line 4530
    .restart local v46    # "stacks":Ljava/lang/String;
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_18

    sget v6, Lc8/msf;->sApiLevel:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v7, 0x12

    if-lt v6, v7, :cond_18

    .line 4532
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mGetStackTraceById:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mDmVmInternalClazz:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v8, v9

    invoke-static {v6, v7, v8}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, [Ljava/lang/StackTraceElement;

    .line 4533
    .restart local v67    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object/from16 v0, v67

    invoke-static {v0, v6, v7}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v46

    .line 4538
    .end local v67    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_18
    :goto_9
    :try_start_7
    new-instance v4, Lcom/taobao/onlinemonitor/ThreadInfo;

    .end local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    move/from16 v0, v80

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v0, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v0, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mPidIoWaitCount:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mPidIoWaitSum:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mPidWaitCount:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v6, v0, Lc8/msf;->mPidWaitSum:F

    float-to-int v0, v6

    move/from16 v45, v0

    move-object/from16 v23, v4

    move/from16 v26, v5

    move/from16 v27, v20

    move/from16 v33, v16

    move-wide/from16 v34, v10

    move/from16 v40, v17

    invoke-direct/range {v23 .. v46}, Lcom/taobao/onlinemonitor/ThreadInfo;-><init>(ILjava/lang/String;IIJJZIJJJZLjava/lang/String;IIIILjava/lang/String;)V

    .line 4541
    .restart local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadInfoTidHashMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 4542
    .local v60, "oldInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v60, :cond_19

    .line 4543
    const/4 v6, 0x0

    move-object/from16 v0, v60

    iput v6, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStatus:I

    .line 4545
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadInfoTidHashMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4546
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_f

    sget-boolean v6, Lc8/Asf;->sTraceThreadWait:Z

    if-eqz v6, :cond_f

    sget v6, Lc8/msf;->sApiLevel:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_f

    .line 4549
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v6, v4}, Lc8/Asf;->getThreadSchedTime(Lcom/taobao/onlinemonitor/ThreadInfo;)V

    .line 4550
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mIoWaitCount:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastIoWaitCount:I

    .line 4551
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mIoWaitTime:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastIoWaitTime:I

    .line 4552
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitCount:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitCount:I

    .line 4553
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitSum:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitSum:I

    .line 4554
    iget v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitMax:I

    iput v6, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastSchedWaitMax:I

    goto/16 :goto_6

    .line 4520
    .end local v25    # "name":Ljava/lang/String;
    .end local v46    # "stacks":Ljava/lang/String;
    .end local v60    # "oldInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mMyPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/comm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 4521
    .local v63, "path":Ljava/lang/String;
    const/16 v6, 0x3c

    new-array v0, v6, [C

    move-object/from16 v47, v0

    .line 4522
    .local v47, "buffer":[C
    new-instance v52, Ljava/io/FileReader;

    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 4523
    .local v52, "fileReader":Ljava/io/FileReader;
    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/FileReader;->read([C)I

    .line 4524
    move-object/from16 v0, v65

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 4525
    invoke-virtual/range {v52 .. v52}, Ljava/io/FileReader;->close()V

    .line 4526
    const/4 v6, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 4527
    .restart local v25    # "name":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_8

    .line 4534
    .end local v47    # "buffer":[C
    .end local v52    # "fileReader":Ljava/io/FileReader;
    .end local v63    # "path":Ljava/lang/String;
    .restart local v46    # "stacks":Ljava/lang/String;
    :catch_2
    move-exception v50

    .line 4535
    .restart local v50    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_9

    .line 4414
    .end local v4    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v16    # "priority":I
    .end local v25    # "name":Ljava/lang/String;
    .end local v46    # "stacks":Ljava/lang/String;
    .end local v50    # "e":Ljava/lang/Throwable;
    .end local v59    # "key":Ljava/lang/String;
    .restart local v66    # "slurp":I
    :cond_1b
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_2

    .line 4568
    .end local v5    # "status":I
    .end local v20    # "tid":I
    .end local v24    # "threadId":I
    .end local v32    # "isDaemon":Z
    .end local v66    # "slurp":I
    .end local v71    # "stime":I
    .end local v80    # "utime":I
    :cond_1c
    :try_start_8
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_1d

    if-eqz v58, :cond_1d

    .line 4569
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mSysThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mSysThreadsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mThreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4570
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mVmThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mVmThreadsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mRuntimeThreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4571
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lc8/msf;->mRunningThreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 4580
    .end local v10    # "nowTime":J
    .end local v12    # "pidTotalTime":J
    .end local v14    # "deviceTotalTime":J
    .end local v17    # "isInBg":Z
    .end local v21    # "outStrings":[Ljava/lang/String;
    .end local v22    # "statsData":[J
    .end local v48    # "bytesPerEntry":I
    .end local v49    # "data":Ljava/nio/ByteBuffer;
    .end local v51    # "extraPerEntry":I
    .end local v53    # "headerLen":I
    .end local v55    # "i":I
    .end local v58    # "isAddToList":Z
    .end local v65    # "sb":Ljava/lang/StringBuffer;
    .end local v68    # "startTime":J
    .end local v70    # "stat":[B
    .end local v72    # "staticTime":J
    .end local v75    # "threadCount":I
    :cond_1d
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v6, :cond_1f

    .line 4581
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxThread:I

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mRuntimeThreadCount:I

    if-ge v6, v7, :cond_1e

    .line 4582
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mRuntimeThreadCount:I

    iput v7, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxThread:I

    .line 4584
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRunningThread:I

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mRunningThreadCount:I

    if-ge v6, v7, :cond_1f

    .line 4585
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v0, p0

    iget v7, v0, Lc8/msf;->mRunningThreadCount:I

    iput v7, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRunningThread:I

    .line 4589
    :cond_1f
    return-void

    .line 4575
    :catch_3
    move-exception v50

    .line 4576
    .restart local v50    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method getTotalMemFromFile()I
    .locals 7

    .prologue
    .line 2616
    const/4 v3, 0x0

    .line 2618
    .local v3, "totalMem":I
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string/jumbo v4, "/proc/meminfo"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2619
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2621
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2622
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2623
    if-eqz v2, :cond_0

    .line 2624
    const-string/jumbo v4, "MemTotal:"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2625
    const-string/jumbo v4, "kB"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2626
    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2627
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2629
    :cond_0
    div-int/lit16 v3, v3, 0x400

    .line 2630
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_1

    .line 2631
    const-string/jumbo v4, "OnLineMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTotalMemFromFile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 2636
    :catch_0
    move-exception v4

    const/16 v3, 0x400

    goto :goto_0
.end method

.method getTrafficStats()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2719
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/msf;->mMobileRxBytes:J

    .line 2720
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/msf;->mMobileTxBytes:J

    .line 2721
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/msf;->mTotalRxBytes:J

    .line 2722
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/msf;->mTotalTxBytes:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    :goto_0
    iget-wide v0, p0, Lc8/msf;->mFirstMobileRxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2728
    iget-wide v0, p0, Lc8/msf;->mMobileRxBytes:J

    iput-wide v0, p0, Lc8/msf;->mFirstMobileRxBytes:J

    .line 2729
    iget-wide v0, p0, Lc8/msf;->mMobileTxBytes:J

    iput-wide v0, p0, Lc8/msf;->mFirstMobileTxBytes:J

    .line 2730
    iget-wide v0, p0, Lc8/msf;->mTotalRxBytes:J

    iput-wide v0, p0, Lc8/msf;->mFirstTotalRxBytes:J

    .line 2731
    iget-wide v0, p0, Lc8/msf;->mTotalTxBytes:J

    iput-wide v0, p0, Lc8/msf;->mFirstTotalTxBytes:J

    .line 2733
    :cond_0
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v0, v0, Lc8/Asf;->mFirstMobileRxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2734
    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v2, p0, Lc8/msf;->mFirstMobileRxBytes:J

    iput-wide v2, v0, Lc8/Asf;->mFirstMobileRxBytes:J

    .line 2735
    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v2, p0, Lc8/msf;->mFirstMobileTxBytes:J

    iput-wide v2, v0, Lc8/Asf;->mFirstMobileTxBytes:J

    .line 2736
    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v2, p0, Lc8/msf;->mFirstTotalRxBytes:J

    iput-wide v2, v0, Lc8/Asf;->mFirstTotalRxBytes:J

    .line 2737
    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-wide v2, p0, Lc8/msf;->mFirstTotalTxBytes:J

    iput-wide v2, v0, Lc8/Asf;->mFirstTotalTxBytes:J

    .line 2739
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method isRooted()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4745
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "/system/bin/su"

    aput-object v5, v2, v4

    const-string/jumbo v5, "/system/xbin/su"

    aput-object v5, v2, v3

    const/4 v5, 0x2

    const-string/jumbo v6, "/system/sbin/su"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "/sbin/su"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "/vendor/bin/su"

    aput-object v6, v2, v5

    .line 4749
    .local v2, "kSuSearchPaths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 4750
    new-instance v0, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4751
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4752
    iget-object v5, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isRooted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4759
    .end local v0    # "f":Ljava/io/File;
    :goto_1
    return v3

    .line 4749
    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 4759
    goto :goto_1
.end method

.method needStratAntCheck()V
    .locals 4

    .prologue
    .line 4620
    iget v0, p0, Lc8/msf;->mCheckAnrCounter:I

    if-gez v0, :cond_0

    .line 4621
    const/4 v0, 0x0

    iput v0, p0, Lc8/msf;->mCheckAnrCounter:I

    .line 4622
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/msf;->mCheckAnrTime:J

    .line 4623
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4625
    :cond_0
    return-void
.end method

.method notifyActivityLoadFinish()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3368
    iget-object v6, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v6, :cond_0

    .line 3369
    iget-object v6, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v10, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityLoading:Z

    .line 3371
    :cond_0
    iget-boolean v6, p0, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lc8/osf;->sIsBootCorrect:Z

    if-eqz v6, :cond_5

    .line 3372
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lc8/msf;->notifyBootAccurateFinished(I)V

    .line 3373
    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-virtual {v6}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 3374
    iget-object v6, p0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iput-wide v6, p0, Lc8/msf;->mBootJiffyTime:J

    .line 3375
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v6, :cond_2

    .line 3376
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    iput-wide v8, v6, Lc8/Asf;->mMainThreadEndCpu:J

    .line 3377
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_1

    .line 3378
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mExecuteThreadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v6, Lc8/Asf;->mExecuteThreadInfoBootSize:I

    .line 3380
    :cond_1
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v6}, Lc8/Asf;->onBootStep2()V

    .line 3382
    :cond_2
    sget-boolean v6, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v6, :cond_5

    .line 3383
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v6}, Lc8/Asf;->onBootEnd()V

    .line 3384
    sget-boolean v6, Lc8/Asf;->sTraceThread:Z

    if-eqz v6, :cond_5

    .line 3386
    :try_start_0
    iget-object v6, p0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3387
    .local v4, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3388
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 3389
    .local v5, "v":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v5, :cond_3

    .line 3390
    invoke-virtual {v5}, Lcom/taobao/onlinemonitor/ThreadInfo;->onBootEnd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    .end local v5    # "v":Lcom/taobao/onlinemonitor/ThreadInfo;
    :catch_0
    move-exception v6

    .line 3397
    :cond_4
    sget-boolean v6, Lc8/Asf;->sTraceThreadWait:Z

    if-nez v6, :cond_5

    .line 3398
    iget-object v6, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v6}, Lc8/Asf;->getThreadIoWaitTime()V

    .line 3408
    :cond_5
    iget-object v6, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 3409
    iget-object v7, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v6, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 3411
    iget-object v6, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/dsf;

    .line 3412
    .local v3, "onActivityLoadListener":Lc8/dsf;
    iget-object v6, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v6, v6, Lc8/Grf;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v9, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-interface {v3, v6, v8, v9}, Lc8/dsf;->onActivityLoadFinish(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 3410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3414
    .end local v3    # "onActivityLoadListener":Lc8/dsf;
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3416
    .end local v1    # "i":I
    :cond_7
    iput-boolean v10, p0, Lc8/msf;->mIsInBootStep:Z

    .line 3418
    return-void

    .line 3414
    .restart local v1    # "i":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method notifyActivityLoadStart()V
    .locals 6

    .prologue
    .line 3357
    iget-object v2, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3358
    iget-object v3, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3360
    iget-object v2, p0, Lc8/msf;->mOnActivityLoadListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/dsf;

    .line 3361
    .local v1, "onActivityLoadListener":Lc8/dsf;
    iget-object v2, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v2, v2, Lc8/Grf;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-interface {v1, v2, v4, v5}, Lc8/dsf;->onActivityLoadStart(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 3359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3363
    .end local v1    # "onActivityLoadListener":Lc8/dsf;
    :cond_0
    monitor-exit v3

    .line 3365
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 3363
    .restart local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method notifyBackForGroundListener(I)V
    .locals 20
    .param p1, "type"    # I

    .prologue
    .line 1880
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1933
    :goto_0
    return-void

    .line 1883
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1884
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-ge v6, v9, :cond_b

    .line 1886
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBackForGroundListener:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/esf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1887
    .local v8, "l":Lc8/esf;
    if-eqz v8, :cond_4

    .line 1889
    const-wide/16 v10, 0x0

    .local v10, "time1":J
    const-wide/16 v2, 0x0

    .line 1890
    .local v2, "cputime1":J
    :try_start_2
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_1

    .line 1891
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v10, v16, v18

    .line 1892
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 1894
    :cond_1
    const/16 v9, 0xa

    move/from16 v0, p1

    if-ne v0, v9, :cond_5

    .line 1895
    invoke-interface {v8}, Lc8/esf;->onJustToggleBackGround()V

    .line 1904
    :cond_2
    :goto_2
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_4

    .line 1905
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v12, v16, v18

    .line 1906
    .local v12, "time2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 1907
    .local v4, "cputime2":J
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 1908
    .local v7, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 1909
    sub-long v16, v4, v2

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 1910
    sub-long v16, v12, v10

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 1911
    const/16 v9, 0xa

    move/from16 v0, p1

    if-ne v0, v9, :cond_8

    .line 1912
    const-string/jumbo v9, "onJustToggleBackGround()"

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 1920
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v9, :cond_4

    .line 1921
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v9, v9, Lc8/Asf;->mOnBackForGroundList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    .end local v2    # "cputime1":J
    .end local v4    # "cputime2":J
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v8    # "l":Lc8/esf;
    .end local v10    # "time1":J
    .end local v12    # "time2":J
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1896
    .restart local v2    # "cputime1":J
    .restart local v8    # "l":Lc8/esf;
    .restart local v10    # "time1":J
    :cond_5
    const/16 v9, 0x14

    move/from16 v0, p1

    if-ne v0, v9, :cond_6

    .line 1897
    invoke-interface {v8}, Lc8/esf;->onJustToggleForGround()V

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_4

    .line 1898
    :cond_6
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_7

    .line 1899
    invoke-interface {v8}, Lc8/esf;->onToggleBackGround()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1933
    .end local v2    # "cputime1":J
    .end local v8    # "l":Lc8/esf;
    .end local v10    # "time1":J
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 1900
    .restart local v2    # "cputime1":J
    .restart local v8    # "l":Lc8/esf;
    .restart local v10    # "time1":J
    :cond_7
    const/4 v9, 0x2

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    .line 1901
    :try_start_4
    invoke-interface {v8}, Lc8/esf;->onToggleForGround()V

    goto :goto_2

    .line 1913
    .restart local v4    # "cputime2":J
    .restart local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .restart local v12    # "time2":J
    :cond_8
    const/16 v9, 0x14

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    .line 1914
    const-string/jumbo v9, "onJustToggleForGround()"

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    goto :goto_3

    .line 1915
    :cond_9
    const/4 v9, 0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    .line 1916
    const-string/jumbo v9, "onToggleBackGround()"

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    goto :goto_3

    .line 1917
    :cond_a
    const/4 v9, 0x2

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    .line 1918
    const-string/jumbo v9, "onToggleForGround()"

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1933
    .end local v2    # "cputime1":J
    .end local v4    # "cputime2":J
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v8    # "l":Lc8/esf;
    .end local v10    # "time1":J
    .end local v12    # "time2":J
    :cond_b
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto :goto_4
.end method

.method notifyBootAccurateFinished(I)V
    .locals 20
    .param p1, "period"    # I

    .prologue
    .line 3538
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 3578
    :goto_0
    return-void

    .line 3541
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3542
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-ge v6, v9, :cond_3

    .line 3544
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/bsf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3545
    .local v8, "l":Lc8/bsf;
    if-eqz v8, :cond_2

    .line 3547
    const-wide/16 v10, 0x0

    .local v10, "time1":J
    const-wide/16 v2, 0x0

    .line 3548
    .local v2, "cputime1":J
    :try_start_2
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_1

    .line 3549
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v10, v16, v18

    .line 3550
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 3553
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move/from16 v0, p1

    invoke-interface {v8, v9, v0}, Lc8/bsf;->OnAccurateBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;I)V

    .line 3555
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_2

    .line 3556
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v12, v16, v18

    .line 3557
    .local v12, "time2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 3558
    .local v4, "cputime2":J
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 3559
    .local v7, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 3560
    sub-long v16, v4, v2

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 3561
    sub-long v16, v12, v10

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 3562
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 3563
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v9, :cond_2

    .line 3564
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v9, v9, Lc8/Asf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3542
    .end local v2    # "cputime1":J
    .end local v4    # "cputime2":J
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v8    # "l":Lc8/bsf;
    .end local v10    # "time1":J
    .end local v12    # "time2":J
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3575
    :cond_3
    if-lez p1, :cond_4

    .line 3576
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnAccurateBootListener:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3578
    :cond_4
    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    :catch_0
    move-exception v9

    goto :goto_2

    .restart local v2    # "cputime1":J
    .restart local v8    # "l":Lc8/bsf;
    .restart local v10    # "time1":J
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method notifyBootFinished()V
    .locals 20

    .prologue
    .line 3494
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 3533
    :goto_0
    return-void

    .line 3497
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3498
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-ge v6, v9, :cond_3

    .line 3500
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/fsf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3501
    .local v8, "l":Lc8/fsf;
    if-eqz v8, :cond_2

    .line 3503
    const-wide/16 v10, 0x0

    .local v10, "time1":J
    const-wide/16 v2, 0x0

    .line 3504
    .local v2, "cputime1":J
    :try_start_2
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_1

    .line 3505
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v10, v16, v18

    .line 3506
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 3509
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    invoke-interface {v8, v9}, Lc8/fsf;->onBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    .line 3511
    sget-boolean v9, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v9, :cond_2

    .line 3512
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    div-long v12, v16, v18

    .line 3513
    .local v12, "time2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 3514
    .local v4, "cputime2":J
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 3515
    .local v7, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 3516
    sub-long v16, v4, v2

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 3517
    sub-long v16, v12, v10

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 3518
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 3519
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v9, :cond_2

    .line 3520
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v9, v9, Lc8/Asf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3498
    .end local v2    # "cputime1":J
    .end local v4    # "cputime2":J
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v8    # "l":Lc8/fsf;
    .end local v10    # "time1":J
    .end local v12    # "time2":J
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3532
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/msf;->mOnBootFinishedList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3533
    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    :catch_0
    move-exception v9

    goto :goto_2

    .restart local v2    # "cputime1":J
    .restart local v8    # "l":Lc8/fsf;
    .restart local v10    # "time1":J
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V
    .locals 22
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 3425
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3426
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3427
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_9

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/csf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3429
    .local v10, "l":Lc8/csf;
    if-eqz v10, :cond_2

    .line 3431
    const-wide/16 v12, 0x0

    .local v12, "time1":J
    const-wide/16 v2, 0x0

    .line 3432
    .local v2, "cputime1":J
    :try_start_1
    sget-boolean v16, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v16, :cond_0

    .line 3433
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const-wide/32 v20, 0xf4240

    div-long v12, v18, v20

    .line 3434
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 3436
    :cond_0
    if-nez p2, :cond_3

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityIdle(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    .line 3451
    :cond_1
    :goto_1
    sget-boolean v16, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v16, :cond_2

    .line 3452
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const-wide/32 v20, 0xf4240

    div-long v14, v18, v20

    .line 3453
    .local v14, "time2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 3454
    .local v4, "cputime2":J
    sub-long v8, v14, v12

    .line 3455
    .local v8, "interval":J
    sget v16, Lc8/Asf;->sTraceOnLineDuration:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v8, v18

    if-ltz v16, :cond_2

    .line 3456
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 3457
    .local v7, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 3458
    sub-long v18, v4, v2

    const-wide/32 v20, 0xf4240

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 3459
    iput-wide v8, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 3460
    move/from16 v0, p2

    iput v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->priority:I

    .line 3461
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 3463
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/Asf;->mOnActivityLifeCycleTimeList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    .end local v2    # "cputime1":J
    .end local v4    # "cputime2":J
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v8    # "interval":J
    .end local v12    # "time1":J
    .end local v14    # "time2":J
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3438
    .restart local v2    # "cputime1":J
    .restart local v12    # "time1":J
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 3439
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityCreate(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    goto :goto_1

    :catch_0
    move-exception v16

    goto :goto_2

    .line 3440
    :cond_4
    const/16 v16, 0x2

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityStarted(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3472
    .end local v2    # "cputime1":J
    .end local v6    # "i":I
    .end local v10    # "l":Lc8/csf;
    .end local v11    # "size":I
    .end local v12    # "time1":J
    :catchall_0
    move-exception v16

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 3442
    .restart local v2    # "cputime1":J
    .restart local v6    # "i":I
    .restart local v10    # "l":Lc8/csf;
    .restart local v11    # "size":I
    .restart local v12    # "time1":J
    :cond_5
    const/16 v16, 0x3

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 3443
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityResume(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    goto/16 :goto_1

    .line 3444
    :cond_6
    const/16 v16, 0x4

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityPaused(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    goto/16 :goto_1

    .line 3446
    :cond_7
    const/16 v16, 0x5

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 3447
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityStoped(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V

    goto/16 :goto_1

    .line 3448
    :cond_8
    const/16 v16, 0x6

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lc8/csf;->onActivityDestroyed(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3472
    .end local v2    # "cputime1":J
    .end local v10    # "l":Lc8/csf;
    .end local v12    # "time1":J
    :cond_9
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method

.method notifyOnCheckViewTree(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 3476
    iget-object v2, p0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 3490
    :goto_0
    return-void

    .line 3479
    :cond_0
    iget-object v3, p0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3482
    :try_start_1
    iget-object v2, p0, Lc8/msf;->mOnCheckViewTreeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/gsf;

    .line 3483
    .local v1, "l":Lc8/gsf;
    if-eqz v1, :cond_1

    .line 3484
    iget-object v2, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v4, v4, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, v4, p1}, Lc8/gsf;->onCheckViewTree(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3480
    .end local v1    # "l":Lc8/gsf;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3490
    :cond_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method notifyOnlineRuntimeStat(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 3346
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/msf;->mLastNotifyType:I

    if-ne v0, p1, :cond_1

    .line 3351
    :cond_0
    :goto_0
    return-void

    .line 3349
    :cond_1
    iput p1, p0, Lc8/msf;->mLastNotifyType:I

    .line 3350
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onActivityCreate(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 2826
    iput-wide v4, p0, Lc8/msf;->mActivityIdleTime:J

    .line 2827
    iput-wide v4, p0, Lc8/msf;->mActivityIdleFistTime:J

    .line 2828
    iput v1, p0, Lc8/msf;->mIdleNotifyCount:I

    .line 2829
    iput-wide v4, p0, Lc8/msf;->mMaxBlockIdletime:J

    .line 2832
    iget-object v2, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v2, v2, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v2, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 2833
    iget-object v2, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v3, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityName:Ljava/lang/String;

    .line 2834
    iput-wide v4, p0, Lc8/msf;->mUIHiddenTime:J

    .line 2835
    iput-boolean v1, p0, Lc8/msf;->mIsIdleGeted:Z

    .line 2836
    iget-object v2, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    if-nez v2, :cond_0

    .line 2837
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iput-object v2, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2839
    :cond_0
    iget-object v2, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v3, p0, Lc8/msf;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2840
    iget-object v2, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 2841
    new-instance v2, Lc8/Yrf;

    invoke-direct {v2, p0}, Lc8/Yrf;-><init>(Lc8/msf;)V

    iput-object v2, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    .line 2842
    iget-object v2, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v2, v2, Lc8/Grf;->mActivityOncreateTime:J

    iput-wide v2, p0, Lc8/msf;->mCheckAnrTime:J

    .line 2844
    :cond_1
    iput-boolean v0, p0, Lc8/msf;->mIsActivityColdOpen:Z

    .line 2845
    iget v2, p0, Lc8/msf;->mAnrCount:I

    iput v2, p0, Lc8/msf;->mOldAnrCount:I

    .line 2846
    iget-object v2, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 2847
    iget-object v2, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2848
    iget v2, p0, Lc8/msf;->mAppProgressImportance:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    .line 2849
    iget-object v2, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2850
    iget-object v2, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2854
    :cond_2
    iget-boolean v2, p0, Lc8/msf;->mIsInitedActivity:Z

    if-eqz v2, :cond_3

    .line 2856
    invoke-virtual {p0}, Lc8/msf;->getTrafficStats()V

    .line 2858
    :cond_3
    invoke-virtual {p0}, Lc8/msf;->back2ForeChanged()V

    .line 2859
    iget-object v2, p0, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    iput-boolean v0, p0, Lc8/msf;->mIsFirstOpenActivity:Z

    .line 2861
    iget-object v0, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v0, v0, Lc8/Grf;->mActivityOncreateTime:J

    invoke-virtual {p0, v0, v1}, Lc8/msf;->onActivityLoadStart(J)V

    .line 2862
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_4

    .line 2863
    iget-object v0, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v0, p1}, Lc8/Asf;->onActivityCreate(Landroid/app/Activity;)V

    .line 2865
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 2859
    goto :goto_0
.end method

.method onActivityDestroyed(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3034
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3038
    :cond_1
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3039
    .local v7, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v8, p0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, p1, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3040
    const/4 v4, 0x0

    .line 3042
    .local v4, "isV4":Z
    :try_start_0
    iget-object v8, p0, Lc8/msf;->mClassFragmentActivity:Ljava/lang/Class;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lc8/msf;->mClassFragmentActivity:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3045
    const/4 v4, 0x1

    .line 3046
    iget-object v8, p0, Lc8/msf;->mGetSupportFragmentManager:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, p1, v9}, Lc8/msf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3047
    .local v6, "objFragmentManager":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "mAdded"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3048
    .local v0, "added":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3049
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3050
    .local v2, "fragments":Ljava/util/ArrayList;
    if-eqz v2, :cond_2

    .line 3051
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 3052
    iget-object v8, p0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3051
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "added":Ljava/lang/reflect/Field;
    .end local v2    # "fragments":Ljava/util/ArrayList;
    .end local v3    # "i":I
    .end local v6    # "objFragmentManager":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 3059
    :cond_2
    if-nez v4, :cond_3

    .line 3061
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 3062
    .local v5, "manager":Landroid/app/FragmentManager;
    if-eqz v5, :cond_3

    .line 3064
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "mAdded"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3065
    .restart local v0    # "added":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3066
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3067
    .restart local v2    # "fragments":Ljava/util/ArrayList;
    if-eqz v2, :cond_3

    .line 3068
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 3069
    iget-object v8, p0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3068
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "added":Ljava/lang/reflect/Field;
    .end local v2    # "fragments":Ljava/util/ArrayList;
    .end local v3    # "i":I
    .end local v5    # "manager":Landroid/app/FragmentManager;
    :catch_1
    move-exception v8

    .line 3079
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 3080
    .local v1, "decorView":Landroid/view/View;
    iget-object v8, p0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v1, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    invoke-virtual {p0, v1, v7}, Lc8/msf;->addSmoothViewToLeak(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3086
    .end local v1    # "decorView":Landroid/view/View;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method onActivityLoadStart(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 2868
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_5

    .line 2871
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2874
    :cond_0
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;-><init>()V

    iput-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 2875
    sget-short v0, Lc8/Asf;->sTracedActivityCount:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    sput-short v0, Lc8/Asf;->sTracedActivityCount:S

    .line 2882
    :cond_1
    :goto_0
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    if-nez v0, :cond_2

    .line 2883
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    .line 2885
    :cond_2
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 2886
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityLoading:Z

    .line 2887
    iput-short v4, p0, Lc8/msf;->mIoWiatCount:S

    .line 2888
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v1, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v2, v1, Lc8/Grf;->mActivityOncreateTime:J

    iput-wide v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityCreateTime:J

    .line 2889
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-boolean v1, p0, Lc8/msf;->mIsFirstOpenActivity:Z

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isFistTimeOpen:Z

    .line 2891
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v1, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    .line 2892
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide p1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    .line 2893
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v2, p0, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memStart:S

    .line 2894
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v2, p0, Lc8/msf;->mDalvikPss:J

    long-to-int v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaStart:S

    .line 2895
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v2, p0, Lc8/msf;->mNativeHeapPss:J

    long-to-int v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeStart:S

    .line 2896
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_3

    .line 2897
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v1

    iput v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    .line 2899
    :cond_3
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v1, p0, Lc8/msf;->mAnrCount:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->anrTime:S

    .line 2900
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-boolean v1, p0, Lc8/msf;->mIsActivityColdOpen:Z

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isColdOpen:Z

    .line 2901
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v1, p0, Lc8/msf;->mRuntimeThreadCount:I

    iput v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    .line 2902
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isSystemIdle:Z

    .line 2903
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutUseTime:J

    .line 2904
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->layoutTimesOnLoad:S

    .line 2905
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutUseTime:J

    .line 2906
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->measureTimes:S

    .line 2907
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->suspectRelativeLayout:S

    .line 2908
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutDepth:S

    .line 2909
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->redundantLayout:S

    .line 2910
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    .line 2911
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->firstRelativeLayoutDepth:S

    .line 2912
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRelativeLayoutDepth:S

    .line 2913
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityViewCount:I

    .line 2914
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    .line 2915
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityScore:I

    .line 2916
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->avgSm:I

    .line 2917
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    .line 2918
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    .line 2919
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    .line 2920
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmUsedTime:I

    .line 2921
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmLayoutTimes:I

    .line 2922
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmCount:I

    .line 2923
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityViewCount:I

    .line 2924
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    .line 2925
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutCount:S

    .line 2926
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->smoothViewOutRevLayoutDepth:I

    .line 2927
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->checkSystemInfoCount:I

    .line 2928
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->getMemoryCount:S

    .line 2929
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmUsedTime:I

    .line 2930
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmCount:I

    .line 2931
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmCount:I

    .line 2932
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmUsedTime:I

    .line 2933
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectGetCount:I

    .line 2934
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectSize:I

    .line 2935
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetCleanerObjectTime:J

    .line 2936
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastGetFinalizerTime:J

    .line 2937
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2938
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2940
    :cond_4
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFileGetCount:I

    .line 2941
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastOpenFileGetTime:J

    .line 2942
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-short v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    .line 2943
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    .line 2944
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapByteCount:I

    .line 2945
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap1M:I

    .line 2946
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap2M:I

    .line 2947
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap4M:I

    .line 2948
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    .line 2949
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8M:I

    .line 2950
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap10M:I

    .line 2951
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap15M:I

    .line 2952
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeScreen:I

    .line 2953
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    .line 2954
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize2Screen:I

    .line 2955
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput v4, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize14Screen:I

    .line 2958
    invoke-virtual {p0}, Lc8/msf;->notifyActivityLoadStart()V

    .line 2959
    return-void

    .line 2876
    :cond_5
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-nez v0, :cond_1

    .line 2878
    iget-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-nez v0, :cond_1

    .line 2879
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;-><init>()V

    iput-object v0, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    goto/16 :goto_0
.end method

.method onActivityPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2962
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v3, :cond_b

    .line 2964
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-object v6, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    .line 2965
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mRuntimeThreadCount:I

    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->threadInterval:I

    .line 2966
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v4, p0, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memEnd:S

    .line 2967
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v4, p0, Lc8/msf;->mDalvikPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaEnd:S

    .line 2968
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v4, p0, Lc8/msf;->mNativeHeapPss:J

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeEnd:S

    .line 2969
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->anrTime:S

    iget v5, p0, Lc8/msf;->mAnrCount:I

    sub-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->anrTime:S

    .line 2970
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mTotalGcCount:I

    iget v5, p0, Lc8/msf;->mStartGcCount:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->gcCount:I

    .line 2971
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mBlockingGCCount:I

    iget v5, p0, Lc8/msf;->mStartBlockingGCCount:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    .line 2972
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v4, p0, Lc8/msf;->mTotalBlockingGCTime:J

    iget-wide v6, p0, Lc8/msf;->mStartBlockingGCTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockTime:J

    .line 2973
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mAvgIOWaitTime:I

    int-to-short v4, v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->ioWait:J

    .line 2974
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v4, p0, Lc8/msf;->mAvgMyPidScore:S

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidScore:S

    .line 2975
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v4, p0, Lc8/msf;->mAvgSystemRunningScore:S

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->sysScore:S

    .line 2976
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mMyAvgPidCPUPercent:I

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidAvgCpu:S

    .line 2977
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mSysAvgCPUPercent:I

    int-to-short v4, v4

    iput-short v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->sysAvgCpu:S

    .line 2978
    sget-boolean v3, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v3, :cond_0

    .line 2979
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v4

    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->classCount:I

    .line 2981
    :cond_0
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityDragFlingCount:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragFlingCount:I

    .line 2982
    iget-object v3, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v3, v3, Lc8/tsf;->mActivityTotalSmUsedTime:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v3, v3, Lc8/tsf;->mActivityTotalSmUsedTime:I

    const v4, 0x927c0

    if-ge v3, v4, :cond_4

    .line 2983
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityTotalSmCount:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    .line 2984
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityTotalSmUsedTime:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    .line 2985
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmLayoutTimes:I

    .line 2986
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmUsedTime:I

    .line 2987
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    iget v4, v4, Lc8/tsf;->mActivityTotalBadSmCount:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmCount:I

    .line 2988
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    .line 2989
    .local v0, "activityBadSmoothStepCount":[I
    if-eqz v0, :cond_4

    .line 2990
    const/4 v2, 0x0

    .line 2991
    .local v2, "totalBadCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2992
    aget v3, v0, v1

    add-int/2addr v2, v3

    .line 2991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2994
    :cond_1
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmCount:I

    if-le v2, v3, :cond_4

    .line 2995
    :cond_2
    sget-boolean v3, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v3, :cond_3

    .line 2996
    const-string/jumbo v3, "OnLineMonitor"

    const-string/jumbo v4, "\u6ed1\u52a8\u4e2d\u7684\u95ee\u9898\u5e27\u6570\u91cf\u6709\u8bef\uff0c\u5c06\u4e22\u5f03\uff01"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :cond_3
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 2999
    aput v8, v0, v1

    .line 2998
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3005
    .end local v0    # "activityBadSmoothStepCount":[I
    .end local v1    # "i":I
    .end local v2    # "totalBadCount":I
    :cond_4
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mPidIoWaitSumAvg:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    .line 3006
    iget v3, p0, Lc8/msf;->mPidIoWaitCount:I

    iget v4, p0, Lc8/msf;->mPidIoWaitSumStart:I

    sub-int/2addr v3, v4

    iput v3, p0, Lc8/msf;->mPidIoWaitCountLast:I

    .line 3007
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mPidIoWaitCountLast:I

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    .line 3008
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mPidPerCpuLoadAvg:F

    iget-short v5, p0, Lc8/msf;->mCpuProcessCount:S

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidPerCpuLoadAvg:F

    .line 3009
    iget v3, p0, Lc8/msf;->mPidPerCpuLoadAvg:F

    iput v3, p0, Lc8/msf;->mPidPerCpuLoadLast:F

    .line 3010
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSystemLoadAvg:[F

    aget v4, v4, v8

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadAvg1Min:F

    .line 3011
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    if-gtz v3, :cond_5

    .line 3012
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, p0, Lc8/msf;->mAvgIOWaitTime:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    .line 3014
    :cond_5
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    if-gtz v3, :cond_6

    .line 3015
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v4, p0, Lc8/msf;->mIoWiatCount:S

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    .line 3017
    :cond_6
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidPerCpuLoadAvg:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 3018
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mSystemLoadAvg:[F

    aget v4, v4, v8

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidPerCpuLoadAvg:F

    .line 3020
    :cond_7
    iget-object v3, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v3, :cond_9

    sget-boolean v3, Lc8/Asf;->sTraceMemory:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memStart:S

    if-eqz v3, :cond_8

    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalUss:I

    if-nez v3, :cond_9

    .line 3021
    :cond_8
    invoke-virtual {p0, v8}, Lc8/msf;->getMemInfo(Z)V

    .line 3023
    :cond_9
    iget-object v3, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-boolean v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isColdOpen:Z

    if-eqz v3, :cond_a

    .line 3024
    iget-object v3, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v4, p0, Lc8/msf;->mEvaluateScore:Lc8/Irf;

    iget-object v5, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-virtual {v4, p0, v5}, Lc8/Irf;->evaluateActivityScore(Lc8/msf;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)I

    move-result v4

    iput v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityScore:I

    .line 3026
    :cond_a
    sget-boolean v3, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v3, :cond_b

    .line 3027
    iget-object v3, p0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    :cond_b
    return-void
.end method

.method onActivityPause(Landroid/app/Activity;)V
    .locals 21
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsActivityColdOpen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3163
    .local v8, "integer":Ljava/lang/Integer;
    if-nez v8, :cond_5

    .line 3164
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    const/4 v2, 0x1

    .line 3170
    .local v2, "codeOpenCount":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    .line 3172
    sget v18, Lc8/osf;->sColdOpenMaxTimesForStatistics:I

    move/from16 v0, v18

    if-le v2, v0, :cond_0

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    .line 3206
    .end local v2    # "codeOpenCount":I
    .end local v8    # "integer":Ljava/lang/Integer;
    :cond_0
    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsActivityColdOpen:Z

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lc8/tsf;->mIsFlingStart:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 3208
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/tsf;->stopSmoothSmCalculate()V

    .line 3210
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsBootEndActivity:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->commmitBootFinished()V

    .line 3213
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->notifyBootFinished()V

    .line 3214
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsBootEndActivity:Z

    .line 3218
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/WeakHashMap;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mWeakCheckedThreadPool:Ljava/util/WeakHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3220
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3221
    .local v10, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    .line 3222
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3223
    .local v12, "pool":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3224
    .local v13, "poolName":Ljava/lang/String;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 3225
    invoke-virtual {v12}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v14

    .line 3226
    .local v14, "queueSize":I
    sget v18, Lc8/osf;->sThreadPoolQueueCommitSize:I

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    .line 3227
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3228
    .local v15, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v15, :cond_3

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/psf;

    .line 3230
    .local v11, "onlineStatistics":Lc8/psf;
    if-eqz v11, :cond_4

    .line 3231
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1, v12, v13}, Lc8/psf;->onThreadPoolProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3228
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3167
    .end local v4    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;>;>;"
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;>;"
    .end local v11    # "onlineStatistics":Lc8/psf;
    .end local v12    # "pool":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v13    # "poolName":Ljava/lang/String;
    .end local v14    # "queueSize":I
    .end local v15    # "size":I
    .restart local v8    # "integer":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v2, v18, 0x1

    .line 3168
    .restart local v2    # "codeOpenCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3179
    .end local v2    # "codeOpenCount":I
    .end local v8    # "integer":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lc8/tsf;->mActivityTotalSmCount:I

    move/from16 v18, v0

    const/16 v19, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysHotOpenMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3181
    .restart local v8    # "integer":Ljava/lang/Integer;
    if-nez v8, :cond_7

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysHotOpenMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    const/4 v5, 0x1

    .line 3188
    .local v5, "hotOpenCount":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3189
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    .line 3190
    sget v18, Lc8/osf;->sHotOpenMaxTimesForStatistics:I

    move/from16 v0, v18

    if-le v5, v0, :cond_0

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    goto/16 :goto_1

    .line 3185
    .end local v5    # "hotOpenCount":I
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v5, v18, 0x1

    .line 3186
    .restart local v5    # "hotOpenCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivitysHotOpenMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3197
    .end local v5    # "hotOpenCount":I
    .end local v8    # "integer":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    goto/16 :goto_1

    :catch_0
    move-exception v18

    .line 3242
    :cond_9
    sget-boolean v18, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v18, :cond_a

    sget-boolean v18, Lc8/Asf;->sTraceMemory:Z

    if-eqz v18, :cond_a

    .line 3245
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3246
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3247
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 3252
    :cond_a
    :goto_4
    sget-boolean v18, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v18, :cond_e

    sget-boolean v18, Lc8/Asf;->sTraceFinalizer:Z

    if-eqz v18, :cond_e

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v18

    if-lez v18, :cond_e

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 3255
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v18, 0x1f4

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3258
    .local v16, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3259
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3260
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3261
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 3262
    .local v17, "val":Ljava/lang/Integer;
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    .line 3263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\uff1a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "</br>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    const-string/jumbo v19, "OnLineMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Finalizer="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, ", size="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v17    # "val":Ljava/lang/Integer;
    :catch_1
    move-exception v18

    .line 3270
    :cond_c
    const/16 v18, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->finalizerObject:Ljava/lang/String;

    .line 3273
    .end local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lc8/Asf;->mFinalizerObject:Ljava/util/Map;

    .line 3276
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->commitOnActivityPaused()V

    .line 3277
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->clear()V

    .line 3278
    return-void

    :catch_2
    move-exception v18

    goto/16 :goto_4
.end method

.method onActivityResume(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3127
    iget-object v0, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v0, v0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 3128
    iget-object v0, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v2, v0, Lc8/Grf;->mActivityResumeTime:J

    iput-wide v2, p0, Lc8/msf;->mCheckAnrTime:J

    .line 3129
    iput-wide v4, p0, Lc8/msf;->mActivityIdleTime:J

    .line 3130
    iput-wide v4, p0, Lc8/msf;->mActivityIdleFistTime:J

    .line 3131
    iput v1, p0, Lc8/msf;->mIdleNotifyCount:I

    .line 3132
    iput-wide v4, p0, Lc8/msf;->mUIHiddenTime:J

    .line 3133
    iput-wide v4, p0, Lc8/msf;->mMaxBlockIdletime:J

    .line 3135
    invoke-virtual {p0}, Lc8/msf;->back2ForeChanged()V

    .line 3136
    iget-boolean v0, p0, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    if-eqz v0, :cond_0

    .line 3138
    iput-boolean v1, p0, Lc8/msf;->mIsIdleGeted:Z

    .line 3139
    iget-object v0, p0, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lc8/msf;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3141
    :cond_0
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3142
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3143
    iget v0, p0, Lc8/msf;->mAppProgressImportance:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    .line 3144
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3145
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3149
    :cond_1
    invoke-virtual {p0}, Lc8/msf;->getTrafficStats()V

    .line 3150
    iget-boolean v0, p0, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v0, :cond_2

    .line 3151
    iget-object v0, p0, Lc8/msf;->mActivitysMap:Ljava/util/HashMap;

    iget-object v2, p0, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/msf;->mIsFirstOpenActivity:Z

    .line 3152
    iget-object v0, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v2, v0, Lc8/Grf;->mActivityResumeTime:J

    invoke-virtual {p0, v2, v3}, Lc8/msf;->onActivityLoadStart(J)V

    .line 3153
    iget-object v0, p0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v0, v1}, Lc8/Prf;->needStopLoadTimeCalculate(Z)V

    .line 3156
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3151
    goto :goto_0
.end method

.method onActivityStopped(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0x8

    .line 3329
    iget-object v0, p0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-short v0, v0, Lc8/Grf;->mStartCounter:S

    if-nez v0, :cond_0

    .line 3332
    iget-object v0, p0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isInBackGround:Z

    .line 3333
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/msf;->mCheckAnrTime:J

    .line 3334
    iget-wide v0, p0, Lc8/msf;->mCheckAnrTime:J

    iput-wide v0, p0, Lc8/msf;->mUIHiddenTime:J

    .line 3336
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3337
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    sget v1, Lc8/osf;->sWritePerformanceInfo:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3338
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lc8/msf;->notifyBackForGroundListener(I)V

    .line 3339
    sget-boolean v0, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v0, :cond_0

    .line 3340
    const-string/jumbo v0, "OnLineMonitor"

    const-string/jumbo v1, "\u754c\u9762\u4e0d\u53ef\u89c1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_0
    return-void
.end method

.method onBootEnd(JJ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "useTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 4336
    long-to-int v0, p3

    iput v0, p0, Lc8/msf;->mBootUsedTime:I

    .line 4337
    iput-wide p1, p0, Lc8/msf;->mBootEndTime:J

    .line 4338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/msf;->mIsBootEndActivity:Z

    .line 4339
    invoke-virtual {p0, v4}, Lc8/msf;->notifyBootAccurateFinished(I)V

    .line 4340
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4344
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4347
    :cond_0
    sget-boolean v0, Lc8/osf;->sIsStartMethodTrace:Z

    if-eqz v0, :cond_1

    .line 4348
    sput-boolean v4, Lc8/osf;->sIsStartMethodTrace:Z

    .line 4349
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4351
    :cond_1
    return-void
.end method

.method onHandlerThreadPrepared()V
    .locals 38
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1956
    sget-boolean v34, Lc8/msf;->sIsTraceDetail:Z

    if-nez v34, :cond_1

    sget-boolean v34, Lc8/osf;->sPublishRelease:Z

    if-eqz v34, :cond_1

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    .line 1958
    .local v29, "tempRandom":Ljava/lang/String;
    if-eqz v29, :cond_1

    .line 1959
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1960
    .local v5, "c":C
    const/16 v34, 0x31

    move/from16 v0, v34

    if-eq v5, v0, :cond_0

    const/16 v34, 0x33

    move/from16 v0, v34

    if-eq v5, v0, :cond_0

    const/16 v34, 0x37

    move/from16 v0, v34

    if-ne v5, v0, :cond_c

    .line 1961
    :cond_0
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsDeviceSampling:Z

    .line 1968
    .end local v5    # "c":C
    .end local v29    # "tempRandom":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v34, Lc8/Asf;->sNeedHook:Z

    if-eqz v34, :cond_2

    sget v34, Lc8/Asf;->sHookDelayTime:I

    if-lez v34, :cond_2

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    sget v36, Lc8/Asf;->sHookDelayTime:I

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1971
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    const-wide/16 v36, 0x0

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1974
    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mStatusBarHeight:I

    move/from16 v34, v0

    if-nez v34, :cond_3

    .line 1976
    :try_start_0
    const-string/jumbo v34, "com.android.internal.R$dimen"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1977
    .local v6, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v21

    .line 1978
    .local v21, "obj":Ljava/lang/Object;
    const-string/jumbo v34, "status_bar_height"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 1979
    .local v13, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1980
    .local v33, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mStatusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v33    # "x":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetTotalUss:Ljava/lang/reflect/Method;

    move-object/from16 v34, v0

    if-nez v34, :cond_4

    .line 1988
    :try_start_1
    const-class v34, Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v35, "getTotalUss"

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mGetTotalUss:Ljava/lang/reflect/Method;

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetTotalUss:Ljava/lang/reflect/Method;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    .line 1996
    :cond_4
    :goto_2
    :try_start_2
    const-string/jumbo v34, "android.support.v4.app.FragmentActivity"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mClassFragmentActivity:Ljava/lang/Class;

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mClassFragmentActivity:Ljava/lang/Class;

    move-object/from16 v34, v0

    const-string/jumbo v35, "getSupportFragmentManager"

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mGetSupportFragmentManager:Ljava/lang/reflect/Method;

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mGetSupportFragmentManager:Ljava/lang/reflect/Method;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    .line 2003
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsDeviceSampling:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    .line 2004
    sget v34, Lc8/msf;->sApiLevel:I

    const/16 v35, 0x17

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_5

    .line 2006
    :try_start_3
    const-string/jumbo v34, "sun.misc.Cleaner"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mClassCleaner:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 2012
    :cond_5
    :goto_4
    :try_start_4
    const-string/jumbo v34, "java.lang.ref.FinalizerReference"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/msf;->mClassFinalizer:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 2047
    :cond_6
    :goto_5
    sget-boolean v34, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v34, :cond_7

    .line 2048
    const-string/jumbo v34, "OnLineMonitor"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "StatusBarHeight="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lc8/msf;->mStatusBarHeight:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v34, v0

    if-eqz v34, :cond_9

    .line 2051
    const/16 v30, 0x0

    .line 2052
    .local v30, "versionFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lc8/msf;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .line 2054
    .local v31, "versionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    .line 2055
    .local v20, "innFile":Ljava/io/File;
    if-eqz v20, :cond_8

    .line 2056
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "/onlinemonitorversion"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2058
    :cond_8
    if-eqz v30, :cond_9

    .line 2059
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2060
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 2062
    :try_start_5
    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 2063
    .local v19, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2064
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v32

    .line 2065
    .local v32, "versionNameSaved":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 2066
    if-eqz v31, :cond_9

    .line 2067
    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 2088
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "fr":Ljava/io/FileReader;
    .end local v20    # "innFile":Ljava/io/File;
    .end local v30    # "versionFilePath":Ljava/lang/String;
    .end local v31    # "versionName":Ljava/lang/String;
    .end local v32    # "versionNameSaved":Ljava/lang/String;
    :cond_9
    :goto_6
    sget-boolean v34, Lc8/msf;->sIsTraceDetail:Z

    if-nez v34, :cond_a

    sget-boolean v34, Lc8/osf;->sIsDebug:Z

    if-nez v34, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/msf;->mIsDeviceSampling:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v34, v0

    const/16 v35, 0x4b

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_b

    sget v34, Lc8/msf;->sApiLevel:I

    const/16 v35, 0x13

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_b

    .line 2090
    :cond_a
    sget-object v34, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 2092
    :try_start_6
    const-string/jumbo v34, "dalvik.system.CloseGuard"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2093
    .local v8, "clazzCloseGuard":Ljava/lang/Class;
    const-string/jumbo v34, "REPORTER"

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 2094
    .local v17, "fieldREPORTER":Ljava/lang/reflect/Field;
    const-string/jumbo v34, "ENABLED"

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 2095
    .local v14, "fieldENABLED":Ljava/lang/reflect/Field;
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2096
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2098
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v14, v8, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 2099
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 2100
    .local v25, "objReporter":Ljava/lang/Object;
    new-instance v10, Lc8/Wrf;

    const/16 v34, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v10, v0, v1}, Lc8/Wrf;-><init>(Lc8/msf;I)V

    .line 2101
    .local v10, "dynamic2":Lc8/Wrf;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lc8/Wrf;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 2102
    .local v26, "objReporter2":Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v8, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2104
    const-string/jumbo v34, "dalvik.system.BlockGuard"

    invoke-static/range {v34 .. v34}, Lc8/msf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 2105
    .local v7, "clazzBlockGuard":Ljava/lang/Class;
    const-string/jumbo v34, "LAX_POLICY"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 2106
    .local v15, "fieldLAX_POLICY":Ljava/lang/reflect/Field;
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2108
    invoke-virtual {v15, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 2109
    .local v23, "objPolicy":Ljava/lang/Object;
    new-instance v11, Lc8/Wrf;

    const/16 v34, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v11, v0, v1}, Lc8/Wrf;-><init>(Lc8/msf;I)V

    .line 2110
    .local v11, "dynamic3":Lc8/Wrf;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lc8/Wrf;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 2111
    .local v27, "objReporter4":Ljava/lang/Object;
    move-object/from16 v0, v27

    invoke-static {v15, v7, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2119
    .end local v7    # "clazzBlockGuard":Ljava/lang/Class;
    .end local v8    # "clazzCloseGuard":Ljava/lang/Class;
    .end local v10    # "dynamic2":Lc8/Wrf;
    .end local v11    # "dynamic3":Lc8/Wrf;
    .end local v14    # "fieldENABLED":Ljava/lang/reflect/Field;
    .end local v15    # "fieldLAX_POLICY":Ljava/lang/reflect/Field;
    .end local v17    # "fieldREPORTER":Ljava/lang/reflect/Field;
    .end local v23    # "objPolicy":Ljava/lang/Object;
    .end local v25    # "objReporter":Ljava/lang/Object;
    .end local v26    # "objReporter2":Ljava/lang/Object;
    .end local v27    # "objReporter4":Ljava/lang/Object;
    :cond_b
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v35, "power"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    .line 2120
    .local v28, "pm":Landroid/os/PowerManager;
    const-class v34, Landroid/os/PowerManager;

    const-string/jumbo v35, "mService"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 2121
    .local v16, "fieldPowerManager":Ljava/lang/reflect/Field;
    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2122
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 2123
    .local v24, "objPowerService":Ljava/lang/Object;
    new-instance v9, Lc8/Wrf;

    const/16 v34, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v9, v0, v1}, Lc8/Wrf;-><init>(Lc8/msf;I)V

    .line 2124
    .local v9, "dynamic":Lc8/Wrf;
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lc8/Wrf;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 2125
    .local v22, "objNew":Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 2140
    .end local v9    # "dynamic":Lc8/Wrf;
    .end local v16    # "fieldPowerManager":Ljava/lang/reflect/Field;
    .end local v22    # "objNew":Ljava/lang/Object;
    .end local v24    # "objPowerService":Ljava/lang/Object;
    .end local v28    # "pm":Landroid/os/PowerManager;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lc8/msf;->isRooted()Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsRooted:Z

    .line 2142
    return-void

    .line 1963
    .restart local v5    # "c":C
    .restart local v29    # "tempRandom":Ljava/lang/String;
    :cond_c
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/msf;->mIsDeviceSampling:Z

    goto/16 :goto_0

    .line 1983
    .end local v5    # "c":C
    .end local v29    # "tempRandom":Ljava/lang/String;
    :catch_0
    move-exception v34

    const/16 v34, 0x4b

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lc8/msf;->mStatusBarHeight:I

    goto/16 :goto_1

    .line 2070
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "fr":Ljava/io/FileReader;
    .restart local v20    # "innFile":Ljava/io/File;
    .restart local v30    # "versionFilePath":Ljava/lang/String;
    .restart local v31    # "versionName":Ljava/lang/String;
    .restart local v32    # "versionNameSaved":Ljava/lang/String;
    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z

    .line 2071
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 2072
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lc8/msf;->saveVersionInfo(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    .line 2076
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v19    # "fr":Ljava/io/FileReader;
    .end local v32    # "versionNameSaved":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 2077
    .local v12, "e":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 2080
    .end local v12    # "e":Ljava/lang/Throwable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z

    .line 2081
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lc8/msf;->saveVersionInfo(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "innFile":Ljava/io/File;
    .end local v30    # "versionFilePath":Ljava/lang/String;
    .end local v31    # "versionName":Ljava/lang/String;
    :catch_2
    move-exception v34

    goto :goto_8

    :catch_3
    move-exception v34

    goto/16 :goto_7

    :catch_4
    move-exception v34

    goto/16 :goto_5

    :catch_5
    move-exception v34

    goto/16 :goto_4

    :catch_6
    move-exception v34

    goto/16 :goto_3

    :catch_7
    move-exception v34

    goto/16 :goto_2
.end method

.method onTouchDown(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x2

    .line 4593
    iput-wide p1, p0, Lc8/msf;->mCheckAnrTime:J

    .line 4594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/msf;->mIsOnTouch:Z

    .line 4595
    const/4 v0, 0x0

    iput-short v0, p0, Lc8/msf;->mLayoutTimes:S

    .line 4596
    invoke-virtual {p0}, Lc8/msf;->needStratAntCheck()V

    .line 4598
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4599
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4601
    return-void
.end method

.method pidOpenFileCount()V
    .locals 14

    .prologue
    .line 4763
    iget-boolean v10, p0, Lc8/msf;->mIsInBackGround:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lc8/msf;->mIsDeviceSampling:Z

    if-nez v10, :cond_1

    .line 4803
    :cond_0
    :goto_0
    return-void

    .line 4767
    :cond_1
    :try_start_0
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-nez v10, :cond_5

    const/4 v2, 0x0

    .line 4768
    .local v2, "getCount":I
    :goto_1
    invoke-virtual {p0}, Lc8/msf;->getAllowCheckCountPerActivity()I

    move-result v0

    .line 4769
    .local v0, "allowCount":I
    if-gt v2, v0, :cond_0

    .line 4772
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12

    .line 4773
    .local v4, "now":J
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v10, :cond_3

    .line 4774
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastOpenFileGetTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastOpenFileGetTime:J

    sub-long v10, v4, v10

    iget v12, p0, Lc8/msf;->mCpuCheckIntervalControl:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 4777
    :cond_2
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v11, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFileGetCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFileGetCount:I

    .line 4778
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-wide v4, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lastOpenFileGetTime:J

    .line 4781
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v6, v10, v12

    .line 4782
    .local v6, "t1":J
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lc8/msf;->mMyPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/fd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4784
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4785
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 4786
    .local v3, "list":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 4787
    array-length v10, v3

    iput v10, p0, Lc8/msf;->mOpenFileCount:I

    .line 4790
    .end local v3    # "list":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v8, v10, v12

    .line 4791
    .local v8, "t2":J
    sget-boolean v10, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v10, :cond_0

    .line 4792
    const-string/jumbo v10, "OnLineMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pidOpenFileCount time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4803
    .end local v0    # "allowCount":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "getCount":I
    .end local v4    # "now":J
    .end local v6    # "t1":J
    .end local v8    # "t2":J
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 4767
    :cond_5
    iget-object v10, p0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v2, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFileGetCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method registerComponentCallbacks()V
    .locals 4

    .prologue
    .line 2642
    iget-object v0, p0, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2659
    :goto_0
    return-void

    .line 2645
    :cond_0
    iget-object v0, p0, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    iput-object v0, p0, Lc8/msf;->mContext:Landroid/content/Context;

    .line 2648
    :try_start_0
    iget-object v0, p0, Lc8/msf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/msf;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2654
    :goto_1
    :try_start_1
    iget-object v0, p0, Lc8/msf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/msf;->mMyCallback:Lc8/Xrf;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2659
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method saveVersionInfo(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 2145
    const/4 v0, 0x0

    .line 2147
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2153
    if-eqz v1, :cond_0

    .line 2154
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2155
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 2160
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return-void

    .line 2157
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 2158
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 2160
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 2149
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2150
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2153
    if-eqz v0, :cond_1

    .line 2154
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 2155
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2157
    :catch_2
    move-exception v2

    .line 2158
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2152
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2153
    :goto_2
    if-eqz v0, :cond_2

    .line 2154
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 2155
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2159
    :cond_2
    :goto_3
    throw v3

    .line 2157
    :catch_3
    move-exception v2

    .line 2158
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2152
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 2149
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1942
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 1943
    const-string/jumbo v0, "OnLineMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_0
    return-void
.end method

.method startMemoryMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4605
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/msf;->mCheckAnrTime:J

    .line 4606
    const/4 v0, 0x0

    iput-short v0, p0, Lc8/msf;->mLayoutTimes:S

    .line 4607
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4608
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4610
    iget-boolean v0, p0, Lc8/msf;->mIsCheckPerfromanceRunning:Z

    if-nez v0, :cond_0

    .line 4611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/msf;->mIsCheckPerfromanceRunning:Z

    .line 4613
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/Asf;->sTraceThread:Z

    if-eqz v0, :cond_0

    .line 4614
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4617
    :cond_0
    return-void
.end method

.method startPerformanceMonitor()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 2663
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2664
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2666
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/msf;->mCheckAnrTime:J

    .line 2667
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2669
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 2670
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2671
    iget-object v0, p0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2677
    :cond_0
    :goto_0
    return-void

    .line 2673
    :cond_1
    iget-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lc8/msf;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
