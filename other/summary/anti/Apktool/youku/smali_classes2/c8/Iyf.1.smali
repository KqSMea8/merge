.class public Lc8/Iyf;
.super Ljava/lang/Object;
.source "PairingThrottlingScheduler.java"

# interfaces
.implements Lc8/Lyf;
.implements Lc8/Pyf;
.implements Lc8/yyf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hyf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/yyf",
        "<",
        "Lc8/zyf;",
        ">;",
        "Lc8/Lyf;",
        "Lc8/Pyf;"
    }
.end annotation


# static fields
.field private static final AUTO_DEGRADE_EXPIRED_COUNT:I = 0x3


# instance fields
.field private mCurrentRunning:I

.field private mDegradationListener:Lc8/Hyf;

.field private final mExpiredNanos:J

.field private mExpiredTotal:I

.field private final mHostScheduler:Lc8/Nyf;

.field private mLastClearTime:J

.field private mMaxRunningCount:I

.field private final mProduceTimeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempExpiredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitProduceActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/Kyf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nyf;II)V
    .locals 4
    .param p1, "hostScheduler"    # Lc8/Nyf;
    .param p2, "maxConcurrentCount"    # I
    .param p3, "expiredMillis"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/Iyf;->mHostScheduler:Lc8/Nyf;

    .line 38
    iput p2, p0, Lc8/Iyf;->mMaxRunningCount:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Iyf;->mTempExpiredList:Ljava/util/List;

    .line 42
    int-to-long v0, p3

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Iyf;->mExpiredNanos:J

    .line 43
    return-void
.end method

.method private checkRunningCount()V
    .locals 5

    .prologue
    .line 214
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Kyf;

    .line 216
    .local v2, "ourParentAction":Lc8/Kyf;
    :goto_0
    const/4 v1, 0x0

    .line 217
    .local v1, "nextAction":Lc8/Kyf;
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-direct {p0}, Lc8/Iyf;->clearExpiredPairs()V

    .line 219
    iget v3, p0, Lc8/Iyf;->mCurrentRunning:I

    iget v4, p0, Lc8/Iyf;->mMaxRunningCount:I

    if-ge v3, v4, :cond_0

    .line 220
    iget-object v3, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/Kyf;

    move-object v1, v0

    .line 222
    :cond_0
    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0, v1}, Lc8/Iyf;->countBeforeScheduling(Lc8/Kyf;)V

    .line 225
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v1, p0}, Lc8/Kyf;->unregisterCancelListener(Lc8/yyf;)V

    .line 233
    iget-object v3, p0, Lc8/Iyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v3, v1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 235
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 237
    :cond_2
    return-void
.end method

.method private declared-synchronized clearExpiredPairs()V
    .locals 18

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 113
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/Iyf;->mLastClearTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v14, v8, v14

    const-wide/32 v16, 0x1c9c380

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/Iyf;->mLastClearTime:J

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 121
    .local v10, "size":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 123
    .local v6, "nanoTime":J
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v10, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 125
    .local v12, "value":Ljava/lang/Long;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v6, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Iyf;->mExpiredNanos:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mTempExpiredList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v12    # "value":Ljava/lang/Long;
    :cond_3
    const/4 v5, 0x0

    .line 131
    .local v5, "shouldCheckRunning":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    .local v2, "currExpiredSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mTempExpiredList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 135
    .local v11, "target":I
    const-string/jumbo v13, "RxSysLog"

    const-string/jumbo v14, "[PairingThrottling] remove expired pair, id=%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lc8/Iyf;->updateRunningStatus(I)Z

    move-result v13

    if-nez v13, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const/4 v5, 0x1

    .line 133
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 140
    .end local v11    # "target":I
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Iyf;->mExpiredTotal:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_7

    .line 141
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Iyf;->mExpiredTotal:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Lc8/Iyf;->mExpiredTotal:I

    .line 142
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Iyf;->mExpiredTotal:I

    const/4 v14, 0x3

    if-lt v13, v14, :cond_7

    .line 143
    const v13, 0x7fffffff

    move-object/from16 v0, p0

    iput v13, v0, Lc8/Iyf;->mMaxRunningCount:I

    .line 144
    const-string/jumbo v13, "RxSysLog"

    const-string/jumbo v14, "[PairingThrottling] auto degrade to unlimited scheduler, expired total=%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Iyf;->mExpiredTotal:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mDegradationListener:Lc8/Hyf;

    if-eqz v13, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Iyf;->mDegradationListener:Lc8/Hyf;

    invoke-interface {v13}, Lc8/Hyf;->onDegrade2Unlimited()V

    .line 151
    :cond_7
    if-eqz v5, :cond_0

    .line 152
    invoke-direct/range {p0 .. p0}, Lc8/Iyf;->checkRunningCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 112
    .end local v2    # "currExpiredSize":I
    .end local v3    # "i":I
    .end local v4    # "k":I
    .end local v5    # "shouldCheckRunning":Z
    .end local v6    # "nanoTime":J
    .end local v8    # "now":J
    .end local v10    # "size":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private declared-synchronized countBeforeScheduling(Lc8/Kyf;)V
    .locals 4
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lc8/Kyf;->getContextId()I

    move-result v0

    .line 177
    .local v0, "ctxId":I
    if-gtz v0, :cond_1

    .line 178
    iget v1, p0, Lc8/Iyf;->mCurrentRunning:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Iyf;->mCurrentRunning:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lc8/Kyf;->isProduceAction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget v1, p0, Lc8/Iyf;->mCurrentRunning:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Iyf;->mCurrentRunning:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "ctxId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isValidConsumeAction(Lc8/Kyf;)Z
    .locals 1
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 107
    invoke-virtual {p1}, Lc8/Kyf;->getContextId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lc8/Kyf;->isProduceAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lc8/Kyf;->isConsumeAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRunningStatus(I)Z
    .locals 2
    .param p1, "ctxId"    # I

    .prologue
    const/4 v0, 0x1

    .line 198
    monitor-enter p0

    .line 199
    if-gtz p1, :cond_0

    .line 200
    :try_start_0
    iget v1, p0, Lc8/Iyf;->mCurrentRunning:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc8/Iyf;->mCurrentRunning:I

    .line 201
    monitor-exit p0

    .line 210
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lc8/Iyf;->mProduceTimeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    iget v1, p0, Lc8/Iyf;->mCurrentRunning:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc8/Iyf;->mCurrentRunning:I

    .line 207
    monitor-exit p0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public completePairActions(I)V
    .locals 1
    .param p1, "ctxId"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lc8/Iyf;->updateRunningStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lc8/Iyf;->checkRunningCount()V

    .line 194
    :cond_0
    return-void
