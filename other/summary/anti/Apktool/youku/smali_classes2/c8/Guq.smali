.class public final Lc8/Guq;
.super Lc8/Omq;
.source "OperatorTakeLast.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Huq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeLastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lc8/Omq;I)V
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 66
    iput-object p1, p0, Lc8/Guq;->actual:Lc8/Omq;

    .line 67
    iput p2, p0, Lc8/Guq;->count:I

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/Guq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    .line 70
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/Guq;->nl:Lc8/cpq;

    .line 71
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Guq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 89
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Guq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lc8/Guq;->actual:Lc8/Omq;

    invoke-static {v0, v1, v2, p0}, Lc8/ioq;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lc8/Omq;Lc8/Inq;)V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 84
    iget-object v0, p0, Lc8/Guq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lc8/Guq;->count:I

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 78
    :cond_0
    iget-object v0, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lc8/Guq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method requestMore(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 98
    .local p0, "this":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 99
    iget-object v1, p0, Lc8/Guq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lc8/Guq;->queue:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lc8/Guq;->actual:Lc8/Omq;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lc8/ioq;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lc8/Omq;Lc8/Inq;)Z

    .line 101
    :cond_0
    return-void
.end method
