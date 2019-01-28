.class public Lc8/bLd;
.super Lc8/UKd;
.source "Emitter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private emptyCount:I

.field private eventStore:Lc8/mLd;


# direct methods
.method public constructor <init>(Lc8/TKd;)V
    .locals 3
    .param p1, "builder"    # Lc8/TKd;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/UKd;-><init>(Lc8/TKd;)V

    .line 27
    const-class v0, Lc8/bLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lc8/jLd;

    iget-object v1, p0, Lc8/bLd;->context:Landroid/content/Context;

    iget v2, p0, Lc8/bLd;->sendLimit:I

    invoke-direct {v0, v1, v2}, Lc8/jLd;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    .line 40
    iget-object v0, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    invoke-interface {v0}, Lc8/mLd;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lc8/lLd;

    iget v1, p0, Lc8/bLd;->sendLimit:I

    invoke-direct {v0, v1}, Lc8/lLd;-><init>(I)V

    iput-object v0, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    .line 42
    iget-object v0, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init memory store"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/bLd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lc8/bLd;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lc8/bLd;)V
    .locals 0
    .param p0, "x0"    # Lc8/bLd;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/bLd;->attemptEmit()V

    return-void
.end method

.method static synthetic access$200(Lc8/bLd;Lc8/DId;)I
    .locals 1
    .param p0, "x0"    # Lc8/bLd;
    .param p1, "x1"    # Lc8/DId;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lc8/bLd;->requestSender(Lc8/DId;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lc8/bLd;)Lc8/mLd;
    .locals 1
    .param p0, "x0"    # Lc8/bLd;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    return-object v0
.end method

