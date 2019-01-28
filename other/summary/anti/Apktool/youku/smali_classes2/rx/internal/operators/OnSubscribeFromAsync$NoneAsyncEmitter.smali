.class public final Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoneAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34699b00190316f1L


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 207
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->get()J

    move-result-wide v0

    .line 208
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method
