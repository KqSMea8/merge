.class public final Lcom/taobao/onlinemonitor/ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mBackGroundCpuTime:I

.field mBootCpuTime:J

.field mBootMaxPercentInDevice:S

.field mBootMaxPercentInPid:S

.field public mClassName:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mCpuPercentInDevice:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mCpuPercentInPid:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mCpuStacks:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceBootTotalTime:J

.field public mDeviceFirstTotalTime:J

.field public mDeviceLastTotalTime:J

.field mEndTime:J

.field mFirstActivity:Ljava/lang/String;

.field mFirstTime:J

.field public mId:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mIncreaseThreadList:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIoWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mIoWaitTime:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mIsDaemon:Z

.field public mLastIoWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastIoWaitTime:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastSchedWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastSchedWaitMax:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastSchedWaitSum:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mLastStime:J

.field mLastUtime:J

.field public mMaxAvgPerCpu:F
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mMaxPercentInDevice:S

.field public mMaxPercentInPid:S

.field public mName:Ljava/lang/String;

.field public mNice:I

.field mPidBootTotalTime:J

.field mPidFirstIoWaitCount:I

.field mPidFirstIoWaitTime:I

.field mPidFirstSchedWaitCount:I

.field mPidFirstSchedWaitSum:I

.field public mPidFirstTotalTime:J

.field public mPidLastIoWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidLastIoWaitTime:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidLastSchedWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidLastSchedWaitSum:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidLastTotalTime:J

.field public mPoolName:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mQueuePriority:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mQueueSize:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mSchedWaitCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mSchedWaitMax:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mSchedWaitSum:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mStackTraceElements:Ljava/lang/String;

.field public mStatus:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mStime:J

.field public mThreadId:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mTooMuchLock:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mTotalThreadCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mUtime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJJZIJJJZLjava/lang/String;IIIILjava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "tid"    # I
    .param p5, "utime"    # J
    .param p7, "stime"    # J
    .param p9, "isDaemon"    # Z
    .param p10, "nice"    # I
    .param p11, "firstTime"    # J
    .param p13, "pidTotalTime"    # J
    .param p15, "deviceTotalTime"    # J
    .param p17, "isInBackGround"    # Z
    .param p18, "activity"    # Ljava/lang/String;
    .param p19, "pidFirstIoWaitCount"    # I
    .param p20, "pidFirstIoWaitTime"    # I
    .param p21, "pidFirstSchedWaitCount"    # I
    .param p22, "pidFirstSchedWaitSum"    # I
    .param p23, "stackTraceElements"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mId:I

    .line 80
    iput-object p2, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStatus:I

    .line 82
    iput p4, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mThreadId:I

    .line 83
    iput-wide p5, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastUtime:J

    .line 84
    iput-wide p7, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastStime:J

    .line 85
    iput-wide p5, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mUtime:J

    .line 86
    iput-wide p7, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStime:J

    .line 87
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mIsDaemon:Z

    .line 88
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mFirstTime:J

    .line 89
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mEndTime:J

    .line 90
    move/from16 v0, p10

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mNice:I

    .line 91
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstTotalTime:J

    .line 92
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceFirstTotalTime:J

    .line 93
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    .line 94
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceLastTotalTime:J

    .line 95
    if-eqz p17, :cond_0

    .line 96
    iget v2, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBackGroundCpuTime:I

    int-to-long v2, v2

    add-long v4, p5, p7

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBackGroundCpuTime:I

    .line 98
    :cond_0
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mFirstActivity:Ljava/lang/String;

    .line 99
    move/from16 v0, p19

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstIoWaitCount:I

    .line 100
    move/from16 v0, p20

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstIoWaitTime:I

    .line 101
    move/from16 v0, p21

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstSchedWaitCount:I

    .line 102
    move/from16 v0, p22

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstSchedWaitSum:I

    .line 103
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStackTraceElements:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public onBootEnd()V
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStime:J

    iget-wide v2, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mUtime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBootCpuTime:J

    .line 145
    iget-short v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInPid:S

    iput-short v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBootMaxPercentInPid:S

    .line 146
    iget-short v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInDevice:S

    iput-short v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBootMaxPercentInDevice:S

    .line 147
    iget-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidBootTotalTime:J

    .line 148
    iget-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceLastTotalTime:J

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceBootTotalTime:J

    .line 149
    return-void
.end method

.method public updateThread(IJJJJJIZ)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "utime"    # J
    .param p4, "stime"    # J
    .param p6, "endTime"    # J
    .param p8, "pidTotalTime"    # J
    .param p10, "deviceTotalTime"    # J
    .param p12, "priority"    # I
    .param p13, "isInBackGround"    # Z

    .prologue
    .line 107
    iput p1, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStatus:I

    .line 108
    iget-wide v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mUtime:J

    iput-wide v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastUtime:J

    .line 109
    iget-wide v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStime:J

    iput-wide v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastStime:J

    .line 110
    iput-wide p2, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mUtime:J

    .line 111
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStime:J

    .line 112
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mEndTime:J

    .line 113
    move/from16 v0, p12

    iput v0, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mNice:I

    .line 114
    if-eqz p13, :cond_0

    .line 115
    iget v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBackGroundCpuTime:I

    int-to-long v6, v6

    add-long v8, p2, p4

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastUtime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastStime:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mBackGroundCpuTime:I

    .line 118
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p8, v6

    if-lez v6, :cond_4

    .line 119
    add-long v6, p2, p4

    iget-wide v8, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastUtime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mLastStime:J

    sub-long v2, v6, v8

    .line 120
    .local v2, "interval":J
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    div-long v4, v6, p8

    .line 121
    .local v4, "percent":J
    const-wide/16 v6, 0x64

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 122
    const-wide/16 v4, 0x64

    .line 124
    :cond_1
    long-to-int v6, v4

    iput v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuPercentInPid:I

    .line 125
    iget-short v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInPid:S

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    .line 126
    long-to-int v6, v4

    int-to-short v6, v6

    iput-short v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInPid:S

    .line 128
    :cond_2
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    div-long v4, v6, p10

    .line 129
    const-wide/16 v6, 0x64

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 130
    const-wide/16 v4, 0x64

    .line 132
    :cond_3
    long-to-int v6, v4

    iput v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mCpuPercentInDevice:I

    .line 133
    iget-short v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInDevice:S

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_4

    .line 134
    long-to-int v6, v4

    int-to-short v6, v6

    iput-short v6, p0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInDevice:S

    .line 141
    .end local v2    # "interval":J
    .end local v4    # "percent":J
    :cond_4
    return-void
.end method
