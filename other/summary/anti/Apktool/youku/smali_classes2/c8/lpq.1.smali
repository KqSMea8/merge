.class public final Lc8/lpq;
.super Lc8/Omq;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CombinerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:I

.field public final nl:Lc8/cpq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lc8/lpq;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 368
    iput-object p1, p0, Lc8/lpq;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    .line 369
    iput p2, p0, Lc8/lpq;->index:I

    .line 370
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/lpq;->nl:Lc8/cpq;

    .line 371
    iget v0, p1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/lpq;->request(J)V

    .line 372
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 395
    .local p0, "this":Lc8/lpq;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/lpq;->done:Z

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lpq;->done:Z

    .line 399
    iget-object v0, p0, Lc8/lpq;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lc8/lpq;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 384
    .local p0, "this":Lc8/lpq;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/lpq;->done:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lc8/lpq;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->onError(Ljava/lang/Throwable;)V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lpq;->done:Z

    .line 390
    iget-object v0, p0, Lc8/lpq;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lc8/lpq;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lc8/lpq;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/lpq;->done:Z

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lc8/lpq;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v1, p0, Lc8/lpq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lc8/lpq;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 403
    .local p0, "this":Lc8/lpq;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lc8/lpq;->request(J)V

    .line 404
    return-void
.end method
