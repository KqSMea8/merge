.class public final Lc8/Dxq;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cxq;,
        Lc8/Bxq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field private static final POOL:Lc8/Yxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Yxq",
            "<",
            "Lc8/Dxq",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final SIZE:I

.field static defaultSize:I


# instance fields
.field private final elements:Lc8/Bxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Bxq",
            "<TE;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final removed:Lc8/Cxq;

.field final removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    new-instance v2, Lc8/Axq;

    invoke-direct {v2}, Lc8/Axq;-><init>()V

    sput-object v2, Lc8/Dxq;->POOL:Lc8/Yxq;

    .line 64
    const/16 v2, 0x100

    sput v2, Lc8/Dxq;->defaultSize:I

    .line 241
    invoke-static {}, Lc8/cyq;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/16 v2, 0x8

    sput v2, Lc8/Dxq;->defaultSize:I

    .line 246
    :cond_0
    const-string/jumbo v2, "rx.indexed-ring-buffer.size"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 249
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lc8/Dxq;->defaultSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    :goto_0
    sget v2, Lc8/Dxq;->defaultSize:I

    sput v2, Lc8/Dxq;->SIZE:I

    .line 256
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

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
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lc8/Bxq;

    invoke-direct {v0}, Lc8/Bxq;-><init>()V

    iput-object v0, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    .line 51
    new-instance v0, Lc8/Cxq;

    invoke-direct {v0}, Lc8/Cxq;-><init>()V

    iput-object v0, p0, Lc8/Dxq;->removed:Lc8/Cxq;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Dxq;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 297
    return-void
.end method

