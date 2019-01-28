.class public Lc8/Ftq;
.super Lc8/Omq;
.source "OperatorSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Htq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Htq;

.field final synthetic val$main:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lc8/qAq;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lc8/Htq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/Ftq;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iput-object p1, p0, Lc8/Ftq;->this$0:Lc8/Htq;

    iput-object p2, p0, Lc8/Ftq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/Ftq;->val$s:Lc8/qAq;

    iput-object p4, p0, Lc8/Ftq;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lc8/Ftq;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Ftq;->onNext(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lc8/Ftq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 72
    iget-object v0, p0, Lc8/Ftq;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lc8/Ftq;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iget-object v0, p0, Lc8/Ftq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lc8/Ftq;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lc8/Ftq;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v2, p0, Lc8/Ftq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lc8/Htq;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "localValue":Ljava/lang/Object;
    sget-object v2, Lc8/Htq;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 55
    move-object v1, v0

    .line 56
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/Ftq;->val$s:Lc8/qAq;

    invoke-virtual {v2, v1}, Lc8/qAq;->onNext(Ljava/lang/Object;)V

    .line 58
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
