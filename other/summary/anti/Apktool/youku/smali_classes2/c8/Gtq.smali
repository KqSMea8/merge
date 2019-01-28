.class public Lc8/Gtq;
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
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Htq;

.field final synthetic val$s:Lc8/qAq;

.field final synthetic val$samplerSub:Lc8/Omq;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lc8/Htq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/Gtq;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iput-object p1, p0, Lc8/Gtq;->this$0:Lc8/Htq;

    iput-object p2, p0, Lc8/Gtq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/Gtq;->val$s:Lc8/qAq;

    iput-object p4, p0, Lc8/Gtq;->val$samplerSub:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lc8/Gtq;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lc8/Gtq;->val$samplerSub:Lc8/Omq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lc8/Gtq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 94
    iget-object v0, p0, Lc8/Gtq;->val$samplerSub:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lc8/Gtq;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lc8/Gtq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lc8/Gtq;->val$samplerSub:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/Gtq;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Gtq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
