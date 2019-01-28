.class public abstract Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromAsync.java"

# interfaces
.implements Lc8/Bkq;
.implements Lc8/Pmq;
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lc8/Bkq",
        "<TT;>;",
        "Lc8/Xlq;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final serial:Lc8/YBq;


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 118
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->actual:Lc8/Omq;

    .line 119
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    .line 120
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v0}, Lc8/YBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v0}, Lc8/YBq;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v1}, Lc8/YBq;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v0}, Lc8/YBq;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v1}, Lc8/YBq;->unsubscribe()V

    throw v0
.end method

.method onRequested()V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .locals 0

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    invoke-static {p1, p2}, Lc8/ioq;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 165
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onRequested()V

    .line 167
    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Lc8/Akq;)V
    .locals 1
    .param p1, "c"    # Lc8/Akq;

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;-><init>(Lc8/Akq;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->setSubscription(Lc8/Pmq;)V

    .line 181
    return-void
.end method

.method public final setSubscription(Lc8/Pmq;)V
    .locals 1
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 176
    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->serial:Lc8/YBq;

    invoke-virtual {v0}, Lc8/YBq;->unsubscribe()V

    .line 149
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onUnsubscribed()V

    .line 150
    return-void
.end method
