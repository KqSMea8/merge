.class public final Lc8/Dqq;
.super Lc8/bpq;
.source "OnSubscribeReduceSeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Eqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReduceSeedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/bpq",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final reducer:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Ljava/lang/Object;Lc8/Jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;TR;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Dqq;, "Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0, p1}, Lc8/bpq;-><init>(Lc8/Omq;)V

    .line 49
    iput-object p2, p0, Lc8/Dqq;->value:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dqq;->hasValue:Z

    .line 51
    iput-object p3, p0, Lc8/Dqq;->reducer:Lc8/Jnq;

    .line 52
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lc8/Dqq;, "Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lc8/Dqq;->reducer:Lc8/Jnq;

    iget-object v2, p0, Lc8/Dqq;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lc8/Dqq;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p0}, Lc8/Dqq;->unsubscribe()V

    .line 61
    iget-object v1, p0, Lc8/Dqq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
