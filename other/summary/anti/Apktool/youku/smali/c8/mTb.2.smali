.class public final Lc8/mTb;
.super Ljava/lang/Object;
.source "RunningStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lTb;
    }
.end annotation


# static fields
.field public static final STARTUP_STATE_CRASH_TOO_MANY:I = 0x10

.field public static final STARTUP_STATE_NORMAL:I = 0x0

.field public static final STARTUP_STATE_STARTUP_TOO_FAST:I = 0x1


# instance fields
.field mContext:Landroid/content/Context;

.field mLastRunningState:Lc8/lTb;

.field mMonitorFile:Ljava/io/File;

.field mRunningState:Lc8/lTb;

.field mStorageManager:Lc8/rTb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLc8/rTb;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "startupTime"    # J
    .param p8, "storageManager"    # Lc8/rTb;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/mTb;->mContext:Landroid/content/Context;

    .line 29
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/mTb;->mStorageManager:Lc8/rTb;

    .line 30
    new-instance v3, Lc8/lTb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lc8/lTb;-><init>(Lc8/mTb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    .line 31
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mStorageManager:Lc8/rTb;

    const-string/jumbo v4, "STARTUP_MONITOR"

    invoke-virtual {v3, v4}, Lc8/rTb;->getProcessTombstoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/mTb;->mMonitorFile:Ljava/io/File;

    .line 33
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mMonitorFile:Ljava/io/File;

    invoke-static {v3}, Lc8/vTb;->readLineAndDel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 34
    .local v14, "strStatupState":Ljava/lang/String;
    invoke-static {v14}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    new-instance v13, Lc8/lTb;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lc8/lTb;-><init>(Lc8/mTb;)V

    .line 37
    .local v13, "lastRunningState":Lc8/lTb;
    :try_start_0
    invoke-virtual {v13, v14}, Lc8/lTb;->deserialize(Ljava/lang/String;)V

    .line 38
    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v13    # "lastRunningState":Lc8/lTb;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    if-eqz v3, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v4, v3, Lc8/lTb;->mElapsedRealtime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v6, v3, Lc8/lTb;->mElapsedRealtime:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    const/4 v2, 0x1

    .line 48
    .local v2, "deviceRestart":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mTotalStartCount:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mTotalStartCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mTotalStartCount:I

    .line 50
    if-nez v2, :cond_1

    .line 51
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount:I

    .line 53
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v4, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v6, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 54
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount1Minute:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount1Minute:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount1Minute:I

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount5Minute:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount5Minute:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount5Minute:I

    .line 56
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount1Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    .line 57
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount24Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    .line 74
    .end local v2    # "deviceRestart":Z
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lc8/mTb;->flushRunningState()V

    .line 75
    return-void

    .line 39
    .restart local v13    # "lastRunningState":Lc8/lTb;
    :catch_0
    move-exception v12

    .line 40
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "lastRunningState deserialize"

    invoke-static {v3, v12}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 46
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "lastRunningState":Lc8/lTb;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 58
    .restart local v2    # "deviceRestart":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v4, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v6, 0x493e0

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v6, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v8, 0x493e0

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount5Minute:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount5Minute:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount5Minute:I

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount1Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount24Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    goto :goto_2

    .line 63
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v4, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v6, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 65
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount1Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount1Hour:I

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount24Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    goto/16 :goto_2

    .line 67
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v4, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v6, v3, Lc8/lTb;->mElapsedRealtime:J

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget v5, v5, Lc8/lTb;->mContinuousStartCount24Hour:I

    add-int/2addr v4, v5

    iput v4, v3, Lc8/lTb;->mContinuousStartCount24Hour:I

    goto/16 :goto_2
.end method

.method private declared-synchronized flushRunningState()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/mTb;->mMonitorFile:Ljava/io/File;

    iget-object v1, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    invoke-virtual {v1}, Lc8/lTb;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vTb;->writeFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method analyzeStartupState(Lc8/OSb;)V
    .locals 6
    .param p1, "startupStateAnalyzeCallback"    # Lc8/OSb;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, "startupState":I
    iget-object v1, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v1, v1, Lc8/lTb;->mContinuousStartCount1Minute:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget v1, v1, Lc8/lTb;->mContinuousStartCount5Minute:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 86
    :cond_0
    or-int/lit8 v0, v0, 0x10

    .line 90
    :cond_1
    iget-object v1, p0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-wide v2, v1, Lc8/lTb;->mElapsedRealtime:J

    iget-object v1, p0, Lc8/mTb;->mLastRunningState:Lc8/lTb;

    iget-wide v4, v1, Lc8/lTb;->mElapsedRealtime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 92
    or-int/lit8 v0, v0, 0x1

    .line 95
    :cond_2
    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p1, v0}, Lc8/OSb;->onComplete(I)V

    .line 98
    :cond_3
    return-void
.end method

.method public refreshAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iget-object v0, v0, Lc8/lTb;->mAppVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lc8/mTb;->mRunningState:Lc8/lTb;

    iput-object p1, v0, Lc8/lTb;->mAppVersion:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lc8/mTb;->flushRunningState()V

    .line 109
    :cond_0
    return-void
.end method
