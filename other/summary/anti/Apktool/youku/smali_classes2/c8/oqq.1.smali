.class public Lc8/oqq;
.super Lc8/Omq;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pqq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$1:Lc8/pqq;


# direct methods
.method constructor <init>(Lc8/pqq;)V
    .locals 0

    .prologue
    .line 220
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iput-object p1, p0, Lc8/oqq;->this$1:Lc8/pqq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method

.method private decrementConsumerCapacity()V
    .locals 6

    .prologue
    .line 254
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    :cond_0
    iget-object v2, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v2, v2, Lc8/pqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 255
    .local v0, "cc":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v2, v2, Lc8/pqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :cond_1
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 225
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lc8/oqq;->done:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oqq;->done:Z

    .line 227
    invoke-virtual {p0}, Lc8/oqq;->unsubscribe()V

    .line 228
    iget-object v0, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v0, v0, Lc8/pqq;->val$terminals:Lc8/wBq;

    invoke-static {}, Lc8/Qlq;->createOnCompleted()Lc8/Qlq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wBq;->onNext(Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lc8/oqq;->done:Z

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oqq;->done:Z

    .line 236
    invoke-virtual {p0}, Lc8/oqq;->unsubscribe()V

    .line 237
    iget-object v0, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v0, v0, Lc8/pqq;->val$terminals:Lc8/wBq;

    invoke-static {p1}, Lc8/Qlq;->createOnError(Ljava/lang/Throwable;)Lc8/Qlq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wBq;->onNext(Ljava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/oqq;->done:Z

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v0, v0, Lc8/pqq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lc8/oqq;->decrementConsumerCapacity()V

    .line 246
    iget-object v0, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v0, v0, Lc8/pqq;->val$arbiter:Lc8/Jwq;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lc8/Jwq;->produced(J)V

    .line 248
    :cond_0
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 267
    .local p0, "this":Lc8/oqq;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-object v0, p0, Lc8/oqq;->this$1:Lc8/pqq;

    iget-object v0, v0, Lc8/pqq;->val$arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 268
    return-void
.end method
