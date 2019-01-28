.class public Lc8/QYe;
.super Ljava/lang/Object;
.source "AliDB.java"


# instance fields
.field private concurrenceController:Lc8/gZe;

.field private dbConnectionPool:Lc8/hZe;

.field private sqlExtProcessors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/vZe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lc8/QYe;->sqlExtProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/String;Lc8/wZe;)Lc8/QYe;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/wZe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lc8/QYe;

    invoke-direct {v0}, Lc8/QYe;-><init>()V

    .line 39
    .local v0, "aliDB":Lc8/QYe;
    invoke-direct {v0, p3, p0, p1, p2}, Lc8/QYe;->initDBConnections(Lc8/wZe;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    invoke-direct {v0}, Lc8/QYe;->initConcurrenceController()V

    .line 41
    return-object v0
.end method

.method private initConcurrenceController()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lc8/gZe;

    iget-object v1, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    invoke-direct {v0, v1}, Lc8/gZe;-><init>(Ljava/util/Queue;)V

    iput-object v0, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    .line 69
    return-void
.end method

.method private initDBConnections(Lc8/wZe;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Lc8/wZe;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lc8/HYe;

    invoke-direct {v0, p0, p1}, Lc8/HYe;-><init>(Lc8/QYe;Lc8/wZe;)V

    invoke-static {v0, p2, p3, p4}, Lc8/hZe;->create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/hZe;

    move-result-object v0

    iput-object v0, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    .line 62
    return-void
.end method


# virtual methods
.method public closeConnections()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    invoke-virtual {v1}, Lc8/hZe;->closeConnections()I

    move-result v0

    .line 117
    .local v0, "connnectionCount":I
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/taobao/android/alivfsdb/AliDBException;

    const/16 v2, -0xc

    const-string/jumbo v3, "unable to close due to unfinalized statements or unfinished backups"

    invoke-direct {v1, v2, v3}, Lcom/taobao/android/alivfsdb/AliDBException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "connnectionCount":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public execBatchUpdate(Ljava/lang/String;)Lc8/UYe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 438
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 440
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 442
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/PYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/PYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lc8/QYe;->execBatchUpdate(Ljava/lang/String;Lc8/sZe;)V

    .line 452
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execBatchUpdate(Ljava/lang/String;Lc8/sZe;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/sZe;

    .prologue
    .line 466
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 467
    new-instance v0, Lc8/lZe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/lZe;-><init>(Ljava/lang/String;Z)V

    .line 468
    .local v0, "task":Lc8/lZe;
    invoke-virtual {v0, p2}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 469
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/lZe;->isBatch:Z

    .line 470
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lc8/lZe;->beginTime:D

    .line 472
    iget-object v1, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v1, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 473
    return-void
.end method

.method public execQuery(Ljava/lang/String;)Lc8/UYe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 237
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 239
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/IYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/IYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lc8/QYe;->execQuery(Ljava/lang/String;Lc8/sZe;)V

    .line 249
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/UYe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 266
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 268
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 270
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/JYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/JYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lc8/QYe;->execQuery(Ljava/lang/String;[Ljava/lang/Object;Lc8/sZe;)V

    .line 280
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execQuery(Ljava/lang/String;Lc8/sZe;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/sZe;

    .prologue
    .line 130
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 131
    new-instance v0, Lc8/lZe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc8/lZe;-><init>(Ljava/lang/String;Z)V

    .line 132
    .local v0, "task":Lc8/lZe;
    invoke-virtual {v0, p2}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 133
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lc8/lZe;->beginTime:D

    .line 135
    iget-object v1, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v1, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 137
    return-void
.end method

.method public execQuery(Ljava/lang/String;[Ljava/lang/Object;Lc8/sZe;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lc8/sZe;

    .prologue
    .line 146
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 147
    new-instance v0, Lc8/lZe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lc8/lZe;-><init>(Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 148
    .local v0, "task":Lc8/lZe;
    invoke-virtual {v0, p3}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 149
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lc8/lZe;->beginTime:D

    .line 151
    iget-object v1, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v1, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 152
    return-void
.end method

.method public execQueryExt(Ljava/lang/String;Ljava/lang/String;)Lc8/TYe;
    .locals 5
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "sqlExt"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 357
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 359
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/TYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 361
    .local v1, "execResult":[Lc8/TYe;
    new-instance v3, Lc8/MYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/MYe;-><init>(Lc8/QYe;[Lc8/TYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lc8/QYe;->execQueryExt(Ljava/lang/String;Ljava/lang/String;Lc8/tZe;)V

    .line 371
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execQueryExt(Ljava/lang/String;Ljava/lang/String;Lc8/tZe;)V
    .locals 4
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "sqlExt"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/tZe;

    .prologue
    .line 190
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 191
    iget-object v2, p0, Lc8/QYe;->sqlExtProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vZe;

    .line 192
    .local v0, "processor":Lc8/vZe;
    new-instance v1, Lc8/lZe;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v0, v2}, Lc8/lZe;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/vZe;Z)V

    .line 193
    .local v1, "task":Lc8/lZe;
    invoke-virtual {v1, p3}, Lc8/lZe;->setExecExtCallBack(Lc8/tZe;)V

    .line 194
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v1, Lc8/lZe;->beginTime:D

    .line 196
    iget-object v2, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v2, v1}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 197
    return-void
.end method

.method public execUpdate(Ljava/lang/String;)Lc8/UYe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 297
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 299
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/KYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/KYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lc8/QYe;->execUpdate(Ljava/lang/String;Lc8/sZe;)V

    .line 309
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Lc8/UYe;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 327
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 329
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/LYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/LYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lc8/QYe;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;Lc8/sZe;)V

    .line 339
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execUpdate(Ljava/lang/String;Lc8/sZe;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/sZe;

    .prologue
    .line 160
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 161
    new-instance v0, Lc8/lZe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/lZe;-><init>(Ljava/lang/String;Z)V

    .line 162
    .local v0, "task":Lc8/lZe;
    invoke-virtual {v0, p2}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 163
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lc8/lZe;->beginTime:D

    .line 165
    iget-object v1, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v1, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 166
    return-void
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;Lc8/sZe;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lc8/sZe;

    .prologue
    .line 175
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 176
    new-instance v0, Lc8/lZe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lc8/lZe;-><init>(Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 177
    .local v0, "task":Lc8/lZe;
    invoke-virtual {v0, p3}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 178
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lc8/lZe;->beginTime:D

    .line 180
    iget-object v1, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v1, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 181
    return-void
.end method

.method public execUpdateExt(Ljava/lang/String;Ljava/lang/String;)Lc8/TYe;
    .locals 5
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "sqlExt"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 387
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 389
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/TYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 391
    .local v1, "execResult":[Lc8/TYe;
    new-instance v3, Lc8/NYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/NYe;-><init>(Lc8/QYe;[Lc8/TYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lc8/QYe;->execUpdateExt(Ljava/lang/String;Ljava/lang/String;Lc8/tZe;)V

    .line 401
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public execUpdateExt(Ljava/lang/String;Ljava/lang/String;Lc8/tZe;)V
    .locals 4
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "sqlExt"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/tZe;

    .prologue
    .line 206
    invoke-static {}, Lc8/VYe;->registerAliVfsDB()V

    .line 207
    iget-object v2, p0, Lc8/QYe;->sqlExtProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vZe;

    .line 208
    .local v0, "processor":Lc8/vZe;
    new-instance v1, Lc8/lZe;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lc8/lZe;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/vZe;Z)V

    .line 209
    .local v1, "task":Lc8/lZe;
    invoke-virtual {v1, p3}, Lc8/lZe;->setExecExtCallBack(Lc8/tZe;)V

    .line 210
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v2

    iput-wide v2, v1, Lc8/lZe;->beginTime:D

    .line 212
    iget-object v2, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v2, v1}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 213
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    invoke-virtual {p0}, Lc8/QYe;->closeConnections()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConcurrenceController()Lc8/gZe;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    return-object v0
.end method

.method public getDbConnectionCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    invoke-virtual {v0}, Lc8/hZe;->getCurrentDbConnectionCount()I

    move-result v0

    goto :goto_0
.end method

.method public inTransaction(Lc8/qZe;)Lc8/UYe;
    .locals 5
    .param p1, "transaction"    # Lc8/qZe;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 410
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 412
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Lc8/UYe;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    .line 414
    .local v1, "execResult":[Lc8/UYe;
    new-instance v3, Lc8/OYe;

    invoke-direct {v3, p0, v1, v2}, Lc8/OYe;-><init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lc8/QYe;->inTransaction(Lc8/qZe;Lc8/sZe;)V

    .line 423
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    aget-object v3, v1, v4

    return-object v3

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public inTransaction(Lc8/qZe;Lc8/sZe;)V
    .locals 5
    .param p1, "transaction"    # Lc8/qZe;
    .param p2, "callback"    # Lc8/sZe;

    .prologue
    .line 216
    new-instance v0, Lc8/lZe;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lc8/lZe;-><init>(Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 217
    .local v0, "task":Lc8/lZe;
    new-instance v1, Lc8/zZe;

    invoke-direct {v1}, Lc8/zZe;-><init>()V

    .line 218
    .local v1, "wrap":Lc8/zZe;
    iput-object p1, v1, Lc8/zZe;->transaction:Lc8/qZe;

    .line 220
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/lZe;->isTranscation:Z

    .line 221
    iput-object v1, v0, Lc8/lZe;->transaction:Lc8/qZe;

    .line 222
    invoke-virtual {v0, p2}, Lc8/lZe;->setExecCallBack(Lc8/sZe;)V

    .line 223
    iput-object p0, v0, Lc8/lZe;->aliDB:Lc8/QYe;

    .line 225
    iget-object v2, p0, Lc8/QYe;->concurrenceController:Lc8/gZe;

    invoke-virtual {v2, v0}, Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V

    .line 226
    return-void
.end method

.method public setDbConnectionCount(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/QYe;->dbConnectionPool:Lc8/hZe;

    invoke-virtual {v0, p1}, Lc8/hZe;->setDbConnectionCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public setLogger(Lc8/rZe;)V
    .locals 0
    .param p1, "logger"    # Lc8/rZe;

    .prologue
    .line 480
    sput-object p1, Lc8/VYe;->logger:Lc8/rZe;

    .line 481
    return-void
.end method

.method public setSQLExtProcessor(Ljava/lang/String;Lc8/vZe;)I
    .locals 1
    .param p1, "extType"    # Ljava/lang/String;
    .param p2, "processor"    # Lc8/vZe;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sql"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, -0x2

    .line 82
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v0, p0, Lc8/QYe;->sqlExtProcessors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method
