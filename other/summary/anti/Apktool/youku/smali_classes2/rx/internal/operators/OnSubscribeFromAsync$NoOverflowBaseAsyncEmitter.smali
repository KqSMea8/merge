.class public abstract Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NoOverflowBaseAsyncEmitter"
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
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


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
    .line 222
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 223
    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 233
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;->onOverflow()V

    goto :goto_0
.end method

.method abstract onOverflow()V
.end method
