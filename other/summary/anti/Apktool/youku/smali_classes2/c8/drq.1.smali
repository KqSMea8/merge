.class public Lc8/drq;
.super Lc8/Omq;
.source "OperatorBufferWithSingleObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/frq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/frq;

.field final synthetic val$bsub:Lc8/erq;


# direct methods
.method constructor <init>(Lc8/frq;Lc8/erq;)V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lc8/drq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iput-object p1, p0, Lc8/drq;->this$0:Lc8/frq;

    iput-object p2, p0, Lc8/drq;->val$bsub:Lc8/erq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lc8/drq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lc8/drq;->val$bsub:Lc8/erq;

    invoke-virtual {v0}, Lc8/erq;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    .local p0, "this":Lc8/drq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    iget-object v0, p0, Lc8/drq;->val$bsub:Lc8/erq;

    invoke-virtual {v0, p1}, Lc8/erq;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lc8/drq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lc8/drq;->val$bsub:Lc8/erq;

    invoke-virtual {v0}, Lc8/erq;->emit()V

    .line 92
    return-void
.end method
