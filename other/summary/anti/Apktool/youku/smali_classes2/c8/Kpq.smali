.class public final Lc8/Kpq;
.super Ljava/lang/Object;
.source "OnSubscribeFromAsync.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jpq;,
        Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final asyncEmitter:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Lc8/Bkq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lc8/inq;Lrx/AsyncEmitter$BackpressureMode;)V
    .locals 0
    .param p2, "backpressure"    # Lrx/AsyncEmitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Lc8/Bkq",
            "<TT;>;>;",
            "Lrx/AsyncEmitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/Kpq;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    .local p1, "asyncEmitter":Lc8/inq;, "Lrx/functions/Action1<Lrx/AsyncEmitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/Kpq;->asyncEmitter:Lc8/inq;

    .line 39
    iput-object p2, p0, Lc8/Kpq;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    .line 40
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/Kpq;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    sget-object v1, Lc8/Jpq;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    iget-object v2, p0, Lc8/Kpq;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v2}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 64
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;-><init>(Lc8/Omq;I)V

    .line 69
    .local v0, "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :goto_0
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 70
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 71
    iget-object v1, p0, Lc8/Kpq;->asyncEmitter:Lc8/inq;

    invoke-interface {v1, v0}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 48
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_0
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 49
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_0

    .line 52
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_1
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 53
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_0

    .line 56
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_2
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 57
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_0

    .line 60
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    :pswitch_3
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 61
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/Kpq;, "Lrx/internal/operators/OnSubscribeFromAsync<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Kpq;->call(Lc8/Omq;)V

    return-void
.end method
