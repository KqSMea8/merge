.class public Lc8/iuq;
.super Lc8/Omq;
.source "OperatorSkipUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/juq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/juq;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lc8/qAq;


# direct methods
.method constructor <init>(Lc8/juq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/qAq;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lc8/iuq;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/iuq;->this$0:Lc8/juq;

    iput-object p3, p0, Lc8/iuq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lc8/iuq;->val$s:Lc8/qAq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lc8/iuq;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    iget-object v0, p0, Lc8/iuq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 88
    invoke-virtual {p0}, Lc8/iuq;->unsubscribe()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lc8/iuq;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    iget-object v0, p0, Lc8/iuq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lc8/iuq;->unsubscribe()V

    .line 83
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
    .line 72
    .local p0, "this":Lc8/iuq;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/iuq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lc8/iuq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onNext(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/iuq;->request(J)V

    goto :goto_0
.end method
