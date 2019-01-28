.class public Lc8/Grf;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Drf;,
        Lc8/Frf;,
        Lc8/Erf;
    }
.end annotation


# instance fields
.field volatile mActivity:Landroid/app/Activity;

.field mActivityDestroyTime:J

.field mActivityName:Ljava/lang/String;

.field mActivityOncreateTime:J

.field mActivityPausedTime:J

.field mActivityResumeTime:J

.field mActivityStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActivityStartTime:J

.field mActivityStopedTime:J

.field mBootActivityIndex:S

.field mCreateIndex:I

.field mCreateUsedTime:I

.field volatile mDecorView:Landroid/view/View;

.field mEventCount:I

.field mEventUsedTime:I

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHasMoved:Z

.field mIsBootFinished:Z

.field mIsFirstMove:Z

.field mIsHardWareStatus:S

.field mIsOnCreated:Z

.field mLoadTimeCalculate:Lc8/Prf;

.field mMaxDelayedTime:J

.field mOnLineMonitor:Lc8/msf;

.field mOnPreDrawListener:Lc8/Erf;

.field mSmoothCalculate:Lc8/tsf;

.field volatile mStartCounter:S

.field mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-short v0, p0, Lc8/Grf;->mStartCounter:S

    .line 39
    iput-short v0, p0, Lc8/Grf;->mBootActivityIndex:S

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Grf;->mIsFirstMove:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    .line 74
    return-void
.end method


