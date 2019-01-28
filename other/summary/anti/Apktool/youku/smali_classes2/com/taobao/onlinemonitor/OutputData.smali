.class public Lcom/taobao/onlinemonitor/OutputData;
.super Ljava/lang/Object;
.source "OutputData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;,
        Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;
    }
.end annotation


# instance fields
.field public activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public activitymanagertrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public allthreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public arrayListLeakObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public asynctaskinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public basic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public bgapps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public bootLifecycle:Ljava/lang/String;

.field public bootcpu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;",
            ">;"
        }
    .end annotation
.end field

.field public broadcasttrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;",
            ">;"
        }
    .end annotation
.end field

.field public componentcallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastthreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public leakLifecycle:Ljava/lang/String;

.field public leak_onlinelifecyclelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public leak_onlinenotifylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public leakbroadcast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public leaklocalbroadcast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field public leakservice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loadedsharedpreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public loginfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mBlockGuardThreadInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBootCpuPercentTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBootDiffThreadMap:Ljava/util/Map;
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

.field public mBootMajorFaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mBootMemoryLevels:Landroid/util/SparseIntArray;

.field public mBootPerCpuLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBootPidCpuPercents:Landroid/util/SparseIntArray;

.field public mBootResourceUsedInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBootRunningPidScores:Landroid/util/SparseIntArray;

.field public mBootRunningSysScores:Landroid/util/SparseIntArray;

.field public mBootRunningThreadsCount:Landroid/util/SparseIntArray;

.field public mBootSysCpuPercents:Landroid/util/SparseIntArray;

.field public mBootSysIoWaitCounts:Landroid/util/SparseIntArray;

.field public mBootSysIoWaitPercent:Landroid/util/SparseIntArray;

.field public mBootSysIoWaitSums:Landroid/util/SparseIntArray;

.field public mBootSysLoads1Min:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBootSysLoads5Min:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mBootSysSchedWaitCounts:Landroid/util/SparseIntArray;

.field public mBootSysSchedWaitSums:Landroid/util/SparseIntArray;

.field public mBootSysThreadsCount:Landroid/util/SparseIntArray;

.field public mBootVmThreadsCount:Landroid/util/SparseIntArray;

.field public mCloseGuardInfo:Ljava/util/HashMap;
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

.field public mCpuPercentTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mDbStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mInstallBundleInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMainThreadBlockGuardInfo:Ljava/util/HashMap;
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

.field public mMajorFaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mMemoryLevels:Landroid/util/SparseIntArray;

.field public mPerCpuLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mPidCpuPercentRecords:Landroid/util/SparseIntArray;

.field public mRunningFinalizerCount:Landroid/util/SparseIntArray;

.field public mRunningPidScores:Landroid/util/SparseIntArray;

.field public mRunningSysScores:Landroid/util/SparseIntArray;

.field public mRunningThreadsCount:Landroid/util/SparseIntArray;

.field public mSharedpreferenceKeyFreq:Ljava/util/Map;
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

.field public mSharedpreferenceQueuedWork:Ljava/util/Map;
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

.field public mStartBundleInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSysCpuPercentRecords:Landroid/util/SparseIntArray;

.field public mSysIoWaitCounts:Landroid/util/SparseIntArray;

.field public mSysIoWaitPercent:Landroid/util/SparseIntArray;

.field public mSysIoWaitSums:Landroid/util/SparseIntArray;

.field public mSysLoads1Min:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mSysLoads5Min:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mSysSchedWaitCounts:Landroid/util/SparseIntArray;

.field public mSysSchedWaitSums:Landroid/util/SparseIntArray;

.field public mSysThreadsCount:Landroid/util/SparseIntArray;

.field public mVmThreadsCount:Landroid/util/SparseIntArray;

.field public mWakeLockInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mainthreadtime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;",
            ">;"
        }
    .end annotation
.end field

.field public memoryleak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;",
            ">;"
        }
    .end annotation
.end field

.field public memstaticlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;",
            ">;"
        }
    .end annotation