.end method

.method public declared-synchronized getQueueSize()I
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Iyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->getStatus()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Iyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->isScheduleMainThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActionFinished(Lc8/Kyf;)V
    .locals 2
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 256
    invoke-virtual {p1}, Lc8/Kyf;->getContextId()I

    move-result v0

    .line 257
    .local v0, "ctxId":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Lc8/Kyf;->isConsumeAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    invoke-direct {p0, v0}, Lc8/Iyf;->updateRunningStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0}, Lc8/Iyf;->checkRunningCount()V

    .line 263
    :cond_1
    return-void
.end method

.method public onCancel(Lc8/zyf;)V
    .locals 8
    .param p1, "request"    # Lc8/zyf;

    .prologue
    .line 48
    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p1}, Lc8/zyf;->getId()I

    move-result v1

    .line 50
    .local v1, "rid":I
    const/4 v2, 0x0

    .line 52
    .local v2, "target":Lc8/Kyf;
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v3, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kyf;

    .line 55
    .local v0, "action":Lc8/Kyf;
    invoke-virtual {v0}, Lc8/Kyf;->getContextId()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 56
    move-object v2, v0

    .line 61
    .end local v0    # "action":Lc8/Kyf;
    :cond_1
    if-eqz v2, :cond_2

    .line 62
    iget-object v3, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2}, Lc8/Kyf;->cancelActing()V

    .line 68
    invoke-virtual {v2, p0}, Lc8/Kyf;->unregisterCancelListener(Lc8/yyf;)V

    .line 69
    const-string/jumbo v3, "RxSysLog"

    const-string/jumbo v4, "[PairingThrottling] ID=%d cancelled before scheduling the action in queue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .end local v1    # "rid":I
    .end local v2    # "target":Lc8/Kyf;
    :cond_3
    return-void

    .line 64
    .restart local v1    # "rid":I
    .restart local v2    # "target":Lc8/Kyf;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public schedule(Lc8/Kyf;)V
    .locals 4
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 76
    invoke-virtual {p1, p0}, Lc8/Kyf;->setBranchActionListener(Lc8/Lyf;)V

    .line 78
    invoke-direct {p0, p1}, Lc8/Iyf;->isValidConsumeAction(Lc8/Kyf;)Z

    move-result v0

    .line 79
    .local v0, "isConsume":Z
    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lc8/Kyf;->isProduceAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-direct {p0}, Lc8/Iyf;->clearExpiredPairs()V

    .line 90
    :cond_0
    if-nez v0, :cond_1

    iget v2, p0, Lc8/Iyf;->mCurrentRunning:I

    iget v3, p0, Lc8/Iyf;->mMaxRunningCount:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lc8/Iyf;->mWaitProduceActions:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 91
    .local v1, "scheduleNow":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 92
    invoke-direct {p0, p1}, Lc8/Iyf;->countBeforeScheduling(Lc8/Kyf;)V

    .line 96
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v1, :cond_2

    .line 101
    iget-object v2, p0, Lc8/Iyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v2, p1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 103
    :cond_2
    return-void

    .line 90
    .end local v1    # "scheduleNow":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    .restart local v1    # "scheduleNow":Z
    :cond_4
    :try_start_1
    invoke-virtual {p1, p0}, Lc8/Kyf;->registerCancelListener(Lc8/yyf;)V

    goto :goto_1

    .line 96
    .end local v1    # "scheduleNow":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDegradationListener(Lc8/Hyf;)V
    .locals 0
    .param p1, "degradationListener"    # Lc8/Hyf;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/Iyf;->mDegradationListener:Lc8/Hyf;

    .line 267
    return-void
.end method

.method public declared-synchronized setMaxRunningCount(I)V
    .locals 3
    .param p1, "maxRunningCount"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget v1, p0, Lc8/Iyf;->mExpiredTotal:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget v1, p0, Lc8/Iyf;->mMaxRunningCount:I

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 165
    .local v0, "toCheck":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 166
    iput p1, p0, Lc8/Iyf;->mMaxRunningCount:I

    .line 168
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    :try_start_2
    invoke-direct {p0}, Lc8/Iyf;->checkRunningCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :cond_1
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "toCheck":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
