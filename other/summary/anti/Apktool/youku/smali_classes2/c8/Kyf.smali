.class public abstract Lc8/Kyf;
.super Ljava/lang/Object;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/Kyf;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MAX_REJECT_STACK_DEPTH:I = 0xa

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RECYCLING:I = 0x3

.field private static final STATE_RUNNING:I = 0x2

.field static sActionCallerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/Kyf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionPool:Lc8/Myf;

.field private mAllowedDirectRun:Z

.field private mBranchActionListener:Lc8/Lyf;

.field private mConsumer:Lc8/oyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/oyf",
            "<*+",
            "Lc8/zyf;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNotConsumeAction:Z

.field private mMasterActionListener:Lc8/Lyf;

.field private mPriority:I

.field private mRejectedStackDepth:Ljava/lang/Integer;

.field private mResultWrapper:Lc8/Jyf;

.field private mRunningThreadId:J

.field private mState:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(ILc8/oyf;Lc8/Jyf;)V
    .locals 1
    .param p1, "priority"    # I
    .param p3, "resultWrapper"    # Lc8/Jyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/oyf",
            "<*+",
            "Lc8/zyf;",
            ">;",
            "Lc8/Jyf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lc8/Kyf;->mPriority:I

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;)Lc8/Kyf;

    .line 35
    return-void
.end method

.method public constructor <init>(ILc8/oyf;Lc8/Jyf;Z)V
    .locals 1
    .param p1, "priority"    # I
    .param p3, "resultWrapper"    # Lc8/Jyf;
    .param p4, "isAllowedDirectRun"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/oyf",
            "<*+",
            "Lc8/zyf;",
            ">;",
            "Lc8/Jyf;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lc8/Kyf;->mPriority:I

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;Z)Lc8/Kyf;

    .line 39
    return-void
.end method

.method private declared-synchronized getRequest()Lc8/zyf;
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canRunDirectly()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Kyf;->mayStackOverflowAfterRejected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Kyf;->mAllowedDirectRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized cancelActing()V
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    iget-object v0, v0, Lc8/Jyf;->newResult:Ljava/lang/Object;

    instance-of v0, v0, Lc8/iyf;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    iget-object v0, v0, Lc8/Jyf;->newResult:Ljava/lang/Object;

    check-cast v0, Lc8/iyf;

    invoke-interface {v0}, Lc8/iyf;->release()V

    .line 225
    :cond_0
    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->onCancellation()V

    .line 227
    iget-object v0, p0, Lc8/Kyf;->mActionPool:Lc8/Myf;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lc8/Kyf;->mActionPool:Lc8/Myf;

    invoke-virtual {v0, p0}, Lc8/Myf;->recycle(Lc8/Kyf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Lc8/Kyf;)I
    .locals 6
    .param p1, "another"    # Lc8/Kyf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-virtual {p1}, Lc8/Kyf;->getPriority()I

    move-result v0

    .line 112
    .local v0, "anotherPriority":I
    invoke-virtual {p0}, Lc8/Kyf;->getPriority()I

    move-result v2

    sub-int v1, v0, v2

    .line 114
    .local v1, "diff":I
    if-nez v1, :cond_0

    iget-wide v2, p0, Lc8/Kyf;->mTimeStamp:J

    invoke-virtual {p1}, Lc8/Kyf;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .end local v1    # "diff":I
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    check-cast p1, Lc8/Kyf;

    invoke-virtual {p0, p1}, Lc8/Kyf;->compareTo(Lc8/Kyf;)I

    move-result v0

    return v0
.end method

.method public getContextId()I
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lc8/Kyf;->getRequest()Lc8/zyf;

    move-result-object v0

    .local v0, "req":Lc8/zyf;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lc8/zyf;->getId()I

    move-result v1

    .line 204
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lc8/Kyf;->mPriority:I

    return v0
.end method

.method public getRejectedStackDepth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRunningThreadId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lc8/Kyf;->mRunningThreadId:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lc8/Kyf;->mState:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lc8/Kyf;->mTimeStamp:J

    return-wide v0
.end method

.method public isConsumeAction()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lc8/Kyf;->mIsNotConsumeAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProduceAction()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayStackOverflowAfterRejected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kyf;

    .local v0, "caller":Lc8/Kyf;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lc8/Kyf;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lc8/Kyf;->getRunningThreadId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {v0}, Lc8/Kyf;->getRejectedStackDepth()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    .line 98
    .end local v0    # "caller":Lc8/Kyf;
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 95
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public notConsumeAction(Z)V
    .locals 0
    .param p1, "notConsumeAction"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lc8/Kyf;->mIsNotConsumeAction:Z

    .line 190
    return-void
.end method

.method public registerCancelListener(Lc8/yyf;)V
    .locals 1
    .param p1, "listener"    # Lc8/yyf;

    .prologue
    .line 209
    invoke-direct {p0}, Lc8/Kyf;->getRequest()Lc8/zyf;

    move-result-object v0

    .local v0, "req":Lc8/zyf;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lc8/zyf;->registerCancelListener(Lc8/yyf;)Z

    .line 212
    :cond_0
    return-void