# virtual methods
.method getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    const-string/jumbo v1, ""

    .line 78
    .local v1, "name":Ljava/lang/String;
    instance-of v2, p1, Lc8/hsf;

    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v2, "ActivityName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object v1

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    iput-wide v10, p0, Lc8/Grf;->mActivityOncreateTime:J

    .line 98
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-nez v5, :cond_0

    .line 237
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v5, p0, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0, p1}, Lc8/Grf;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    .line 104
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v10, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v10, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 105
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_1

    .line 106
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v10, 0x0

    invoke-virtual {v5, p1, v10}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 108
    :cond_1
    iget-short v5, p0, Lc8/Grf;->mIsHardWareStatus:S

    const/4 v10, 0x3

    if-ge v5, v10, :cond_2

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    iget-object v5, v5, Lc8/Lrf;->mGpuName:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 109
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    invoke-virtual {v5, p1}, Lc8/Lrf;->getGpuInfo(Landroid/content/Context;)V

    .line 110
    iget-short v5, p0, Lc8/Grf;->mIsHardWareStatus:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, p0, Lc8/Grf;->mIsHardWareStatus:S

    .line 112
    :cond_2
    iget-boolean v5, p0, Lc8/Grf;->mIsBootFinished:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_11

    .line 113
    :cond_3
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    if-nez v5, :cond_5

    .line 114
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mMainThread:Ljava/lang/Thread;

    if-nez v5, :cond_4

    .line 115
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iput-object v10, v5, Lc8/msf;->mMainThread:Ljava/lang/Thread;

    .line 119
    :cond_4
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, v5, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    .line 121
    :try_start_0
    new-instance v5, Landroid/view/GestureDetector;

    iget-object v10, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v10, v10, Lc8/msf;->mApplicationContext:Landroid/content/Context;

    new-instance v11, Lc8/Drf;

    invoke-direct {v11, p0}, Lc8/Drf;-><init>(Lc8/Grf;)V

    invoke-direct {v5, v10, v11}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lc8/Grf;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    :goto_1
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->back2ForeChanged()V

    .line 127
    :cond_5
    sget-wide v10, Lc8/osf;->sFirstActivityTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-ltz v5, :cond_6

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_a

    .line 129
    :cond_6
    sget-object v5, Lc8/osf;->sColdBootCheck:Lc8/Hrf;

    if-eqz v5, :cond_7

    .line 130
    sget-object v5, Lc8/osf;->sColdBootCheck:Lc8/Hrf;

    invoke-virtual {v5}, Lc8/Hrf;->stopChecker()V

    .line 131
    const/4 v5, 0x0

    sput-object v5, Lc8/osf;->sColdBootCheck:Lc8/Hrf;

    .line 133
    :cond_7
    sget-wide v10, Lc8/osf;->sFirstActivityTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_8

    .line 135
    const/4 v5, 0x0

    iput-short v5, p0, Lc8/Grf;->mBootActivityIndex:S

    .line 136
    const/4 v5, 0x0

    sput-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    .line 137
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v10, 0x1

    iput-boolean v10, v5, Lc8/msf;->mIsInBootStep:Z

    .line 138
    const-string/jumbo v5, "0"

    sput-object v5, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    .line 139
    sget-object v5, Lc8/osf;->sBootCorrectAry:[Z

    if-eqz v5, :cond_8

    .line 140
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget-object v5, Lc8/osf;->sBootCorrectAry:[Z

    array-length v5, v5

    if-ge v4, v5, :cond_8

    .line 141
    sget-object v5, Lc8/osf;->sBootCorrectAry:[Z

    const/4 v10, 0x0

    aput-boolean v10, v5, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 146
    .end local v4    # "i":I
    :cond_8
    iget-wide v10, p0, Lc8/Grf;->mActivityOncreateTime:J

    sput-wide v10, Lc8/osf;->sFirstActivityTime:J

    .line 148
    sget-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    if-nez v5, :cond_9

    iget-wide v10, p0, Lc8/Grf;->mActivityOncreateTime:J

    sget-wide v12, Lc8/osf;->sLaunchTime:J

    sub-long/2addr v10, v12

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget v5, v5, Lc8/msf;->mColdBootOffsetTime:I

    int-to-long v12, v5

    cmp-long v5, v10, v12

    if-gtz v5, :cond_9

    .line 150
    const/4 v5, 0x1

    sput-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    .line 152
    :cond_9
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_a

    .line 154
    :try_start_1
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mNewTheadCountAyr:[I

    const/4 v10, 0x1

    iget-object v11, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v11, v11, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    const-class v12, Ljava/lang/Thread;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    aput v11, v5, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :cond_a
    :goto_3
    iget-short v5, p0, Lc8/Grf;->mBootActivityIndex:S

    sget-short v10, Lc8/osf;->sBootAcitvityCount:S

    if-ge v5, v10, :cond_b

    .line 162
    sget-object v5, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    iget-short v10, p0, Lc8/Grf;->mBootActivityIndex:S

    aget-object v0, v5, v10

    .line 163
    .local v0, "activityName":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 164
    sget-object v5, Lc8/osf;->sBootCorrectAry:[Z

    iget-short v10, p0, Lc8/Grf;->mBootActivityIndex:S

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 165
    const/4 v5, 0x0

    iput-boolean v5, p0, Lc8/Grf;->mIsBootFinished:Z

    .line 171
    .end local v0    # "activityName":Ljava/lang/String;
    :cond_b
    :goto_4
    iget-short v5, p0, Lc8/Grf;->mBootActivityIndex:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, p0, Lc8/Grf;->mBootActivityIndex:S

    .line 172
    iget-boolean v5, p0, Lc8/Grf;->mIsBootFinished:Z

    if-nez v5, :cond_11

    iget-short v5, p0, Lc8/Grf;->mBootActivityIndex:S

    sget-short v10, Lc8/osf;->sBootAcitvityCount:S

    if-ne v5, v10, :cond_11

    .line 173
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/Grf;->mIsBootFinished:Z

    .line 174
    invoke-static {}, Lc8/osf;->isBootCorrect()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v2, v10, v12

    .line 177
    .local v2, "bootTime":J
    sget-wide v6, Lc8/osf;->sLaunchTime:J

    .line 178
    .local v6, "useTime":J
    sget-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    if-nez v5, :cond_c

    .line 180
    sget-wide v6, Lc8/osf;->sFirstActivityTime:J

    .line 182
    :cond_c
    const-wide/16 v8, 0x0

    .line 183
    .local v8, "useTimeByPid":J
    sget-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    if-eqz v5, :cond_d

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v12, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidStartTime:J

    sub-long v8, v10, v12

    .line 187
    :cond_d
    sub-long v6, v2, v6

    .line 189
    sget-boolean v5, Lc8/osf;->sIsCodeBoot:Z

    if-eqz v5, :cond_e

    .line 190
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    sub-long v10, v8, v6

    long-to-int v10, v10

    iput v10, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->preparePidTime:I

    .line 193
    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_15

    cmp-long v5, v8, v6

    if-lez v5, :cond_15

    sub-long v10, v8, v6

    const-wide/16 v12, 0x1388

    cmp-long v5, v10, v12

    if-gtz v5, :cond_15

    .line 194
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->preparePidTime:I

    div-int/lit8 v5, v5, 0x2

    int-to-long v10, v5

    add-long/2addr v2, v10

    .line 195
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v5, v2, v3, v8, v9}, Lc8/msf;->onBootEnd(JJ)V

    .line 199
    :goto_5
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_f

    .line 201
    :try_start_2
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mNewTheadCountAyr:[I

    const/4 v10, 0x2

    iget-object v11, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v11, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v11, v11, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    const-class v12, Ljava/lang/Thread;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    aput v11, v5, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    :cond_f
    :goto_6
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v5, :cond_10

    .line 208
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->mHomeActivity:Ljava/lang/ref/WeakReference;

    .line 210
    :cond_10
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_11

    .line 211
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v5}, Lc8/Asf;->onBootStep1()V

    .line 222
    .end local v2    # "bootTime":J
    .end local v6    # "useTime":J
    .end local v8    # "useTimeByPid":J
    :cond_11
    :goto_7
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/Grf;->mIsOnCreated:Z

    .line 224
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v5, p1}, Lc8/msf;->onActivityCreate(Landroid/app/Activity;)V

    .line 226
    iget-object v5, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v5, :cond_12

    .line 227
    iget-object v5, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v5, p1}, Lc8/Prf;->onActivityCreated(Landroid/app/Activity;)V

    .line 230
    :cond_12
    iget-object v5, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v5, :cond_13

    .line 231
    iget-object v5, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v5, p1}, Lc8/tsf;->onActivityCreated(Landroid/app/Activity;)V

    .line 234
    :cond_13
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v10, 0x1

    invoke-virtual {v5, p1, v10}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "activityName":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/Grf;->mIsBootFinished:Z

    .line 168
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lc8/msf;->mIsInBootStep:Z

    goto/16 :goto_4

    .line 197
    .end local v0    # "activityName":Ljava/lang/String;
    .restart local v2    # "bootTime":J
    .restart local v6    # "useTime":J
    .restart local v8    # "useTimeByPid":J
    :cond_15
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v5, v2, v3, v6, v7}, Lc8/msf;->onBootEnd(JJ)V

    goto :goto_5

    .line 202
    :catch_1
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "bootTime":J
    .end local v6    # "useTime":J
    .end local v8    # "useTimeByPid":J
    :cond_16
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    const-wide/16 v12, 0x1388

    invoke-virtual {v5, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    iget-object v5, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lc8/msf;->mIsInBootStep:Z

    goto :goto_7

    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 580
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Grf;->mActivityDestroyTime:J

    .line 581
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, p1}, Lc8/msf;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 586
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    .line 589
    :cond_1
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {p0, p1}, Lc8/Grf;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Asf;->mDestroyedActivityName:Ljava/lang/String;

    .line 592
    :cond_2
    iget-object v0, p0, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Grf;->mActivityPausedTime:J

    .line 504
    invoke-virtual {p0, p1}, Lc8/Grf;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    .line 505
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Grf;->mIsOnCreated:Z

    .line 509
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-boolean v0, v0, Lc8/tsf;->mIsTouchDownMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-boolean v0, v0, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v0, :cond_2

    .line 511
    :cond_1
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v0}, Lc8/tsf;->stopSmoothSmCalculate()V

    .line 514
    :cond_2
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, p1}, Lc8/msf;->onActivityPause(Landroid/app/Activity;)V

    .line 518
    :cond_3
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v0, p1}, Lc8/Prf;->onActivityPaused(Landroid/app/Activity;)V

    .line 521
    :cond_4
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v0, :cond_5

    .line 522
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v0, p1}, Lc8/tsf;->onActivityPaused(Landroid/app/Activity;)V

    .line 524
    :cond_5
    iput-object v4, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    .line 526
    iput-object v4, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 527
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_6

    .line 528
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    .line 531
    :cond_6
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 264
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Grf;->mActivityResumeTime:J

    .line 265
    iput-object p1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    .line 266
    invoke-virtual {p0, p1}, Lc8/Grf;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, p1}, Lc8/msf;->onActivityResume(Landroid/app/Activity;)V

    .line 275
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    .line 279
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 573
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 373
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-nez v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, p0, Lc8/Grf;->mActivityStartTime:J

    .line 377
    sget-boolean v2, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lc8/Grf;->mIsOnCreated:Z

    if-nez v2, :cond_2

    .line 378
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 380
    :cond_2
    iget-boolean v2, p0, Lc8/Grf;->mIsOnCreated:Z

    if-eqz v2, :cond_a

    .line 381
    iget-wide v2, p0, Lc8/Grf;->mActivityStartTime:J

    iget-wide v4, p0, Lc8/Grf;->mActivityOncreateTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lc8/Grf;->mCreateUsedTime:I

    .line 387
    :goto_1
    iget-short v2, p0, Lc8/Grf;->mStartCounter:S

    if-nez v2, :cond_3

    .line 388
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v6, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isInBackGround:Z

    .line 389
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lc8/msf;->notifyBackForGroundListener(I)V

    .line 391
    :cond_3
    iget-short v2, p0, Lc8/Grf;->mStartCounter:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lc8/Grf;->mStartCounter:S

    .line 392
    instance-of v2, p1, Landroid/app/TabActivity;

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v2, v2, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v2, :cond_4

    .line 395
    invoke-virtual {p0, p1}, Lc8/Grf;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    .line 396
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v3, v2, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 399
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/Grf;->mDecorView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_2
    iget-object v2, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 407
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 408
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_5

    .line 409
    sget v2, Lc8/msf;->sApiLevel:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_b

    .line 410
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 411
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 416
    :goto_3
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mOnPreDrawListener:Lc8/Erf;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 418
    :cond_5
    iget v2, p0, Lc8/Grf;->mCreateIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/Grf;->mCreateIndex:I

    .line 419
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget v4, p0, Lc8/Grf;->mCreateIndex:I

    invoke-virtual {v3, v4}, Lc8/msf;->createOnGlobalLayoutListener(I)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iput-object v3, v2, Lc8/msf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 420
    iget-object v2, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v3, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget v4, p0, Lc8/Grf;->mCreateIndex:I

    invoke-virtual {v3, v4}, Lc8/Prf;->createOnGlobalLayoutListener(I)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iput-object v3, v2, Lc8/Prf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 422
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 424
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 427
    new-instance v2, Lc8/Erf;

    iget v3, p0, Lc8/Grf;->mCreateIndex:I

    invoke-direct {v2, p0, v3}, Lc8/Erf;-><init>(Lc8/Grf;I)V

    iput-object v2, p0, Lc8/Grf;->mOnPreDrawListener:Lc8/Erf;

    .line 428
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mOnPreDrawListener:Lc8/Erf;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 435
    :cond_6
    iget-boolean v2, p0, Lc8/Grf;->mIsOnCreated:Z

    if-eqz v2, :cond_7

    .line 436
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 437
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 438
    .local v0, "callBack":Landroid/view/Window$Callback;
    instance-of v2, v0, Lc8/Frf;

    if-nez v2, :cond_7

    .line 439
    new-instance v2, Lc8/Frf;

    invoke-direct {v2, p0, v0}, Lc8/Frf;-><init>(Lc8/Grf;Landroid/view/Window$Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 442
    .end local v0    # "callBack":Landroid/view/Window$Callback;
    .end local v1    # "win":Landroid/view/Window;
    :cond_7
    iget-object v2, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v2, :cond_8

    .line 443
    iget-object v2, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v3, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    invoke-virtual {v2, p1, v3}, Lc8/Prf;->onActivityStarted(Landroid/app/Activity;Landroid/view/View;)V

    .line 445
    :cond_8
    iget-object v2, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v2, :cond_9

    .line 446
    iget-object v2, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v2, p1}, Lc8/tsf;->onActivityStarted(Landroid/app/Activity;)V

    .line 448
    :cond_9
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 383
    :cond_a
    iput v6, p0, Lc8/Grf;->mCreateUsedTime:I

    goto/16 :goto_1

    .line 413
    :cond_b
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 414
    iget-object v2, p0, Lc8/Grf;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 535
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Grf;->mActivityStopedTime:J

    .line 536
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, p1, v4}, Lc8/msf;->doLifeCycleCheck(Landroid/app/Activity;I)V

    .line 541
    :cond_0
    iget-short v0, p0, Lc8/Grf;->mStartCounter:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lc8/Grf;->mStartCounter:S

    .line 542
    iget-short v0, p0, Lc8/Grf;->mStartCounter:S

    if-gez v0, :cond_1

    .line 543
    const/4 v0, 0x0

    iput-short v0, p0, Lc8/Grf;->mStartCounter:S

    .line 546
    :cond_1
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_5

    .line 547
    iget-short v0, p0, Lc8/Grf;->mStartCounter:S

    if-nez v0, :cond_4

    .line 549
    iput-object v5, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    .line 550
    iget-boolean v0, p0, Lc8/Grf;->mIsBootFinished:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v0, v0, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget v0, v0, Lc8/msf;->mBootActivityLoadTime:I

    if-gtz v0, :cond_3

    .line 551
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lc8/osf;->sBackInGroundOnBoot:Z

    .line 553
    :cond_3
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-object v0, v0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 554
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iput-object v5, v0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    .line 556
    :cond_4
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, p1}, Lc8/msf;->onActivityStopped(Landroid/app/Activity;)V

    .line 558
    :cond_5
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_6

    .line 559
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    .line 560
    iget-short v0, p0, Lc8/Grf;->mIsHardWareStatus:S

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    iget-object v0, v0, Lc8/Lrf;->mOnlineGLSurfaceView:Lc8/Jrf;

    if-eqz v0, :cond_6

    .line 562
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mHardWareInfo:Lc8/Lrf;

    invoke-virtual {v0}, Lc8/Lrf;->destroy()V

    .line 565
    :cond_6
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mProblemCheck:Lc8/rsf;

    invoke-virtual {v0}, Lc8/rsf;->checkQueuedWork()V

    .line 567
    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/Window$Callback;Landroid/view/MotionEvent;Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "callback"    # Landroid/view/Window$Callback;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 283
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 284
    const/4 v1, 0x0

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 287
    .local v2, "time1":J
    iget-object v8, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v8, :cond_2

    .line 288
    iget-object v8, p0, Lc8/Grf;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    .line 289
    iget-object v8, p0, Lc8/Grf;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    :cond_2
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 293
    .local v0, "action":I
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_2
    const/4 v1, 0x0

    .line 317
    .local v1, "ret":Z
    if-eqz p2, :cond_8

    .line 318
    invoke-interface {p1, p2}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 322
    :cond_3
    :goto_3
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v8, :cond_4

    .line 323
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iput-wide v2, v8, Lc8/msf;->mCheckAnrTime:J

    .line 324
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iput-wide v2, v8, Lc8/tsf;->mLastTouchTime:J

    .line 325
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v4, v8, v10

    .line 326
    .local v4, "time2":J
    sub-long v6, v4, v2

    .line 327
    .local v6, "used":J
    iget v8, p0, Lc8/Grf;->mEventCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lc8/Grf;->mEventCount:I

    .line 328
    iget v8, p0, Lc8/Grf;->mEventUsedTime:I

    int-to-long v8, v8

    add-long/2addr v8, v6

    long-to-int v8, v8

    iput v8, p0, Lc8/Grf;->mEventUsedTime:I

    .line 329
    iget-wide v8, p0, Lc8/Grf;->mMaxDelayedTime:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_4

    .line 330
    iput-wide v6, p0, Lc8/Grf;->mMaxDelayedTime:J

    .line 334
    .end local v4    # "time2":J
    .end local v6    # "used":J
    :cond_4
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 351
    :pswitch_0
    if-eqz v1, :cond_5

    iget-object v8, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lc8/Grf;->mHasMoved:Z

    if-nez v8, :cond_5

    .line 352
    iget-object v8, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v8}, Lc8/Prf;->stopOnClick()V

    .line 357
    :cond_5
    :pswitch_1
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lc8/msf;->mIsOnTouch:Z

    .line 358
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isTouchMode:Z

    .line 359
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-boolean v8, v8, Lc8/tsf;->mIsTouchDownMode:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-boolean v8, v8, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v8, :cond_0

    .line 360
    :cond_6
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v8, v2, v3}, Lc8/tsf;->onTouchUp(J)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "action":I
    .end local v1    # "ret":Z
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    goto :goto_1

    .line 295
    .restart local v0    # "action":I
    :pswitch_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/Grf;->mIsFirstMove:Z

    .line 296
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/Grf;->mHasMoved:Z

    .line 297
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isTouchMode:Z

    .line 298
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isActivityTouched:Z

    .line 303
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-object v9, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    invoke-virtual {v8, p2, v2, v3, v9}, Lc8/tsf;->onTouchDown(Landroid/view/MotionEvent;JLandroid/view/View;)V

    .line 304
    const/4 v8, 0x0

    iput v8, p0, Lc8/Grf;->mEventCount:I

    .line 305
    const/4 v8, 0x0

    iput v8, p0, Lc8/Grf;->mEventUsedTime:I

    .line 306
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lc8/Grf;->mMaxDelayedTime:J

    .line 307
    iget-object v8, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v8, v2, v3}, Lc8/msf;->onTouchDown(J)V

    goto/16 :goto_2

    .line 319
    .restart local v1    # "ret":Z
    :cond_8
    if-eqz p3, :cond_3

    .line 320
    invoke-interface {p1, p3}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_3

    .line 337
    :pswitch_3
    if-eqz p2, :cond_0

    .line 338
    iget-boolean v8, p0, Lc8/Grf;->mIsFirstMove:Z

    if-eqz v8, :cond_0

    .line 339
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v8, :cond_0

    .line 340
    iget-boolean v8, p0, Lc8/Grf;->mHasMoved:Z

    if-eqz v8, :cond_0

    .line 341
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/Grf;->mIsFirstMove:Z

    .line 342
    iget-object v8, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    invoke-virtual {v8, p2, v2, v3}, Lc8/tsf;->onTouchFirstMove(Landroid/view/MotionEvent;J)V

    goto/16 :goto_0

    .line 293
    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onFragmentCreate()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Grf;->mActivityOncreateTime:J

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Grf;->mIsOnCreated:Z

    .line 245
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/msf;->onActivityCreate(Landroid/app/Activity;)V

    .line 249
    :cond_2
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/Prf;->onActivityCreated(Landroid/app/Activity;)V

    .line 253
    :cond_3
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/tsf;->onActivityCreated(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onFragmentPaused()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/msf;->onActivityPause(Landroid/app/Activity;)V

    .line 491
    :cond_2
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/Prf;->onActivityPaused(Landroid/app/Activity;)V

    .line 494
    :cond_3
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/tsf;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onFragmentStarted()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lc8/Grf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Grf;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lc8/Prf;->onActivityStarted(Landroid/app/Activity;Landroid/view/View;)V

    .line 466
    :cond_2
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lc8/Grf;->mSmoothCalculate:Lc8/tsf;

    iget-object v1, p0, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/tsf;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setFragmentName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lc8/Grf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, p0, Lc8/Grf;->mActivityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityName:Ljava/lang/String;

    .line 479
    :cond_0
    return-void
.end method
