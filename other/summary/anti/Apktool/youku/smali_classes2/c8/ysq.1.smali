.class public final Lc8/ysq;
.super Lc8/Omq;
.source "OperatorMapPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapPairSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final collectionSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Inq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<+TR;>;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<+TR;>;>;"
    .local p2, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p3, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 83
    iput-object p1, p0, Lc8/ysq;->actual:Lc8/Omq;

    .line 84
    iput-object p2, p0, Lc8/ysq;->collectionSelector:Lc8/Inq;

    .line 85
    iput-object p3, p0, Lc8/ysq;->resultSelector:Lc8/Jnq;

    .line 86
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-boolean v0, p0, Lc8/ysq;->done:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lc8/ysq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    .local p0, "this":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-boolean v0, p0, Lc8/ysq;->done:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ysq;->done:Z

    .line 113
    iget-object v0, p0, Lc8/ysq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/ysq;->collectionSelector:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v1, "intermediate":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    iget-object v2, p0, Lc8/ysq;->actual:Lc8/Omq;

    new-instance v3, Lc8/zsq;

    iget-object v4, p0, Lc8/ysq;->resultSelector:Lc8/Jnq;

    invoke-direct {v3, p1, v4}, Lc8/zsq;-><init>(Ljava/lang/Object;Lc8/Jnq;)V

    invoke-virtual {v1, v3}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 103
    .end local v1    # "intermediate":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0}, Lc8/ysq;->unsubscribe()V

    .line 98
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/ysq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 127
    .local p0, "this":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-object v0, p0, Lc8/ysq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 128
    return-void
.end method
