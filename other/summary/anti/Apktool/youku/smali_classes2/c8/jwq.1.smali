.class public Lc8/jwq;
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
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kwq;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lc8/qAq;


# direct methods
.method constructor <init>(Lc8/kwq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;)V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lc8/jwq;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iput-object p1, p0, Lc8/jwq;->this$0:Lc8/kwq;

    iput-object p2, p0, Lc8/jwq;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/jwq;->val$s:Lc8/qAq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lc8/jwq;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lc8/jwq;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lc8/kwq;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lc8/jwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 92
    iget-object v0, p0, Lc8/jwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->unsubscribe()V

    .line 94
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lc8/jwq;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lc8/jwq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lc8/jwq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lc8/jwq;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/jwq;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
