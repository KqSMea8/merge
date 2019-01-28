.class public final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37bb5316f95bb99bL


# instance fields
.field final synthetic this$0:Lc8/irq;


# direct methods
.method public constructor <init>(Lc8/irq;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lc8/irq;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lc8/irq;

    .line 319
    .local v0, "parent":Lc8/irq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v1, v0, Lc8/irq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v0, Lc8/irq;->queue:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lc8/irq;->actual:Lc8/Omq;

    invoke-static {v1, p1, p2, v6, v7}, Lc8/ioq;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lc8/Omq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget v1, v0, Lc8/irq;->skip:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v2

    .line 323
    .local v2, "u":J
    iget v1, v0, Lc8/irq;->count:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v4

    .line 325
    .local v4, "v":J
    invoke-static {v0, v4, v5}, Lc8/irq;->access$300(Lc8/irq;J)V

    .line 332
    .end local v2    # "u":J
    .end local v4    # "v":J
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget v1, v0, Lc8/irq;->skip:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v2

    .line 328
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lc8/irq;->access$400(Lc8/irq;J)V

    goto :goto_0
.end method
