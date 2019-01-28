.class public final Lc8/cqq;
.super Lc8/Omq;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSubscriber"
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
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/cqq;->actual:Lc8/Omq;

    .line 61
    iput-object p2, p0, Lc8/cqq;->mapper:Lc8/Inq;

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/cqq;->done:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lc8/cqq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    .local p0, "this":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/cqq;->done:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/cqq;->done:Z

    .line 88
    iget-object v0, p0, Lc8/cqq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

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
    .line 69
    .local p0, "this":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/cqq;->mapper:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lc8/cqq;->actual:Lc8/Omq;

    invoke-virtual {v2, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lc8/cqq;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/cqq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 102
    .local p0, "this":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/cqq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 103
    return-void
.end method
