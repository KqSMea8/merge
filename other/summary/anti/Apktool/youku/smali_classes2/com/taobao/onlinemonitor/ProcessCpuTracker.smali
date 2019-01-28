.class public Lcom/taobao/onlinemonitor/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final Debug:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field public static final PROCESS_STATS_FORMAT:[I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field static final PROCESS_STATS_FORMAT_NAME:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STARTTIME:I = 0x5

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_THREADCOUNT:I = 0x4

.field static final PROCESS_STAT_UTIME:I = 0x2

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field static final SYSTEM_CPU_FORMAT:[I

.field static final TAG:Ljava/lang/String; = "ProcessCpu"


# instance fields
.field mBaseIdleTime:J

.field mBaseIoWaitTime:J

.field mBaseIrqTime:J

.field mBaseSoftIrqTime:J

.field mBaseSystemTime:J

.field mBaseUserTime:J

.field public mCpuCount:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mIoWaitTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mJiffyMillis:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastCheckTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final mLoadAverageData:[F
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mLoadAverageDataTemp:[F

.field public mMajorFault:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mMyPidPercent:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidJiffyTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mPidRunCpuTime:J

.field public mPidRunCpuTimeInterval:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mPidStartTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mPidStatFile:Ljava/lang/String;

.field mProcessBaseSystemTime:J

.field mProcessBaseUserTime:J

.field mProcessRelSystemTime:I

.field mProcessRelUserTime:I

.field public mProcessSystemTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mProcessUserTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mReadProcFile:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mRelIdleTime:I

.field public mRelIoWaitTime:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mRelIrqTime:I

.field mRelSoftIrqTime:I

.field mRelSystemTime:I

.field mRelUserTime:I

.field final mStatsData:[J

.field final mSysCpu:[J

.field mSystemIoWaitPercent:F

.field public mSystemRunCpuTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field mSystemRunCpuTimeInterval:J

.field public mSystemTotalCpuTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mSystemTotalCpuTimeInterval:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mThreadCount:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mTotalIoWaitPercent:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mTotalSysPercent:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1020

    aput v2, v0, v1

    sput-object v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT_NAME:[I

    .line 39
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    return-void

    .line 39
    .line 66
    .line 77
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 14
    .param p1, "pid"    # I

    .prologue
    const/4 v10, 0x4

    const/16 v13, 0xa

    const/4 v9, 0x3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v8, 0x6

    new-array v8, v8, [J

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    .line 139
    const/4 v8, 0x7

    new-array v8, v8, [J

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    .line 140
    new-array v8, v9, [F

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    .line 141
    new-array v8, v9, [F

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageDataTemp:[F

    .line 144
    iput v10, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mCpuCount:I

    .line 150
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/stat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    .line 151
    const-class v8, Landroid/os/Process;

    const-string/jumbo v9, "readProcFile"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [I

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, [J

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, [F

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    .line 152
    iget-object v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    :try_start_1
    sget v8, Lc8/msf;->sApiLevel:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    iget v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    if-nez v8, :cond_1

    .line 159
    const-string/jumbo v8, "libcore.io.Libcore"

    invoke-static {v8}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v8, "libcore.io.Os"

    invoke-static {v8}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 161
    .local v6, "oszz":Ljava/lang/Class;
    const-string/jumbo v8, "os"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 164
    .local v3, "os":Ljava/lang/Object;
    const-string/jumbo v8, "sysconf"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 165
    .local v7, "sysconf":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 166
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v3, v8}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 167
    .local v4, "jiffyHz":J
    const-wide/16 v8, 0x3e8

    div-long/2addr v8, v4

    long-to-int v8, v8

    iput v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    .line 171
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "os":Ljava/lang/Object;
    .end local v4    # "jiffyHz":J
    .end local v6    # "oszz":Ljava/lang/Class;
    .end local v7    # "sysconf":Ljava/lang/reflect/Method;
    :goto_1
    iget v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    if-nez v8, :cond_0

    .line 172
    const/16 v8, 0xa

    iput v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :cond_0
    :goto_2
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v8, 0xa

    :try_start_2
    iput v8, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 174
    :catch_1
    move-exception v1

    .line 175
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    iput v13, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    goto :goto_2
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


# virtual methods
.method public getProcInfo(II[Ljava/lang/String;[J[F)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "outStrings"    # [Ljava/lang/String;
    .param p4, "outLongs"    # [J
    .param p5, "outfloats"    # [F
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 197
    const/4 v1, 0x1

    .line 199
    .local v1, "invokeRet":Z
    if-nez p2, :cond_2

    .line 200
    if-eqz p4, :cond_0

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 204
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 205
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/comm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT_NAME:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 223
    :cond_1
    :goto_0
    return v1

    .line 209
    :cond_2
    if-eqz p4, :cond_3

    .line 210
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 213
    :cond_3
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 214
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/comm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT_NAME:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method loadAvgages()V
    .locals 8

    .prologue
    const/high16 v7, 0x43480000    # 200.0f

    .line 228
    iget-object v1, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageDataTemp:[F

    .line 230
    .local v1, "loadAverages":[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    aput v3, v1, v2

    .line 231
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 232
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 233
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "/proc/loadavg"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageDataTemp:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageDataTemp:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageDataTemp:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v1, v4

    aput v4, v2, v3

    .line 239
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v1, v4

    aput v4, v2, v3

    .line 240
    iget-object v2, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v1, v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadTaskTime(I)J
    .locals 11
    .param p1, "tid"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 183
    const/4 v3, 0x6

    :try_start_0
    new-array v2, v3, [J

    .line 184
    .local v2, "statsData":[J
    iget-object v3, p0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/task/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/stat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 186
    .local v1, "invokeRet":Z
    if-nez v1, :cond_0

    .line 193
    .end local v1    # "invokeRet":Z
    .end local v2    # "statsData":[J
    :goto_0
    return-wide v4

    .line 189
    .restart local v1    # "invokeRet":Z
    .restart local v2    # "statsData":[J
    :cond_0
    const/4 v3, 0x2

    aget-wide v6, v2, v3

    const/4 v3, 0x3

    aget-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v6

    goto :goto_0

    .line 190
    .end local v1    # "invokeRet":Z
    .end local v2    # "statsData":[J
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public update()I
    .locals 26

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/16 v22, 0x0

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "/proc/stat"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v13, v0, v1}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 257
    .local v5, "invokeRet":Z
    if-nez v5, :cond_0

    .line 258
    const/4 v12, 0x0

    .line 360
    .end local v5    # "invokeRet":Z
    :goto_0
    return v12

    .line 260
    .restart local v5    # "invokeRet":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    const/16 v22, 0x0

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v13, v0, v1}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->loadAvgages()V

    .line 263
    const/4 v12, 0x0

    .line 264
    .local v12, "percent":I
    if-eqz v5, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    const/16 v22, 0x2

    aget-wide v22, v13, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    const/16 v22, 0x3

    aget-wide v22, v13, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    const/16 v22, 0x1

    aget-wide v22, v13, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMajorFault:J

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    const/16 v22, 0x4

    aget-wide v22, v13, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mThreadCount:J

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mStatsData:[J

    const/16 v22, 0x5

    aget-wide v22, v13, v22

    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    int-to-long v0, v13

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStartTime:J

    .line 271
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseUserTime:J

    move-wide/from16 v24, v0

    cmp-long v13, v22, v24

    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseSystemTime:J

    move-wide/from16 v24, v0

    cmp-long v13, v22, v24

    if-ltz v13, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseUserTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelUserTime:I

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseSystemTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelSystemTime:I

    .line 281
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidRunCpuTime:J

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x0

    aget-wide v22, v13, v22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v24, 0x1

    aget-wide v24, v13, v24

    add-long v20, v22, v24

    .line 286
    .local v20, "usertime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x2

    aget-wide v16, v13, v22

    .line 288
    .local v16, "systemtime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x3

    aget-wide v6, v13, v22

    .line 290
    .local v6, "idletime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x4

    aget-wide v8, v13, v22

    .line 291
    .local v8, "iowaittime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x5

    aget-wide v10, v13, v22

    .line 292
    .local v10, "irqtime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSysCpu:[J

    const/16 v22, 0x6

    aget-wide v14, v13, v22

    .line 293
    .local v14, "softirqtime":J
    add-long v22, v20, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    .line 294
    add-long v22, v20, v16

    add-long v22, v22, v6

    add-long v22, v22, v8

    add-long v22, v22, v10

    add-long v22, v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    .line 295
    long-to-float v13, v8

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v13, v13, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v13, v13, v22

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemIoWaitPercent:F

    .line 296
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mIoWaitTime:J

    .line 297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseUserTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v20, v22

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSystemTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v16, v22

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIoWaitTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v8, v22

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIrqTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v10, v22

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSoftIrqTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v14, v22

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIdleTime:J

    move-wide/from16 v22, v0

    cmp-long v13, v6, v22

    if-ltz v13, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseUserTime:J

    move-wide/from16 v22, v0

    sub-long v22, v20, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelUserTime:I

    .line 301
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSystemTime:J

    move-wide/from16 v22, v0

    sub-long v22, v16, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSystemTime:I

    .line 302
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIoWaitTime:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 303
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIrqTime:J

    move-wide/from16 v22, v0

    sub-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIrqTime:I

    .line 304
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSoftIrqTime:J

    move-wide/from16 v22, v0

    sub-long v22, v14, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIdleTime:J

    move-wide/from16 v22, v0

    sub-long v22, v6, v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIdleTime:I

    .line 307
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSystemTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIrqTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSoftIrqTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIdleTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    int-to-long v0, v13

    move-wide/from16 v18, v0

    .line 311
    .local v18, "totalTime":J
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTimeInterval:J

    .line 312
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSystemTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTimeInterval:J

    .line 313
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseUserTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseSystemTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidRunCpuTimeInterval:J

    .line 315
    const-wide/16 v22, 0x1

    cmp-long v13, v18, v22

    if-lez v13, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelUserTime:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelSystemTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    mul-int/lit8 v13, v13, 0x64

    int-to-long v0, v13

    move-wide/from16 v22, v0

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v12, v0

    .line 317
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSystemTime:I

    move/from16 v22, v0

    add-int v13, v13, v22

    mul-int/lit8 v13, v13, 0x64

    int-to-long v0, v13

    move-wide/from16 v22, v0

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    .line 318
    move-object/from16 v0, p0

    iput v12, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    .line 319
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    mul-int/lit8 v13, v13, 0x64

    int-to-long v0, v13

    move-wide/from16 v22, v0

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v13, v0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalIoWaitPercent:I

    .line 321
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    const/16 v22, 0x64

    move/from16 v0, v22

    if-le v13, v0, :cond_1

    .line 322
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v13, v0, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    .line 344
    .end local v18    # "totalTime":J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseUserTime:J

    .line 345
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessBaseSystemTime:J

    .line 346
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseUserTime:J

    .line 347
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSystemTime:J

    .line 348
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 349
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIrqTime:J

    .line 350
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 351
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mBaseIdleTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 354
    .end local v5    # "invokeRet":Z
    .end local v6    # "idletime":J
    .end local v8    # "iowaittime":J
    .end local v10    # "irqtime":J
    .end local v12    # "percent":I
    .end local v14    # "softirqtime":J
    .end local v16    # "systemtime":J
    .end local v20    # "usertime":J
    :catch_0
    move-exception v4

    .line 355
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 277
    .restart local v5    # "invokeRet":Z
    .restart local v12    # "percent":I
    :cond_4
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelUserTime:I

    .line 278
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessRelSystemTime:I

    goto/16 :goto_1

    .line 337
    .restart local v6    # "idletime":J
    .restart local v8    # "iowaittime":J
    .restart local v10    # "irqtime":J
    .restart local v14    # "softirqtime":J
    .restart local v16    # "systemtime":J
    .restart local v20    # "usertime":J
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelUserTime:I

    .line 338
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSystemTime:I

    .line 339
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 340
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIrqTime:I

    .line 341
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 342
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIdleTime:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 358
    .end local v5    # "invokeRet":Z
    .end local v6    # "idletime":J
    .end local v8    # "iowaittime":J
    .end local v10    # "irqtime":J
    .end local v12    # "percent":I
    .end local v14    # "softirqtime":J
    .end local v16    # "systemtime":J
    .end local v20    # "usertime":J
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "readProcFile : "

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v22, ", mPidStatFile : "

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3
.end method
