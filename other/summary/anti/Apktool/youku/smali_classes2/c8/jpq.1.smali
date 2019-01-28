.class public final Lc8/jpq;
.super Lc8/bpq;
.source "OnSubscribeCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectSubscriber"
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
.field final collector:Lc8/jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/jnq",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Ljava/lang/Object;Lc8/jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;TR;",
            "Lc8/jnq",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/jpq;, "Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "collector":Lc8/jnq;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0, p1}, Lc8/bpq;-><init>(Lc8/Omq;)V

    .line 59
    iput-object p2, p0, Lc8/jpq;->value:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jpq;->hasValue:Z

    .line 61
    iput-object p3, p0, Lc8/jpq;->collector:Lc8/jnq;

    .line 62
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
    .line 67
    .local p0, "this":Lc8/jpq;, "Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lc8/jpq;->collector:Lc8/jnq;

    iget-object v2, p0, Lc8/jpq;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lc8/jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lc8/jpq;->unsubscribe()V

    .line 71
    iget-object v1, p0, Lc8/jpq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