.method private forEach(Lc8/Inq;II)I
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lc8/Inq;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v7, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 456
    .local v4, "maxIndex":I
    move v5, p2

    .line 457
    .local v5, "realIndex":I
    iget-object v6, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    .line 459
    .local v6, "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    sget v7, Lc8/Dxq;->SIZE:I

    if-lt p2, v7, :cond_0

    .line 461
    invoke-direct {p0, p2}, Lc8/Dxq;->getElementSection(I)Lc8/Bxq;

    move-result-object v6

    .line 462
    sget v7, Lc8/Dxq;->SIZE:I

    rem-int/2addr p2, v7

    .line 465
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 466
    move v2, p2

    .local v2, "i":I
    :goto_1
    sget v7, Lc8/Dxq;->SIZE:I

    if-ge v2, v7, :cond_5

    .line 467
    if-ge v5, v4, :cond_1

    if-lt v5, p3, :cond_3

    .end local v2    # "i":I
    :cond_1
    move v3, v5

    .line 486
    :cond_2
    return v3

    .line 471
    .restart local v2    # "i":I
    :cond_3
    iget-object v7, v6, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 472
    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_4

    .line 475
    move v3, v5

    .line 476
    .local v3, "lastIndex":I
    invoke-interface {p1, v1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 477
    .local v0, "continueLoop":Z
    if-eqz v0, :cond_2

    .line 466
    .end local v0    # "continueLoop":Z
    .end local v3    # "lastIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 481
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_5
    iget-object v7, v6, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v6, Lc8/Bxq;

    .line 482
    .restart local v6    # "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getElementSection(I)Lc8/Bxq;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Bxq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lc8/Dxq;->SIZE:I

    if-ge p1, v3, :cond_1

    .line 349
    iget-object v0, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    .line 358
    :cond_0
    return-object v0

    .line 353
    :cond_1
    sget v3, Lc8/Dxq;->SIZE:I

    div-int v2, p1, v3

    .line 354
    .local v2, "numSections":I
    iget-object v0, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    .line 355
    .local v0, "a":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 356
    invoke-virtual {v0}, Lc8/Bxq;->getNext()Lc8/Bxq;

    move-result-object v0

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getIndexForAdd()I
    .locals 5

    .prologue
    .line 366
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/Dxq;->getIndexFromPreviouslyRemoved()I

    move-result v1

    .line 367
    .local v1, "ri":I
    if-ltz v1, :cond_2

    .line 368
    sget v3, Lc8/Dxq;->SIZE:I

    if-ge v1, v3, :cond_1

    .line 370
    iget-object v3, p0, Lc8/Dxq;->removed:Lc8/Cxq;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lc8/Cxq;->getAndSet(II)I

    move-result v0

    .line 375
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 377
    iget-object v3, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 372
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    sget v3, Lc8/Dxq;->SIZE:I

    rem-int v2, v1, v3

    .line 373
    .local v2, "sectionIndex":I
    invoke-direct {p0, v1}, Lc8/Dxq;->getIndexSection(I)Lc8/Cxq;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lc8/Cxq;->getAndSet(II)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_0

    .line 380
    .end local v0    # "i":I
    .end local v2    # "sectionIndex":I
    :cond_2
    iget-object v3, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1

    .line 366
    .end local v0    # "i":I
    .end local v1    # "ri":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getIndexFromPreviouslyRemoved()I
    .locals 3

    .prologue
    .line 397
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Dxq;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 398
    .local v0, "currentRi":I
    if-lez v0, :cond_1

    .line 400
    iget-object v1, p0, Lc8/Dxq;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    add-int/lit8 v1, v0, -0x1

    .line 405
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 397
    .end local v0    # "currentRi":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getIndexSection(I)Lc8/Cxq;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 333
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lc8/Dxq;->SIZE:I

    if-ge p1, v3, :cond_1

    .line 334
    iget-object v0, p0, Lc8/Dxq;->removed:Lc8/Cxq;

    .line 343
    :cond_0
    return-object v0

    .line 338
    :cond_1
    sget v3, Lc8/Dxq;->SIZE:I

    div-int v2, p1, v3

    .line 339
    .local v2, "numSections":I
    iget-object v0, p0, Lc8/Dxq;->removed:Lc8/Cxq;

    .line 340
    .local v0, "a":Lc8/Cxq;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 341
    invoke-virtual {v0}, Lc8/Cxq;->getNext()Lc8/Cxq;

    move-result-object v0

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lc8/Dxq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Dxq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lc8/Dxq;->POOL:Lc8/Yxq;

    invoke-virtual {v0}, Lc8/Yxq;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dxq;

    return-object v0
.end method

.method private declared-synchronized pushRemovedIndex(I)V
    .locals 3
    .param p1, "elementIndex"    # I

    .prologue
    .line 415
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/Dxq;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 416
    .local v0, "i":I
    sget v2, Lc8/Dxq;->SIZE:I

    if-ge v0, v2, :cond_0

    .line 418
    iget-object v2, p0, Lc8/Dxq;->removed:Lc8/Cxq;

    invoke-virtual {v2, v0, p1}, Lc8/Cxq;->set(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_0
    :try_start_1
    sget v2, Lc8/Dxq;->SIZE:I

    rem-int v1, v0, v2

    .line 421
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lc8/Dxq;->getIndexSection(I)Lc8/Cxq;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lc8/Cxq;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    .end local v1    # "sectionIndex":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lc8/Dxq;->getIndexForAdd()I

    move-result v0

    .line 307
    .local v0, "i":I
    sget v2, Lc8/Dxq;->SIZE:I

    if-ge v0, v2, :cond_0

    .line 309
    iget-object v2, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    iget-object v2, v2, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 314
    :goto_0
    return v0

    .line 312
    :cond_0
    sget v2, Lc8/Dxq;->SIZE:I

    rem-int v1, v0, v2

    .line 313
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lc8/Dxq;->getElementSection(I)Lc8/Bxq;

    move-result-object v2

    iget-object v2, v2, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public forEach(Lc8/Inq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lc8/Inq;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Dxq;->forEach(Lc8/Inq;I)I

    move-result v0

    return v0
.end method

.method public forEach(Lc8/Inq;I)I
    .locals 2
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lc8/Inq;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lc8/Dxq;->forEach(Lc8/Inq;II)I

    move-result v0

    .line 443
    .local v0, "endedAt":I
    if-lez p2, :cond_1

    iget-object v1, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 445
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lc8/Dxq;->forEach(Lc8/Inq;II)I

    move-result v0

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    iget-object v1, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 448
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public releaseToPool()V
    .locals 7

    .prologue
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v6, 0x0

    .line 269
    iget-object v4, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 270
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 271
    .local v2, "realIndex":I
    iget-object v3, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    .line 272
    .local v3, "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lc8/Dxq;->SIZE:I

    if-ge v0, v4, :cond_0

    .line 274
    if-ge v2, v1, :cond_1

    .line 280
    iget-object v4, v3, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    :cond_0
    iget-object v4, v3, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v3, Lc8/Bxq;

    .restart local v3    # "section":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_1
    iget-object v4, p0, Lc8/Dxq;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 286
    iget-object v4, p0, Lc8/Dxq;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 287
    sget-object v4, Lc8/Dxq;->POOL:Lc8/Yxq;

    invoke-virtual {v4, p0}, Lc8/Yxq;->returnObject(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v3, 0x0

    .line 320
    sget v2, Lc8/Dxq;->SIZE:I

    if-ge p1, v2, :cond_0

    .line 322
    iget-object v2, p0, Lc8/Dxq;->elements:Lc8/Bxq;

    iget-object v2, v2, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-direct {p0, p1}, Lc8/Dxq;->pushRemovedIndex(I)V

    .line 328
    return-object v0

    .line 324
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    sget v2, Lc8/Dxq;->SIZE:I

    rem-int v1, p1, v2

    .line 325
    .local v1, "sectionIndex":I
    invoke-direct {p0, p1}, Lc8/Dxq;->getElementSection(I)Lc8/Bxq;

    move-result-object v2

    iget-object v2, v2, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 292
    .local p0, "this":Lc8/Dxq;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-virtual {p0}, Lc8/Dxq;->releaseToPool()V

    .line 293
    return-void
.end method
