.class public Lc8/lrq;
.super Lc8/Omq;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/orq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TTOpening;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/orq;

.field final synthetic val$bsub:Lc8/nrq;


# direct methods
.method constructor <init>(Lc8/orq;Lc8/nrq;)V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lc8/lrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iput-object p1, p0, Lc8/lrq;->this$0:Lc8/orq;

    iput-object p2, p0, Lc8/lrq;->val$bsub:Lc8/nrq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lc8/lrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iget-object v0, p0, Lc8/lrq;->val$bsub:Lc8/nrq;

    invoke-virtual {v0}, Lc8/nrq;->onCompleted()V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lc8/lrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    iget-object v0, p0, Lc8/lrq;->val$bsub:Lc8/nrq;

    invoke-virtual {v0, p1}, Lc8/nrq;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/lrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TTOpening;"
    iget-object v0, p0, Lc8/lrq;->val$bsub:Lc8/nrq;

    invoke-virtual {v0, p1}, Lc8/nrq;->startBuffer(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
