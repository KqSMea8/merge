.class public Lc8/Btq;
.super Lc8/Omq;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ctq;->call()V
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

.field final synthetic this$1:Lc8/Ctq;

.field final synthetic val$_self:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/Ctq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lc8/Btq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iput-object p1, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iput-object p2, p0, Lc8/Btq;->val$_self:Lc8/hnq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lc8/Btq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-boolean v0, p0, Lc8/Btq;->done:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Btq;->done:Z

    .line 94
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 96
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    .local p0, "this":Lc8/Btq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-boolean v0, p0, Lc8/Btq;->done:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Btq;->done:Z

    .line 102
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->predicate:Lc8/Jnq;

    iget-object v1, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v1, v1, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v1, v1, Lc8/Dtq;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->inner:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->inner:Lc8/Zlq;

    iget-object v1, p0, Lc8/Btq;->val$_self:Lc8/hnq;

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lc8/Btq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/Btq;->done:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->pa:Lc8/Jwq;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lc8/Jwq;->produced(J)V

    .line 118
    :cond_0
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 122
    .local p0, "this":Lc8/Btq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-object v0, p0, Lc8/Btq;->this$1:Lc8/Ctq;

    iget-object v0, v0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v0, v0, Lc8/Dtq;->pa:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 123
    return-void
.end method
