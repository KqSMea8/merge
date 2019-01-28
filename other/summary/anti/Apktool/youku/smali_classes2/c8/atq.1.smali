.class public final Lc8/atq;
.super Lc8/Omq;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/btq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatestSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 200
    iput-object p1, p0, Lc8/atq;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    .line 201
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/atq;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onCompleted()V

    .line 222
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/atq;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onError(Ljava/lang/Throwable;)V

    .line 217
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
    .line 211
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/atq;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onNext(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 206
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/atq;->request(J)V

    .line 207
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lc8/atq;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/atq;->request(J)V

    .line 225
    return-void
.end method
