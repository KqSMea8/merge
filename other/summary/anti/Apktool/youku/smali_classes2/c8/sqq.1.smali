.class public Lc8/sqq;
.super Lc8/Omq;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tqq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/tqq;


# direct methods
.method constructor <init>(Lc8/tqq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 318
    .local p0, "this":Lc8/sqq;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/sqq;->this$1:Lc8/tqq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lc8/sqq;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 322
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    .local p0, "this":Lc8/sqq;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 331
    .local p0, "this":Lc8/sqq;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$worker:Lc8/Zlq;

    iget-object v1, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v1, v1, Lc8/tqq;->val$subscribeToSource:Lc8/hnq;

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lc8/sqq;->this$1:Lc8/tqq;

    iget-object v0, v0, Lc8/tqq;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 347
    .local p0, "this":Lc8/sqq;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 348
    return-void
.end method