.end method

.method public reset()Lc8/Kyf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;)Lc8/Kyf;

    .line 43
    return-object p0
.end method

.method public reset(ILc8/oyf;Lc8/Jyf;)Lc8/Kyf;
    .locals 1
    .param p1, "priority"    # I
    .param p3, "resultWrapper"    # Lc8/Jyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/oyf",
            "<*+",
            "Lc8/zyf;",
            ">;",
            "Lc8/Jyf;",
            ")",
            "Lc8/Kyf;"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;Z)Lc8/Kyf;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset(ILc8/oyf;Lc8/Jyf;Z)Lc8/Kyf;
    .locals 2
    .param p1, "priority"    # I
    .param p3, "resultWrapper"    # Lc8/Jyf;
    .param p4, "isAllowedDirectRun"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/oyf",
            "<*+",
            "Lc8/zyf;",
            ">;",
            "Lc8/Jyf;",
            "Z)",
            "Lc8/Kyf;"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Kyf;->mTimeStamp:J

    .line 53
    iput p1, p0, Lc8/Kyf;->mPriority:I

    .line 54
    iput-object p2, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    .line 55
    iput-object p3, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    .line 56
    iput-boolean p4, p0, Lc8/Kyf;->mAllowedDirectRun:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lc8/Kyf;->mState:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Kyf;->mRunningThreadId:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Kyf;->mMasterActionListener:Lc8/Lyf;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Kyf;->mBranchActionListener:Lc8/Lyf;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Kyf;->mIsNotConsumeAction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-object p0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/Kyf;->mRunningThreadId:J

    .line 132
    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 135
    sget-object v2, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kyf;

    .local v0, "caller":Lc8/Kyf;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lc8/Kyf;->getState()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-virtual {v0}, Lc8/Kyf;->getRunningThreadId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 136
    iget-object v2, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    .line 140
    :goto_0
    sget-object v1, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    .end local v0    # "caller":Lc8/Kyf;
    :cond_1
    iput v6, p0, Lc8/Kyf;->mState:I

    .line 145
    iget-object v1, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    iget-object v2, p0, Lc8/Kyf;->mResultWrapper:Lc8/Jyf;

    invoke-virtual {p0, v1, v2}, Lc8/Kyf;->run(Lc8/oyf;Lc8/Jyf;)V

    .line 147
    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    sget-object v1, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 150
    :cond_2
    iget-object v1, p0, Lc8/Kyf;->mMasterActionListener:Lc8/Lyf;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lc8/Kyf;->mMasterActionListener:Lc8/Lyf;

    invoke-interface {v1, p0}, Lc8/Lyf;->onActionFinished(Lc8/Kyf;)V

    .line 153
    :cond_3
    iget-object v1, p0, Lc8/Kyf;->mBranchActionListener:Lc8/Lyf;

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lc8/Kyf;->mBranchActionListener:Lc8/Lyf;

    invoke-interface {v1, p0}, Lc8/Lyf;->onActionFinished(Lc8/Kyf;)V

    .line 156
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lc8/Kyf;->mState:I

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v1, p0, Lc8/Kyf;->mActionPool:Lc8/Myf;

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lc8/Kyf;->mActionPool:Lc8/Myf;

    invoke-virtual {v1, p0}, Lc8/Myf;->recycle(Lc8/Kyf;)Z

    .line 161
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 138
    .restart local v0    # "caller":Lc8/Kyf;
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lc8/Kyf;->mRejectedStackDepth:Ljava/lang/Integer;

    goto :goto_0

    .line 161
    .end local v0    # "caller":Lc8/Kyf;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract run(Lc8/oyf;Lc8/Jyf;)V
.end method

.method public setBranchActionListener(Lc8/Lyf;)V
    .locals 0
    .param p1, "branchActionListener"    # Lc8/Lyf;

    .prologue
    .line 122
    iput-object p1, p0, Lc8/Kyf;->mBranchActionListener:Lc8/Lyf;

    .line 123
    return-void
.end method

.method public setMasterActionListener(Lc8/Lyf;)V
    .locals 0
    .param p1, "masterActionListener"    # Lc8/Lyf;

    .prologue
    .line 118
    iput-object p1, p0, Lc8/Kyf;->mMasterActionListener:Lc8/Lyf;

    .line 119
    return-void
.end method

.method public declared-synchronized setScheduledActionPool(Lc8/Myf;)V
    .locals 1
    .param p1, "actionPool"    # Lc8/Myf;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/Kyf;->mActionPool:Lc8/Myf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NullConsumer"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Kyf;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Kyf;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Kyf;->mConsumer:Lc8/oyf;

    goto :goto_0
.end method

.method public declared-synchronized unregisterCancelListener(Lc8/yyf;)V
    .locals 2
    .param p1, "listener"    # Lc8/yyf;

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/Kyf;->getRequest()Lc8/zyf;

    move-result-object v0

    .local v0, "req":Lc8/zyf;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lc8/zyf;->unregisterCancelListener(Lc8/yyf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    .end local v0    # "req":Lc8/zyf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
