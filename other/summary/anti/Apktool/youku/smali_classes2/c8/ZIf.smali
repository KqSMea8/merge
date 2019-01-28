.class public Lc8/ZIf;
.super Ljava/lang/Object;
.source "MonitorTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private hangTask:Lc8/fJf;

.field protected mExecuteMode:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

.field private tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lc8/eJf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "MonitorTaskExecutor"

    iput-object v0, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->SINGLE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    iput-object v0, p0, Lc8/ZIf;->mExecuteMode:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .line 20
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZIf;->hangTask:Lc8/fJf;

    .line 116
    return-void
.end method

.method private executeTasksMerge(Ljava/util/concurrent/BlockingQueue;Lc8/eJf;)V
    .locals 7
    .param p2, "task"    # Lc8/eJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lc8/eJf;",
            ">;",
            "Lc8/eJf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pool":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/taobao/tao/messagekit/base/monitor/monitorthread/tasks/MonitorTask;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 92
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/eJf;

    .line 93
    .local v0, "nextTask":Lc8/eJf;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lc8/eJf;->type()I

    move-result v1

    invoke-virtual {p2}, Lc8/eJf;->type()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 95
    :cond_0
    iget-object v1, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "message process task start execute..., type="

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lc8/eJf;->type()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p2}, Lc8/eJf;->run()V

    .line 111
    .end local v0    # "nextTask":Lc8/eJf;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v0    # "nextTask":Lc8/eJf;
    :cond_2
    iget-object v1, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "still have tasks in pool, continue take...; waiting to execute\uff1bcurrent task type: "

    aput-object v3, v2, v4

    .line 99
    invoke-virtual {p2}, Lc8/eJf;->type()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "| next task type: "

    aput-object v3, v2, v6

    const/4 v3, 0x3

    .line 100
    invoke-virtual {v0}, Lc8/eJf;->type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p2}, Lc8/eJf;->mergeExecute()V

    goto :goto_0

    .line 104
    .end local v0    # "nextTask":Lc8/eJf;
    :cond_3
    if-nez p1, :cond_4

    .line 105
    iget-object v1, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "blockingQueue is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_4
    if-nez p2, :cond_1

    .line 108
    iget-object v1, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "current task is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lc8/eJf;Ljava/util/concurrent/BlockingQueue;)V
    .locals 4
    .param p1, "task"    # Lc8/eJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eJf;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lc8/eJf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "tasksToExecute":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/taobao/tao/messagekit/base/monitor/monitorthread/tasks/MonitorTask;>;"
    iget-object v0, p0, Lc8/ZIf;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "run in mExecuteMode="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/ZIf;->mExecuteMode:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lc8/ZIf;->mExecuteMode:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    sget-object v1, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->MERGE_TASK:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p2, p1}, Lc8/ZIf;->executeTasksMerge(Ljava/util/concurrent/BlockingQueue;Lc8/eJf;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lc8/eJf;->run()V

    goto :goto_0
.end method

.method public putTaskFirst(Lc8/eJf;)V
    .locals 1
    .param p1, "task"    # Lc8/eJf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public putTaskLast(Lc8/eJf;)V
    .locals 1
    .param p1, "task"    # Lc8/eJf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 52
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/eJf;

    .local v1, "task":Lc8/eJf;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "SHUTDOWN"

    invoke-virtual {v1}, Lc8/eJf;->getTaskFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    instance-of v2, v1, Lc8/fJf;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 54
    check-cast v0, Lc8/fJf;

    .line 55
    .local v0, "hang":Lc8/fJf;
    iget-object v2, p0, Lc8/ZIf;->hangTask:Lc8/fJf;

    if-nez v2, :cond_1

    .line 56
    iput-object v0, p0, Lc8/ZIf;->hangTask:Lc8/fJf;

    .line 57
    iget-object v2, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, v1, v2}, Lc8/ZIf;->execute(Lc8/eJf;Ljava/util/concurrent/BlockingQueue;)V

    .line 61
    :goto_1
    invoke-interface {v0}, Lc8/fJf;->afterHanging()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lc8/ZIf;->hangTask:Lc8/fJf;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lc8/ZIf;->hangTask:Lc8/fJf;

    invoke-interface {v0, v2}, Lc8/fJf;->onHanging(Lc8/fJf;)V

    goto :goto_1

    .line 62
    .end local v0    # "hang":Lc8/fJf;
    :cond_2
    iget-object v2, p0, Lc8/ZIf;->tasksToExecute:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, v1, v2}, Lc8/ZIf;->execute(Lc8/eJf;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0

    .line 64
    :cond_3
    return-void
.end method

.method public setMonitorExecuteMode(Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/ZIf;->mExecuteMode:Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .line 30
    return-void
.end method
