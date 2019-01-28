.class public final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferSkipProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f9355307bc4d2b2L


# instance fields
.field final synthetic this$0:Lc8/jrq;


# direct methods
.method public constructor <init>(Lc8/jrq;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>.BufferSkipProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lc8/jrq;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>.BufferSkipProducer;"
    const-wide/16 v8, 0x0

    .line 218
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "n >= 0 required but it was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    cmp-long v1, p1, v8

    if-eqz v1, :cond_1

    .line 222
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lc8/jrq;

    .line 223
    .local v0, "parent":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget v1, v0, Lc8/jrq;->count:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v2

    .line 225
    .local v2, "u":J
    iget v1, v0, Lc8/jrq;->skip:I

    iget v8, v0, Lc8/jrq;->count:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v4

    .line 226
    .local v4, "v":J
    invoke-static {v2, v3, v4, v5}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v6

    .line 227
    .local v6, "w":J
    invoke-static {v0, v6, v7}, Lc8/jrq;->access$100(Lc8/jrq;J)V

    .line 233
    .end local v0    # "parent":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .end local v2    # "u":J
    .end local v4    # "v":J
    .end local v6    # "w":J
    :cond_1
    :goto_0
    return-void

    .line 229
    .restart local v0    # "parent":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_2
    iget v1, v0, Lc8/jrq;->skip:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v2

    .line 230
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lc8/jrq;->access$200(Lc8/jrq;J)V

    goto :goto_0
.end method