.method private attemptEmit()V
    .locals 14

    .prologue
    .line 109
    iget-object v9, p0, Lc8/bLd;->context:Landroid/content/Context;

    invoke-static {v9}, Lc8/ALd;->isOnline(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 110
    iget-object v9, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    invoke-interface {v9}, Lc8/mLd;->getSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 111
    const/4 v9, 0x0

    iput v9, p0, Lc8/bLd;->emptyCount:I

    .line 113
    iget-object v9, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    invoke-interface {v9}, Lc8/mLd;->getEmittableEvents()Lc8/SKd;

    move-result-object v2

    .line 114
    .local v2, "events":Lc8/SKd;
    invoke-virtual {p0, v2}, Lc8/bLd;->buildRequests(Lc8/SKd;)Ljava/util/LinkedList;

    move-result-object v5

    .line 115
    .local v5, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    invoke-direct {p0, v5}, Lc8/bLd;->performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v7

    .line 120
    .local v7, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;>;"
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Processing emitter results."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const/4 v8, 0x0

    .line 123
    .local v8, "successCount":I
    const/4 v3, 0x0

    .line 124
    .local v3, "failureCount":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 126
    .local v4, "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XKd;

    .line 127
    .local v6, "res":Lc8/XKd;
    invoke-virtual {v6}, Lc8/XKd;->getSuccess()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 128
    invoke-virtual {v6}, Lc8/XKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 129
    .local v1, "eventId":Ljava/lang/Long;
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v1    # "eventId":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v6}, Lc8/XKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v6}, Lc8/XKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    add-int/2addr v3, v10

    .line 134
    iget-object v10, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Request sending failed but we will retry later."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    .end local v6    # "res":Lc8/XKd;
    :cond_2
    invoke-direct {p0, v4}, Lc8/bLd;->performAsyncEventRemoval(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 142
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Success Count: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Failure Count: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v9, p0, Lc8/bLd;->requestCallback:Lc8/WKd;

    if-eqz v9, :cond_3

    .line 146
    if-eqz v3, :cond_5

    .line 147
    iget-object v9, p0, Lc8/bLd;->requestCallback:Lc8/WKd;

    invoke-interface {v9, v8, v3}, Lc8/WKd;->onFailure(II)V

    .line 153
    :cond_3
    :goto_2
    if-lez v3, :cond_6

    if-nez v8, :cond_6

    .line 154
    iget-object v9, p0, Lc8/bLd;->context:Landroid/content/Context;

    invoke-static {v9}, Lc8/ALd;->isOnline(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 155
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Ensure collector path is valid: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lc8/bLd;->getEmitterUri()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_4
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Emitter loop stopping: failures."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v9, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 183
    .end local v2    # "events":Lc8/SKd;
    .end local v3    # "failureCount":I
    .end local v4    # "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v5    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    .end local v7    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;>;"
    .end local v8    # "successCount":I
    :goto_3
    return-void

    .line 149
    .restart local v2    # "events":Lc8/SKd;
    .restart local v3    # "failureCount":I
    .restart local v4    # "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .restart local v5    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    .restart local v7    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;>;"
    .restart local v8    # "successCount":I
    :cond_5
    iget-object v9, p0, Lc8/bLd;->requestCallback:Lc8/WKd;

    invoke-interface {v9, v8}, Lc8/WKd;->onSuccess(I)V

    goto :goto_2

    .line 161
    :cond_6
    invoke-direct {p0}, Lc8/bLd;->attemptEmit()V

    goto :goto_3

    .line 164
    .end local v2    # "events":Lc8/SKd;
    .end local v3    # "failureCount":I
    .end local v4    # "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v5    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    .end local v7    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;>;"
    .end local v8    # "successCount":I
    :cond_7
    iget v9, p0, Lc8/bLd;->emptyCount:I

    iget v10, p0, Lc8/bLd;->emptyLimit:I

    if-lt v9, v10, :cond_8

    .line 165
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Emitter loop stopping: empty limit reached."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v9, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_3

    .line 168
    :cond_8
    iget v9, p0, Lc8/bLd;->emptyCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lc8/bLd;->emptyCount:I

    .line 170
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Emitter database empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lc8/bLd;->emptyCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :try_start_0
    iget-object v9, p0, Lc8/bLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget v10, p0, Lc8/bLd;->emitterTick:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_4
    invoke-direct {p0}, Lc8/bLd;->attemptEmit()V

    goto :goto_3

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Emitter thread sleep interrupted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 180
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v9, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Emitter loop stopping: emitter offline."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v9, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto/16 :goto_3
.end method

.method private getRemoveCallable(Ljava/lang/Long;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "eventId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lc8/aLd;

    invoke-direct {v0, p0, p1}, Lc8/aLd;-><init>(Lc8/bLd;Ljava/lang/Long;)V

    return-object v0
.end method

.method private getRequestCallable(Lc8/DId;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "request"    # Lc8/DId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/DId;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lc8/ZKd;

    invoke-direct {v0, p0, p1}, Lc8/ZKd;-><init>(Lc8/bLd;Lc8/DId;)V

    return-object v0
.end method

.method private performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lc8/VKd;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lc8/XKd;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 195
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 196
    .local v6, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 199
    .local v2, "futures":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/concurrent/Future;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/VKd;

    .line 200
    .local v5, "request":Lc8/VKd;
    invoke-virtual {v5}, Lc8/VKd;->getRequest()Lc8/DId;

    move-result-object v9

    invoke-direct {p0, v9}, Lc8/bLd;->getRequestCallable(Lc8/DId;)Ljava/util/concurrent/Callable;

    move-result-object v9

    invoke-static {v9}, Lc8/cLd;->futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v5    # "request":Lc8/VKd;
    :cond_0
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Request Futures: %s"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v8, v9, v10}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 208
    const/4 v0, -0x1

    .line 211
    .local v0, "code":I
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    const-wide/16 v10, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 220
    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/VKd;

    invoke-virtual {v8}, Lc8/VKd;->isOversize()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    new-instance v9, Lc8/XKd;

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/VKd;

    invoke-virtual {v8}, Lc8/VKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v8

    invoke-direct {v9, v12, v8}, Lc8/XKd;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v4

    .line 213
    .local v4, "ie":Ljava/lang/InterruptedException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Request Future was interrupted: %s"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 215
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Request Future failed: %s"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 216
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v7

    .line 217
    .local v7, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Request Future had a timeout: %s"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 223
    .end local v7    # "te":Ljava/util/concurrent/TimeoutException;
    :cond_1
    new-instance v9, Lc8/XKd;

    invoke-virtual {p0, v0}, Lc8/bLd;->isSuccessfulSend(I)Z

    move-result v10

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/VKd;

    invoke-virtual {v8}, Lc8/VKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lc8/XKd;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 230
    .end local v0    # "code":I
    :cond_2
    return-object v6
.end method

.method private performAsyncEventRemoval(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 245
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 246
    .local v6, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 249
    .local v1, "futures":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/concurrent/Future;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 250
    .local v3, "id":Ljava/lang/Long;
    invoke-direct {p0, v3}, Lc8/bLd;->getRemoveCallable(Ljava/lang/Long;)Ljava/util/concurrent/Callable;

    move-result-object v9

    invoke-static {v9}, Lc8/cLd;->futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v3    # "id":Ljava/lang/Long;
    :cond_0
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Removal Futures: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 257
    const/4 v5, 0x0

    .line 259
    .local v5, "result":Z
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    const-wide/16 v10, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 267
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v4

    .line 261
    .local v4, "ie":Ljava/lang/InterruptedException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Removal Future was interrupted: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 262
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Removal Future failed: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v7

    .line 265
    .local v7, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v8, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Removal Future had a timeout: %s"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 273
    .end local v5    # "result":Z
    .end local v7    # "te":Ljava/util/concurrent/TimeoutException;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public add(Lc8/PKd;Z)V
    .locals 5
    .param p1, "payload"    # Lc8/PKd;
    .param p2, "attemptEmit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v1, p0, Lc8/bLd;->eventStore:Lc8/mLd;

    invoke-interface {v1, p1}, Lc8/mLd;->add(Lc8/PKd;)V

    .line 66
    iget-object v1, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRunning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " attemptEmit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-nez p2, :cond_0

    .line 69
    :try_start_0
    iget-object v1, p0, Lc8/bLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/bLd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0}, Lc8/bLd;->attemptEmit()V

    .line 77
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lc8/bLd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Emitter add thread sleep interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lc8/YKd;

    invoke-direct {v0, p0}, Lc8/YKd;-><init>(Lc8/bLd;)V

    invoke-static {v0}, Lc8/cLd;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
