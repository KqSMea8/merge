.class public Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
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
    name = "ActivityRuntimeInfo"
.end annotation


# instance fields
.field public activityBadSmoothStepCount:[I

.field public activityCreateTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public activityInstanceCount:J

.field public activityLoadBadSmCount:I

.field public activityLoadBadSmUsedTime:I

.field public activityLoadSmCount:I

.field public activityLoadSmUsedTime:I

.field public activityName:Ljava/lang/String;

.field public activityScore:I

.field public activityTotalBadSmCount:I

.field public activityTotalBadSmUsedTime:I

.field public activityTotalSmCount:I

.field public activityTotalSmLayoutTimes:I

.field public activityTotalSmUsedTime:I

.field public activityViewCount:I

.field public activityVisibleViewCount:I

.field public anrTime:S

.field public appContextInstanceCount:J

.field public arrayListInstanceCount:J

.field public avgSm:I

.field public battery:S

.field public binderDeathObjectCount:I

.field public binderLocalObjectCount:I

.field public binderProxyObjectCount:I

.field public bitmap10M:I

.field public bitmap12M:I

.field public bitmap15M:I

.field public bitmap1M:I

.field public bitmap20M:I

.field public bitmap2M:I

.field public bitmap4M:I

.field public bitmap565Count:I

.field public bitmap6M:I

.field public bitmap8888Count:I

.field public bitmap8M:I

.field public bitmapByteCount:I

.field public bitmapCount:I

.field public bitmapInstanceCount:J

.field public bitmapSize14Screen:I

.field public bitmapSize2Screen:I

.field public bitmapSizeHashScreen:I

.field public bitmapSizeScreen:I

.field public blockGc:I

.field public blockTime:J

.field public byteArrayInstanceCount:J

.field public byteBufferInstanceCount:J

.field public checkIdleTimes:S

.field public checkSystemInfoCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public classCount:I

.field public cleanerObjectGetCount:I

.field public cleanerObjectMap:Ljava/util/Map;
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

.field public cleanerObjectSize:I

.field public collectionInstanceCount:J

.field public concurrentHashMapInstanceCount:J

.field public databaseMemory:I

.field public dragFlingCount:I

.field public dragList:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$SmStat;",
            ">;"
        }
    .end annotation
.end field

.field public drawableInstanceCount:J

.field public fileInstanceCount:J

.field public fileStreamInstanceCount:J

.field public filereadwriteInstanceCount:J

.field public finalizerObject:Ljava/lang/String;

.field public finalizerSize:I

.field public firstRelativeLayoutDepth:S

.field public fpsList:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$SmStat;",
            ">;"
        }
    .end annotation
.end field

.field public fragmentInstanceCount:J

.field public gcCount:I

.field public getMemoryCount:S
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public globalAssetCount:I

.field public globalAssetManagerCount:I

.field public hashMapInstanceCount:J

.field public idleTime:I

.field public ioWait:J

.field public isColdOpen:Z

.field public isFistTimeOpen:Z

.field public javaAllocal:S

.field public javaEnd:S

.field public javaHeapFree:S

.field public javaHeapSize:S

.field public javaMax:S

.field public javaMemPercent:S

.field public javaMin:S

.field public javaStart:S

.field public lastGetCleanerObjectTime:J

.field public lastGetFinalizerTime:J

.field public lastOpenFileGetTime:J

.field public layoutTimesOnLoad:S

.field public lifeCycleArrayUsedTime:[J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public linkedListInstanceCount:J

.field public listInstanceCount:J

.field public loadAvg1Min:F

.field public loadRelason:Ljava/lang/String;

.field public loadTime:I

.field public mapInstanceCount:J

.field public maxIdleDelayTime:S

.field public maxLayoutDepth:S

.field public maxLayoutUseTime:J

.field public maxLoadAvg:F

.field public maxRelativeLayoutDepth:S

.field public maxRunningThread:I

.field public maxThread:I

.field public measureTimes:S

.field public memEnd:S

.field public memMax:S

.field public memMin:S

.field public memOtherApk:I

.field public memOtherArt:I

.field public memOtherAshmem:I

.field public memOtherDex:I

.field public memOtherJar:I

.field public memOtherMap:I

.field public memOtherOat:I

.field public memOtherSo:I

.field public memOtherTtf:I

.field public memStart:S

.field public messageInstanceCount:J

.field public nativeAllocal:S

.field public nativeEnd:S

.field public nativeHeapFree:S

.field public nativeHeapSize:S

.field public nativeMax:S

.field public nativeMin:S

.field public nativeStart:S

.field public openFile:S

.field public openFileGetCount:I

.field public openSslSocketCount:J

.field public overDraw3xCount:S

.field public overDraw4xCount:S

.field public parcelCount:J

.field public parcelSize:J

.field public pidAvgCpu:S

.field public pidIoWaitCount:I

.field public pidIoWaitSumAvg:I

.field public pidPerCpuLoadAvg:F

.field public pidScore:S

.field public redundantLayout:S

.field public runnableInstanceCount:J

.field public smoothViewOutRevLayoutDepth:I

.field public startActivityTime:J

.field public statisticsDiscard:Z

.field public stayTime:J

.field public stringInstanceCount:J

.field public summaryCode:I

.field public summaryGraphics:I

.field public summaryJavaHeap:I

.field public summaryNativeHeap:I

.field public summaryPrivateOther:I

.field public summaryStack:I

.field public summarySystem:I

.field public summaryTotalpss:I

.field public summaryTotalswap:I

.field public suspectRelativeLayout:S

.field public sysAvgCpu:S

.field public sysScore:S

.field public threadInterval:I

.field public threadPoolExecutorInstanceCount:J

.field public totalCanUseJavaMemory:S

.field public totalCanUseMemory:S

.field public totalLayoutCount:S

.field public totalLayoutUseTime:J

.field public totalMemPercent:S

.field public totalPrivateClean:I

.field public totalPrivateDirty:I

.field public totalPss:I

.field public totalRx:S

.field public totalSharedClean:I

.field public totalSharedDirty:I

.field public totalSwappablePss:I

.field public totalTx:S

.field public totalUss:I

.field public viewInstanceCount:J

.field public viewRootInstanceCount:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 5342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5671
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    .line 5771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fpsList:Ljava/util/ArrayList;

    .line 5772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragList:Ljava/util/ArrayList;

    return-void
.end method
