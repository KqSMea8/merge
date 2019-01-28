.class public Lc8/fyq;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lc8/Pmq;


# static fields
.field private static final ON:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE:I

.field public static final SPMC_POOL:Lc8/Yxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Yxq",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SPSC_POOL:Lc8/Yxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Yxq",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static defaultSize:I


# instance fields
.field private final pool:Lc8/Yxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Yxq",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 128
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v2

    sput-object v2, Lc8/fyq;->ON:Lc8/cpq;

    .line 244
    const/16 v2, 0x80

    sput v2, Lc8/fyq;->defaultSize:I

    .line 247
    invoke-static {}, Lc8/cyq;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/16 v2, 0x10

    sput v2, Lc8/fyq;->defaultSize:I

    .line 252
    :cond_0
    const-string/jumbo v2, "rx.ring-buffer.size"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lc8/fyq;->defaultSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_0
    sget v2, Lc8/fyq;->defaultSize:I

    sput v2, Lc8/fyq;->SIZE:I

    .line 264
    new-instance v2, Lc8/dyq;

    invoke-direct {v2}, Lc8/dyq;-><init>()V

    sput-object v2, Lc8/fyq;->SPSC_POOL:Lc8/Yxq;

    .line 274
    new-instance v2, Lc8/eyq;

    invoke-direct {v2}, Lc8/eyq;-><init>()V

    sput-object v2, Lc8/fyq;->SPMC_POOL:Lc8/Yxq;

    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lc8/yyq;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1}, Lc8/yyq;-><init>(I)V

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {p0, v0, v1}, Lc8/fyq;-><init>(Ljava/util/Queue;I)V

    .line 328
    return-void
.end method

.method private constructor <init>(Lc8/Yxq;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Yxq",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "pool":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lc8/fyq;->pool:Lc8/Yxq;

    .line 307
    invoke-virtual {p1}, Lc8/Yxq;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 308
    iput p2, p0, Lc8/fyq;->size:I

    .line 309
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/fyq;->pool:Lc8/Yxq;

    .line 302
    iput p2, p0, Lc8/fyq;->size:I

    .line 303
    return-void
.end method

.method public static getSpmcInstance()Lc8/fyq;
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lc8/fyq;

    sget-object v1, Lc8/fyq;->SPMC_POOL:Lc8/Yxq;

    sget v2, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1, v2}, Lc8/fyq;-><init>(Lc8/Yxq;I)V

    .line 295
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/fyq;

    invoke-direct {v0}, Lc8/fyq;-><init>()V

    goto :goto_0
.end method

.method public static getSpscInstance()Lc8/fyq;
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lc8/fyq;

    sget-object v1, Lc8/fyq;->SPSC_POOL:Lc8/Yxq;

    sget v2, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1, v2}, Lc8/fyq;-><init>(Lc8/Yxq;I)V

    .line 287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/fyq;

    invoke-direct {v0}, Lc8/fyq;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lc8/Wlq;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "child"    # Lc8/Wlq;

    .prologue
    .line 445
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p2, p1}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public asError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 449
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lc8/fyq;->size:I

    invoke-virtual {p0}, Lc8/fyq;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lc8/fyq;->size:I

    return v0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 380
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 381
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 440
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 432
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 388
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    goto :goto_0
.end method

.method public isError(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 436
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    .line 361
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 365
    iget-object v0, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    .line 368
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 339
    .local v1, "mbe":Z
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v2, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 341
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 342
    sget-object v3, Lc8/fyq;->ON:Lc8/cpq;

    invoke-virtual {v3, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 346
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    if-eqz v0, :cond_2

    .line 349
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 351
    .restart local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 352
    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v3}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v3

    .line 354
    :cond_3
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v1, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 418
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 420
    const/4 v0, 0x0

    monitor-exit p0

    .line 428
    :goto_0
    return-object v0

    .line 422
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    .line 424
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 425
    move-object v0, v2

    .line 427
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v1, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 398
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 400
    monitor-exit p0

    .line 411
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    .line 405
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 406
    move-object v0, v2

    .line 408
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/fyq;->terminalState:Ljava/lang/Object;

    .line 410
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 313
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/fyq;->pool:Lc8/Yxq;

    .line 314
    .local v0, "p":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 315
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/fyq;->queue:Ljava/util/Queue;

    .line 317
    invoke-virtual {v0, v1}, Lc8/Yxq;->returnObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    .end local v0    # "p":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lc8/fyq;->release()V

    .line 324
    return-void
.end method
