.class public Lc8/cuq;
.super Lc8/Omq;
.source "OperatorSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/duq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private buffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lc8/pBq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/duq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/duq;Lc8/Omq;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lc8/cuq;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/cuq;->this$0:Lc8/duq;

    iput-object p3, p0, Lc8/cuq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/cuq;->buffer:Ljava/util/Deque;

    return-void
.end method

.method private emitItemsOutOfWindow(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 46
    .local p0, "this":Lc8/cuq;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v3, p0, Lc8/cuq;->this$0:Lc8/duq;

    iget-wide v4, v3, Lc8/duq;->timeInMillis:J

    sub-long v0, p1, v4

    .line 47
    .local v0, "limit":J
    :goto_0
    iget-object v3, p0, Lc8/cuq;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    iget-object v3, p0, Lc8/cuq;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/pBq;

    .line 49
    .local v2, "v":Lc8/pBq;, "Lrx/schedulers/Timestamped<TT;>;"
    invoke-virtual {v2}, Lc8/pBq;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 50
    iget-object v3, p0, Lc8/cuq;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lc8/cuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2}, Lc8/pBq;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    .end local v2    # "v":Lc8/pBq;, "Lrx/schedulers/Timestamped<TT;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lc8/cuq;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lc8/cuq;->this$0:Lc8/duq;

    iget-object v0, v0, Lc8/duq;->scheduler:Lc8/amq;

    invoke-virtual {v0}, Lc8/amq;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lc8/cuq;->emitItemsOutOfWindow(J)V

    .line 73
    iget-object v0, p0, Lc8/cuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lc8/cuq;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lc8/cuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 68
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
    .line 60
    .local p0, "this":Lc8/cuq;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/cuq;->this$0:Lc8/duq;

    iget-object v2, v2, Lc8/duq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->now()J

    move-result-wide v0

    .line 61
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lc8/cuq;->emitItemsOutOfWindow(J)V

    .line 62
    iget-object v2, p0, Lc8/cuq;->buffer:Ljava/util/Deque;

    new-instance v3, Lc8/pBq;

    invoke-direct {v3, v0, v1, p1}, Lc8/pBq;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
