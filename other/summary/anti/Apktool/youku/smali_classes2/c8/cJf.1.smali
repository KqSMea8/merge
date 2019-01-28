.class public Lc8/cJf;
.super Ljava/lang/Thread;
.source "MonitorThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bJf;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# instance fields
.field protected mMonitorTaskExecutor:Lc8/ZIf;

.field private volatile monitorTerminated:Z

.field private volatile shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "MonitorThreadPool"

    sput-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    .line 35
    invoke-virtual {p0, p1}, Lc8/cJf;->setName(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lc8/ZIf;

    invoke-direct {v0}, Lc8/ZIf;-><init>()V

    iput-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    .line 38
    invoke-virtual {p0}, Lc8/cJf;->putMonitorInitTask()V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/cJf;->putMonitorReportTask(Z)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lc8/cJf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/cJf;Lc8/eJf;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/cJf;
    .param p1, "x1"    # Lc8/eJf;
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lc8/cJf;->putMonitorTask(Lc8/eJf;Z)V

    return-void
.end method

.method public static getReportProcessor()Lc8/cJf;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lc8/bJf;->access$100()Lc8/cJf;

    move-result-object v0

    return-object v0
.end method

.method private putMonitorTask(Lc8/eJf;Z)V
    .locals 1
    .param p1, "task"    # Lc8/eJf;
    .param p2, "isToHead"    # Z

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/cJf;->putMonitorTask(Lc8/eJf;ZZ)V

    .line 142
    return-void
.end method


# virtual methods
.method public isTerminated()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lc8/cJf;->monitorTerminated:Z

    return v0
.end method

.method public putMonitorInitTask()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "putMonitorInitTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lc8/gJf;->createMonitorTask(ILjava/util/List;)Lc8/eJf;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lc8/cJf;->putMonitorTask(Lc8/eJf;ZZ)V

    .line 82
    return-void
.end method

.method public putMonitorRecordTask(IJLjava/util/List;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "time"    # J
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "decideMonitorTime"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string/jumbo v4, "size="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    if-nez p4, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string/jumbo v3, "code="

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "time="

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lc8/cJf;->shuttingDown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/cJf;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    const-wide/16 p2, -0x1

    .line 99
    :cond_3
    invoke-static {}, Lc8/YIf;->instance()Lc8/YIf;

    move-result-object v0

    new-instance v1, Lc8/aJf;

    invoke-direct {v1, p0, p4}, Lc8/aJf;-><init>(Lc8/cJf;Ljava/util/List;)V

    invoke-virtual {v0, p2, p3, v1}, Lc8/YIf;->decideMonitorTimerPolicy(JLjava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public putMonitorRecordTask(JLc8/UIf;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "info"    # Lc8/UIf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    new-instance v0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;-><init>(Lc8/cJf;Lc8/UIf;J)V

    .line 89
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    iget v1, p3, Lc8/UIf;->code:I

    invoke-virtual {p0, v1, p1, p2, v0}, Lc8/cJf;->putMonitorRecordTask(IJLjava/util/List;)V

    .line 90
    return-void
.end method

.method public putMonitorRemoveTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    const/4 v3, 0x0

    .line 113
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "putMonitorRemoveTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-boolean v0, p0, Lc8/cJf;->shuttingDown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/cJf;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lc8/gJf;->createMonitorTask(ILjava/util/List;)Lc8/eJf;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lc8/cJf;->putMonitorTask(Lc8/eJf;Z)V

    goto :goto_0
.end method

.method public putMonitorReportTask(Z)V
    .locals 4
    .param p1, "ignoreStatus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "putMessageCheckTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/gJf;->createMonitorTask(ILjava/util/List;)Lc8/eJf;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p1}, Lc8/cJf;->putMonitorTask(Lc8/eJf;ZZ)V

    .line 110
    return-void
.end method

.method public putMonitorReturnTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    const/4 v3, 0x0

    .line 134
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "putMonitorAddTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-boolean v0, p0, Lc8/cJf;->shuttingDown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/cJf;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lc8/gJf;->createMonitorTask(ILjava/util/List;)Lc8/eJf;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lc8/cJf;->putMonitorTask(Lc8/eJf;Z)V

    goto :goto_0
.end method

.method public putMonitorTask(Lc8/eJf;ZZ)V
    .locals 6
    .param p1, "task"    # Lc8/eJf;
    .param p2, "isToHead"    # Z
    .param p3, "ignoreStatus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    sget-object v2, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "putMessageTask, type="

    aput-object v1, v3, v4

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    iget-boolean v1, p0, Lc8/cJf;->shuttingDown:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc8/cJf;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Lc8/eJf;->type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_2
    if-eqz p2, :cond_3

    .line 156
    :try_start_0
    iget-object v1, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    invoke-virtual {v1, p1}, Lc8/ZIf;->putTaskFirst(Lc8/eJf;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 163
    .local v0, "iex":Ljava/lang/InterruptedException;
    sget-object v1, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "putMessageTask error: "

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    invoke-virtual {v1, p1}, Lc8/ZIf;->putTaskLast(Lc8/eJf;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "run start"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    invoke-virtual {v0}, Lc8/ZIf;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "arriveMonitor is terminated"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-boolean v4, p0, Lc8/cJf;->monitorTerminated:Z

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "tasksToExecute take error"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "arriveMonitor is terminated"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-boolean v4, p0, Lc8/cJf;->monitorTerminated:Z

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    sget-object v1, Lc8/cJf;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "arriveMonitor is terminated"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-boolean v4, p0, Lc8/cJf;->monitorTerminated:Z

    throw v0
.end method

.method public setMessageSyncExecuteMode(Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;

    .prologue
    .line 60
    iget-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    invoke-virtual {v0, p1}, Lc8/ZIf;->setMonitorExecuteMode(Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorTaskExecutor$MonitorProcessExecuteMode;)V

    .line 63
    :cond_0
    return-void
.end method

.method public shutDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/cJf;->shuttingDown:Z

    .line 178
    iget-object v0, p0, Lc8/cJf;->mMonitorTaskExecutor:Lc8/ZIf;

    new-instance v1, Lc8/mJf;

    const-string/jumbo v2, "SHUTDOWN"

    invoke-direct {v1, v2}, Lc8/mJf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/ZIf;->putTaskLast(Lc8/eJf;)V

    .line 179
    return-void
.end method
