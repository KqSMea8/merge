.class public final Lc8/ppq;
.super Lc8/Omq;
.source "OnSubscribeConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatMapInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final parent:Lc8/qpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qpq",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method public constructor <init>(Lc8/qpq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qpq",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    .local p1, "parent":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 324
    iput-object p1, p0, Lc8/ppq;->parent:Lc8/qpq;

    .line 325
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 345
    .local p0, "this":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/ppq;->parent:Lc8/qpq;

    iget-wide v2, p0, Lc8/ppq;->produced:J

    invoke-virtual {v0, v2, v3}, Lc8/qpq;->innerCompleted(J)V

    .line 346
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    .local p0, "this":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/ppq;->parent:Lc8/qpq;

    iget-wide v2, p0, Lc8/ppq;->produced:J

    invoke-virtual {v0, p1, v2, v3}, Lc8/qpq;->innerError(Ljava/lang/Throwable;J)V

    .line 341
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-wide v0, p0, Lc8/ppq;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/ppq;->produced:J

    .line 335
    iget-object v0, p0, Lc8/ppq;->parent:Lc8/qpq;

    invoke-virtual {v0, p1}, Lc8/qpq;->innerNext(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 329
    .local p0, "this":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/ppq;->parent:Lc8/qpq;

    iget-object v0, v0, Lc8/qpq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 330
    return-void
.end method
