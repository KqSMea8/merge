.class public final Lc8/zSe;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final executedCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lc8/mSe;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lc8/lSe;",
            ">;"
        }
    .end annotation
.end field

.field private final runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lc8/lSe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lc8/zSe;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lc8/zSe;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->executedCalls:Ljava/util/Deque;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lc8/zSe;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lc8/zSe;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/zSe;->executedCalls:Ljava/util/Deque;

    .line 53
    iput-object p1, p0, Lc8/zSe;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method private promoteCalls()V
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lc8/zSe;->maxRequests:I

    if-lt v2, v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lSe;

    .line 152
    .local v0, "call":Lc8/lSe;
    invoke-direct {p0, v0}, Lc8/zSe;->runningCallsForHost(Lc8/lSe;)I

    move-result v2

    iget v3, p0, Lc8/zSe;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 154
    iget-object v2, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lc8/zSe;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 158
    :cond_3
    iget-object v2, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lc8/zSe;->maxRequests:I

    if-lt v2, v3, :cond_2

    goto :goto_0
.end method

.method private runningCallsForHost(Lc8/lSe;)I
    .locals 5
    .param p1, "call"    # Lc8/lSe;

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "result":I
    iget-object v2, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lSe;

    .line 166
    .local v0, "c":Lc8/lSe;
    invoke-virtual {v0}, Lc8/lSe;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc8/lSe;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "c":Lc8/lSe;
    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lSe;

    .line 119
    .local v0, "call":Lc8/lSe;
    invoke-virtual {v0}, Lc8/lSe;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v0}, Lc8/lSe;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "call":Lc8/lSe;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lSe;

    .line 125
    .restart local v0    # "call":Lc8/lSe;
    invoke-virtual {v0}, Lc8/lSe;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v0}, Lc8/lSe;->get()Lc8/mSe;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/mSe;->canceled:Z

    .line 127
    invoke-virtual {v0}, Lc8/lSe;->get()Lc8/mSe;

    move-result-object v3

    iget-object v1, v3, Lc8/mSe;->engine:Lc8/QUe;

    .line 128
    .local v1, "engine":Lc8/QUe;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc8/QUe;->cancel()V

    goto :goto_1

    .line 132
    .end local v0    # "call":Lc8/lSe;
    .end local v1    # "engine":Lc8/QUe;
    :cond_3
    iget-object v2, p0, Lc8/zSe;->executedCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/mSe;

    .line 133
    .local v0, "call":Lc8/mSe;
    invoke-virtual {v0}, Lc8/mSe;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    invoke-virtual {v0}, Lc8/mSe;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 137
    .end local v0    # "call":Lc8/mSe;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method declared-synchronized enqueue(Lc8/lSe;)V
    .locals 2
    .param p1, "call"    # Lc8/lSe;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lc8/zSe;->maxRequests:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lc8/zSe;->runningCallsForHost(Lc8/lSe;)I

    move-result v0

    iget v1, p0, Lc8/zSe;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lc8/zSe;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/zSe;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized executed(Lc8/mSe;)V
    .locals 1
    .param p1, "call"    # Lc8/mSe;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zSe;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized finished(Lc8/lSe;)V
    .locals 2
    .param p1, "call"    # Lc8/lSe;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zSe;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "AsyncCall wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lc8/zSe;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void
.end method

.method declared-synchronized finished(Lc8/mSe;)V
    .locals 2
    .param p1, "call"    # Lc8/mSe;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zSe;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zSe;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 62
    invoke-static {v0, v8}, Lc8/ATe;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/zSe;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    :cond_0
    iget-object v0, p0, Lc8/zSe;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .locals 3
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    .line 96
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_0
    :try_start_1
    iput p1, p0, Lc8/zSe;->maxRequestsPerHost:I

    .line 100
    invoke-direct {p0}, Lc8/zSe;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-void
.end method
