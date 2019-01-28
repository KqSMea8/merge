.class public Lc8/iwq;
.super Lc8/Omq;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kwq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/kwq;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lc8/qAq;


# direct methods
.method constructor <init>(Lc8/kwq;Lc8/Omq;ZLjava/util/concurrent/atomic/AtomicReference;Lc8/qAq;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 50
    .local p0, "this":Lc8/iwq;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/iwq;->this$0:Lc8/kwq;

    iput-object p4, p0, Lc8/iwq;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-direct {p0, p2, p3}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lc8/iwq;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 74
    iget-object v0, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lc8/iwq;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->unsubscribe()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/iwq;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lc8/iwq;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "o":Ljava/lang/Object;
    sget-object v4, Lc8/kwq;->EMPTY:Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    .line 57
    move-object v3, v1

    .line 58
    .local v3, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    iget-object v4, p0, Lc8/iwq;->this$0:Lc8/kwq;

    iget-object v4, v4, Lc8/kwq;->resultSelector:Lc8/Jnq;

    invoke-interface {v4, p1, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v4, p0, Lc8/iwq;->val$s:Lc8/qAq;

    invoke-virtual {v4, v2}, Lc8/qAq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v3    # "u":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
