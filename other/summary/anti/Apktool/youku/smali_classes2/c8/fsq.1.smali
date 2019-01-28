.class public final Lc8/fsq;
.super Lc8/Omq;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/isq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EagerInnerSubscriber"
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
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lc8/hsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/hsq",
            "<*TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/hsq;I)V
    .locals 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hsq",
            "<*TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "parent":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<*TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 287
    iput-object p1, p0, Lc8/fsq;->parent:Lc8/hsq;

    .line 289
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v0, Lc8/hzq;

    invoke-direct {v0, p2}, Lc8/hzq;-><init>(I)V

    .line 294
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lc8/fsq;->queue:Ljava/util/Queue;

    .line 295
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    iput-object v1, p0, Lc8/fsq;->nl:Lc8/cpq;

    .line 296
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lc8/fsq;->request(J)V

    .line 297
    return-void

    .line 292
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lc8/Eyq;

    invoke-direct {v0, p2}, Lc8/Eyq;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fsq;->done:Z

    .line 315
    iget-object v0, p0, Lc8/fsq;->parent:Lc8/hsq;

    invoke-virtual {v0}, Lc8/hsq;->drain()V

    .line 316
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 307
    .local p0, "this":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    iput-object p1, p0, Lc8/fsq;->error:Ljava/lang/Throwable;

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fsq;->done:Z

    .line 309
    iget-object v0, p0, Lc8/fsq;->parent:Lc8/hsq;

    invoke-virtual {v0}, Lc8/hsq;->drain()V

    .line 310
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
    .line 301
    .local p0, "this":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/fsq;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lc8/fsq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lc8/fsq;->parent:Lc8/hsq;

    invoke-virtual {v0}, Lc8/hsq;->drain()V

    .line 303
    return-void
.end method

.method requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 319
    .local p0, "this":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/fsq;->request(J)V

    .line 320
    return-void
.end method
