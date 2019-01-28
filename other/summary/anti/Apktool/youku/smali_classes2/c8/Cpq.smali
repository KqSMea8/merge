.class public final Lc8/Cpq;
.super Lc8/Omq;
.source "OnSubscribeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterSubscriber"
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
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final predicate:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Inq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 57
    iput-object p1, p0, Lc8/Cpq;->actual:Lc8/Omq;

    .line 58
    iput-object p2, p0, Lc8/Cpq;->predicate:Lc8/Inq;

    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/Cpq;->request(J)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Cpq;->done:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/Cpq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Cpq;->done:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cpq;->done:Z

    .line 90
    iget-object v0, p0, Lc8/Cpq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/Cpq;->predicate:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 76
    iget-object v2, p0, Lc8/Cpq;->actual:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 80
    .end local v1    # "result":Z
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lc8/Cpq;->unsubscribe()V

    .line 71
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Cpq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/Cpq;->request(J)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 103
    .local p0, "this":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    invoke-super {p0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 104
    iget-object v0, p0, Lc8/Cpq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 105
    return-void
.end method
