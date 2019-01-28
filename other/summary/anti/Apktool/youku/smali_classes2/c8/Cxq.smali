.class public Lc8/Cxq;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexSection"
.end annotation


# instance fields
.field private final _next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Cxq;",
            ">;"
        }
    .end annotation
.end field

.field private final unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lc8/Dxq;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lc8/Cxq;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 513
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/Cxq;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public getAndSet(II)I
    .locals 1
    .param p1, "expected"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lc8/Cxq;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result v0

    return v0
.end method

.method getNext()Lc8/Cxq;
    .locals 3

    .prologue
    .line 524
    iget-object v1, p0, Lc8/Cxq;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lc8/Cxq;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cxq;

    .line 533
    :goto_0
    return-object v1

    .line 527
    :cond_0
    new-instance v0, Lc8/Cxq;

    invoke-direct {v0}, Lc8/Cxq;-><init>()V

    .line 528
    .local v0, "newSection":Lc8/Cxq;
    iget-object v1, p0, Lc8/Cxq;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 530
    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lc8/Cxq;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cxq;

    goto :goto_0
.end method

.method public set(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "elementIndex"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lc8/Cxq;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 521
    return-void
.end method
