.class public final Lc8/vrq;
.super Lc8/Omq;
.source "OperatorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CastSubscriber"
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

.field final castClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lc8/Omq;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/vrq;->actual:Lc8/Omq;

    .line 53
    iput-object p2, p0, Lc8/vrq;->castClass:Ljava/lang/Class;

    .line 54
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/vrq;->done:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lc8/vrq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/vrq;->done:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vrq;->done:Z

    .line 80
    iget-object v0, p0, Lc8/vrq;->actual:Lc8/Omq;

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
    .line 61
    .local p0, "this":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/vrq;->castClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lc8/vrq;->actual:Lc8/Omq;

    invoke-virtual {v2, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 70
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0}, Lc8/vrq;->unsubscribe()V

    .line 65
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/vrq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 94
    .local p0, "this":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/vrq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 95
    return-void
.end method