.end field

.field public memusedlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;",
            ">;"
        }
    .end annotation
.end field

.field public newthreadinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinebackforgroundnotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinebootnotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinelifecyclelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinelifecycletimelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinenotifylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public onlinenotifytimelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public servicetrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sharedpreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public sharedpreference_trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sofiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public stacktracelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public statisticsthread:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public threadpoolinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;",
            ">;"
        }
    .end annotation
.end field

.field public threadprioritylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public throwablelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method private static map2JSONObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 353
    if-nez p0, :cond_1

    .line 373
    :cond_0
    return-object v3

    .line 354
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v3, "json":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 357
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 358
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v6, "mActivityLifeCycleName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    if-nez v5, :cond_2

    .line 363
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/onlinemonitor/OutputData;->shouldGoInside(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 365
    invoke-static {v5}, Lcom/taobao/onlinemonitor/OutputData;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/onlinemonitor/OutputData;->toJSONValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static shouldGoInside(Ljava/lang/Class;)Z
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .line 342
    if-nez p0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.taobao.onlinemonitor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnLineMonitor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TraceDetail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sparseArray2JSONObject(Landroid/util/SparseArray;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "sparseArray"    # Landroid/util/SparseArray;

    .prologue
    .line 400
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 402
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 403
    .local v3, "key":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 405
    .local v4, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private static toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 7
    .param p0, "list"    # Ljava/util/Collection;

    .prologue
    .line 377
    if-nez p0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 396
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 380
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 381
    .local v4, "object":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 382
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_3

    .line 383
    check-cast v4, Ljava/util/Collection;

    .end local v4    # "object":Ljava/lang/Object;
    invoke-static {v4}, Lcom/taobao/onlinemonitor/OutputData;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v2

    .line 384
    .local v2, "innerArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "innerArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 385
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_4

    const-class v5, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    :cond_4
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 388
    :cond_5
    invoke-static {v4}, Lcom/taobao/onlinemonitor/OutputData;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 389
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 21
    .param p0, "data"    # Ljava/lang/Object;

    .prologue
    .line 182
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v15, "result":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 277
    .end local v15    # "result":Lorg/json/JSONObject;
    .local v2, "arr$":[Ljava/lang/reflect/Field;
    .local v6, "fields":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v15

    .line 188
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v15    # "result":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 189
    check-cast p0, Ljava/util/Map;

    .end local p0    # "data":Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/taobao/onlinemonitor/OutputData;->map2JSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_0

    .line 191
    .restart local p0    # "data":Ljava/lang/Object;
    :cond_2
    if-nez p0, :cond_3

    .line 192
    const/4 v15, 0x0

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 197
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    move-object v2, v6

    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    :try_start_0
    array-length v12, v6

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v12, :cond_0

    aget-object v5, v2, v8

    .line 199
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 203
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 206
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 207
    .local v18, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    .line 210
    .local v17, "type":Ljava/lang/Class;
    const-class v19, Ljava/util/Collection;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 211
    if-nez v18, :cond_5

    .line 212
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/Class;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 214
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/Class;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_5
    check-cast v18, Ljava/util/Collection;

    .end local v18    # "value":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/taobao/onlinemonitor/OutputData;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 271
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 277
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :goto_3
    const/4 v15, 0x0

    goto :goto_0

    .line 216
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/Class;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_6
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 217
    if-nez v18, :cond_7

    .line 218
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 273
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/Class;
    .end local v18    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 274
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 220
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/Class;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-nez v19, :cond_8

    const-class v19, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v19

    const-class v20, Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 223
    :cond_8
    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 224
    .local v13, "length":I
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .local v11, "jsonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v13, :cond_9

    .line 226
    move-object/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 228
    :cond_9
    invoke-virtual {v15, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 230
    .end local v7    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "length":I
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v19

    const-class v20, Ljava/lang/StackTraceElement;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    if-eqz v18, :cond_c

    .line 232
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v16, "tracesBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    .line 234
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "<br>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 236
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 237
    .end local v7    # "i":I
    .end local v16    # "tracesBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v4

    .line 238
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 241
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_c
    check-cast v18, [Ljava/lang/Object;

    .end local v18    # "value":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/taobao/onlinemonitor/OutputData;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 245
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 246
    :cond_e
    check-cast v18, Ljava/util/Map;

    .end local v18    # "value":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/taobao/onlinemonitor/OutputData;->map2JSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v10

    .line 247
    .local v10, "json":Lorg/json/JSONObject;
    invoke-virtual {v15, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 248
    .end local v10    # "json":Lorg/json/JSONObject;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/util/SparseArray;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 249
    check-cast v18, Landroid/util/SparseArray;

    .end local v18    # "value":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/taobao/onlinemonitor/OutputData;->sparseArray2JSONObject(Landroid/util/SparseArray;)Lorg/json/JSONObject;

    move-result-object v10

    .line 250
    .restart local v10    # "json":Lorg/json/JSONObject;
    invoke-virtual {v15, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 251
    .end local v10    # "json":Lorg/json/JSONObject;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/util/SparseIntArray;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 252
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 253
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_6
    move-object/from16 v0, v18

    check-cast v0, Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_11

    .line 254
    move-object/from16 v0, v18

    check-cast v0, Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 256
    :cond_11
    invoke-virtual {v15, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 257
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v9    # "index":I
    :cond_12
    const-class v19, Ljava/lang/Number;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 258
    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 260
    :cond_13
    if-nez v18, :cond_14

    .line 261
    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 262
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/taobao/onlinemonitor/OutputData;->shouldGoInside(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 264
    invoke-static/range {v18 .. v18}, Lcom/taobao/onlinemonitor/OutputData;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 266
    :cond_15
    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2
.end method

.method private static toJSONValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 282
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    if-nez p0, :cond_1

    .line 284
    new-instance p0, Lorg/json/JSONArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 331
    :cond_0
    :goto_0
    return-object p0

    .line 286
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/taobao/onlinemonitor/OutputData;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 288
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 289
    if-nez p0, :cond_3

    .line 290
    new-instance p0, Lorg/json/JSONArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 292
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 296
    .local v4, "length":I
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 297
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 298
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v3

    .line 300
    goto :goto_0

    .line 302
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/StackTraceElement;

    if-ne v6, v7, :cond_8

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v5, "tracesBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 307
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 309
    .end local v1    # "i":I
    .end local v5    # "tracesBuilder":Ljava/lang/StringBuilder;
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/onlinemonitor/OutputData;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    goto/16 :goto_0

    .line 313
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v6, p0, Ljava/util/Map;

    if-nez v6, :cond_a

    instance-of v6, p0, Ljava/util/HashMap;

    if-eqz v6, :cond_b

    .line 314
    :cond_a
    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/taobao/onlinemonitor/OutputData;->map2JSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    .line 315
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v6, p0, Landroid/util/SparseArray;

    if-eqz v6, :cond_c

    .line 316
    check-cast p0, Landroid/util/SparseArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/taobao/onlinemonitor/OutputData;->sparseArray2JSONObject(Landroid/util/SparseArray;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    .line 317
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v6, p0, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_e

    .line 318
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 319
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_3
    move-object v6, p0

    check-cast v6, Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    move-object v6, p0

    .line 320
    check-cast v6, Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    move-object p0, v0

    .line 322
    goto/16 :goto_0

    .line 323
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "index":I
    :cond_e
    const-class v6, Ljava/lang/Number;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 326
    if-nez p0, :cond_f

    .line 327
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 328
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/onlinemonitor/OutputData;->shouldGoInside(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    invoke-static {p0}, Lcom/taobao/onlinemonitor/OutputData;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0
.end method


# virtual methods
.method public asJsData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    invoke-static {p0}, Lcom/taobao/onlinemonitor/OutputData;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    .local v1, "result":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\0000"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\'"

    const-string/jumbo v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "var raw_data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
