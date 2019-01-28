.class public Lc8/gZe;
.super Ljava/lang/Object;
.source "ConcurrenceController.java"

# interfaces
.implements Lc8/oZe;


# instance fields
.field private SAMPLE_RATE:I

.field private dbConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/kZe;",
            ">;"
        }
    .end annotation
.end field

.field private hasWrite:Z

.field public needCheckStack:Z

.field private taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lc8/lZe;",
            ">;"
        }
    .end annotation
.end field

.field private workingTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lc8/lZe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lc8/kZe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dbConnections":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/taobao/android/alivfsdb/DBHandler;>;"
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lc8/gZe;->needCheckStack:Z

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lc8/gZe;->SAMPLE_RATE:I

    .line 28
    iput-boolean v1, p0, Lc8/gZe;->hasWrite:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/gZe;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    iput-object p1, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/gZe;->workingTasks:Ljava/util/LinkedList;

    .line 39
    return-void
.end method

.method private printTaskInfo(Lc8/lZe;)V
    .locals 4
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 42
    iget-object v1, p1, Lc8/lZe;->sql:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    const-string/jumbo v1, "hane"

    iget-object v2, p1, Lc8/lZe;->sql:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v1, "hane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lc8/lZe;->isRead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {p1}, Lc8/lZe;->isExt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "hane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ext is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/lZe;->sqlExt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",ext type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 53
    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, [Ljava/lang/Byte;

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v2, "hane"

    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [Ljava/lang/Byte;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v1, "hane"

    iget-object v2, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private declared-synchronized schedule()V
    .locals 5

    .prologue
    .line 180
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lc8/gZe;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 182
    iget-object v4, p0, Lc8/gZe;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lZe;

    .line 183
    .local v2, "taskToExec":Lc8/lZe;
    iget-object v4, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    .line 184
    .local v0, "dbh":Lc8/kZe;
    if-eqz v0, :cond_4

    iget-boolean v4, v2, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lc8/gZe;->hasWrite:Z

    if-nez v4, :cond_4

    .line 185
    :cond_0
    iget-object v4, p0, Lc8/gZe;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskToExec":Lc8/lZe;
    check-cast v2, Lc8/lZe;

    .line 187
    .restart local v2    # "taskToExec":Lc8/lZe;
    iget-boolean v4, v2, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_1

    .line 188
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/gZe;->hasWrite:Z

    .line 191
    :cond_1
    iget-object v4, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dbh":Lc8/kZe;
    check-cast v0, Lc8/kZe;

    .line 192
    .restart local v0    # "dbh":Lc8/kZe;
    iget-boolean v4, v2, Lc8/lZe;->isTranscation:Z

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    check-cast v4, Lc8/hZe;

    iput-object v0, v4, Lc8/hZe;->transactionHandler:Lc8/kZe;

    .line 195
    :cond_2
    new-instance v3, Lc8/pZe;

    invoke-direct {v3, v2, v0, p0}, Lc8/pZe;-><init>(Lc8/lZe;Lc8/kZe;Lc8/oZe;)V

    .line 197
    .local v3, "worker":Lc8/pZe;
    iget-boolean v4, v2, Lc8/lZe;->isAttachOrDetach:Z

    if-eqz v4, :cond_3

    .line 198
    iget-object v4, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    check-cast v4, Lc8/hZe;

    invoke-virtual {v4, v2}, Lc8/hZe;->attachOrDetach(Lc8/lZe;)V

    .line 201
    :cond_3
    iget-object v4, p0, Lc8/gZe;->workingTasks:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Lc8/yZe;->getInstance()Lc8/yZe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/yZe;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 203
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "dbh":Lc8/kZe;
    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v2    # "taskToExec":Lc8/lZe;
    .end local v3    # "worker":Lc8/pZe;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 209
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private setLoggedFlag(Lc8/lZe;)V
    .locals 3
    .param p1, "task"    # Lc8/lZe;

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-static {}, Lc8/YYe;->increase()I

    move-result v0

    .line 64
    .local v0, "counter":I
    iget v1, p0, Lc8/gZe;->SAMPLE_RATE:I

    rem-int v1, v0, v1

    if-ne v1, v2, :cond_0

    .line 65
    iput-boolean v2, p1, Lc8/lZe;->isLog:Z

    .line 66
    iget v1, p0, Lc8/gZe;->SAMPLE_RATE:I

    if-le v0, v1, :cond_0

    .line 67
    iget v1, p0, Lc8/gZe;->SAMPLE_RATE:I

    invoke-static {v1}, Lc8/YYe;->decrease(I)I

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized onWorkDone(Lc8/lZe;Lc8/kZe;)V
    .locals 1
    .param p1, "task"    # Lc8/lZe;
    .param p2, "connection"    # Lc8/kZe;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/gZe;->workingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 220
    iget-boolean v0, p1, Lc8/lZe;->isRead:Z

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/gZe;->hasWrite:Z

    .line 223
    :cond_0
    invoke-direct {p0}, Lc8/gZe;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleNewTask(Lc8/lZe;)V
    .locals 13
    .param p1, "newTask"    # Lc8/lZe;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lc8/gZe;->setLoggedFlag(Lc8/lZe;)V

    .line 80
    const/4 v6, 0x0

    .line 81
    .local v6, "isIntransaction":Z
    if-eqz p1, :cond_5

    .line 83
    iget-object v11, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    check-cast v11, Lc8/hZe;

    invoke-virtual {v11}, Lc8/hZe;->getCurrentDbConnectionCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 85
    move-object v1, p1

    .line 86
    .local v1, "dbTask":Lc8/lZe;
    new-instance v10, Lc8/cZe;

    const-string/jumbo v11, "callback thread"

    invoke-direct {v10, p0, v11, v1}, Lc8/cZe;-><init>(Lc8/gZe;Ljava/lang/String;Lc8/lZe;)V

    .line 97
    .local v10, "thread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "dbTask":Lc8/lZe;
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_1
    iget-object v11, p1, Lc8/lZe;->sql:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 101
    iget-object v11, p1, Lc8/lZe;->sql:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "sqlUpperCase":Ljava/lang/String;
    const-string/jumbo v11, "ATTACH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "DETACH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 104
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p1, Lc8/lZe;->isAttachOrDetach:Z

    .line 108
    .end local v8    # "sqlUpperCase":Ljava/lang/String;
    :cond_3
    iget-boolean v11, p0, Lc8/gZe;->needCheckStack:Z

    if-eqz v11, :cond_4

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 110
    .local v9, "stackTraceElements":[Ljava/lang/StackTraceElement;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v7, v9

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v2, v0, v5

    .line 111
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "execTransaction"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.taobao.android.alivfsdb.DBHandler"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 113
    const/4 v6, 0x1

    .line 119
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_4
    if-nez v6, :cond_7

    .line 120
    iget-object v11, p0, Lc8/gZe;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 170
    :cond_5
    :goto_2
    if-nez v6, :cond_0

    iget-boolean v11, p0, Lc8/gZe;->needCheckStack:Z

    if-nez v11, :cond_0

    .line 171
    invoke-direct {p0}, Lc8/gZe;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v6    # "isIntransaction":Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 110
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    .restart local v5    # "i$":I
    .restart local v6    # "isIntransaction":Z
    .restart local v7    # "len$":I
    .restart local v9    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_7
    :try_start_2
    iget-boolean v11, p1, Lc8/lZe;->isTranscation:Z

    if-eqz v11, :cond_8

    .line 123
    move-object v1, p1

    .line 124
    .restart local v1    # "dbTask":Lc8/lZe;
    new-instance v10, Lc8/dZe;

    const-string/jumbo v11, "callback thread"

    invoke-direct {v10, p0, v11, v1}, Lc8/dZe;-><init>(Lc8/gZe;Ljava/lang/String;Lc8/lZe;)V

    .line 133
    .restart local v10    # "thread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 136
    .end local v1    # "dbTask":Lc8/lZe;
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_8
    invoke-virtual {p1}, Lc8/lZe;->isExt()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 137
    move-object v1, p1

    .line 138
    .restart local v1    # "dbTask":Lc8/lZe;
    new-instance v10, Lc8/eZe;

    const-string/jumbo v11, "callback thread"

    invoke-direct {v10, p0, v11, v1}, Lc8/eZe;-><init>(Lc8/gZe;Ljava/lang/String;Lc8/lZe;)V

    .line 147
    .restart local v10    # "thread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 150
    .end local v1    # "dbTask":Lc8/lZe;
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_9
    iget-object v11, p0, Lc8/gZe;->dbConnections:Ljava/util/Queue;

    check-cast v11, Lc8/hZe;

    iget-object v4, v11, Lc8/hZe;->transactionHandler:Lc8/kZe;

    .line 151
    .local v4, "handler":Lc8/kZe;
    if-eqz v4, :cond_5

    .line 152
    invoke-virtual {v4, p1}, Lc8/kZe;->execOperation(Lc8/lZe;)Lc8/UYe;

    move-result-object v3

    .line 153
    .local v3, "finalResult":Lc8/UYe;
    move-object v1, p1

    .line 154
    .restart local v1    # "dbTask":Lc8/lZe;
    invoke-static {}, Lc8/bZe;->getInstance()Lc8/bZe;

    move-result-object v11

    invoke-virtual {v11}, Lc8/bZe;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v11

    new-instance v12, Lc8/fZe;

    invoke-direct {v12, p0, v1, v3}, Lc8/fZe;-><init>(Lc8/gZe;Lc8/lZe;Lc8/UYe;)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
