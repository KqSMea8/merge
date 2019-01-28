.class public Lcom/taobao/rxm/schedule/CentralSchedulerQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "CentralSchedulerQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/PriorityBlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACT_BE_QUEUED:I = 0x3

.field public static final ACT_BE_REJECTED:I = 0x2

.field public static final ACT_TO_EXECUTE:I = 0x1


# instance fields
.field private final mExecutorStateInspector:Lc8/Fyf;

.field private final mNormalCapacity:I

.field private final mPatienceCapacity:I


# direct methods
.method public constructor <init>(Lc8/Fyf;II)V
    .locals 0
    .param p1, "inspector"    # Lc8/Fyf;
    .param p2, "blockingQueueCapacity"    # I
    .param p3, "patienceCapacity"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mExecutorStateInspector:Lc8/Fyf;

    .line 26
    iput p2, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mNormalCapacity:I

    .line 27
    iput p3, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mPatienceCapacity:I

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized moveIn(Lc8/Kyf;Z)I
    .locals 8
    .param p1, "action"    # Lc8/Kyf;
    .param p2, "needQueue"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 56
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mExecutorStateInspector:Lc8/Fyf;

    invoke-interface {v4}, Lc8/Fyf;->isNotFull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v0

    .line 67
    .local v0, "currSize":I
    iget v4, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mPatienceCapacity:I

    if-lt v0, v4, :cond_3

    .line 68
    const-string/jumbo v2, "RxSysLog"

    const-string/jumbo v4, "SOX current size(%d) of central queue exceeded max patience(%d)!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mPatienceCapacity:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mExecutorStateInspector:Lc8/Fyf;

    invoke-interface {v2}, Lc8/Fyf;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "status":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    const-string/jumbo v2, "%"

    const-string/jumbo v4, "%%"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "RxSysLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOX detail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v2, v3

    .line 74
    goto :goto_0

    .line 80
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mNormalCapacity:I

    if-lt v0, v4, :cond_4

    invoke-virtual {p1}, Lc8/Kyf;->canRunDirectly()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 81
    goto :goto_0

    .line 84
    :cond_4
    if-eqz p2, :cond_0

    .line 89
    :try_start_2
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    move-exception v4

    .line 94
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Lc8/Kyf;->canRunDirectly()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 95
    goto :goto_0

    .line 56
    .end local v0    # "currSize":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 32
    check-cast p1, Lc8/Kyf;

    .end local p1    # "r":Ljava/lang/Runnable;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->moveIn(Lc8/Kyf;Z)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reachPatienceCapacity()Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->mPatienceCapacity:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
