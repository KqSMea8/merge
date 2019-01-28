.class public final Lc8/kpq;
.super Ljava/lang/Object;
.source "OnSubscribeCollect.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final collectionFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<TR;>;"
        }
    .end annotation
.end field

.field final collector:Lc8/jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/jnq",
            "<TR;-TT;>;"
        }
    .end annotation
.end field

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Hnq;Lc8/jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Hnq",
            "<TR;>;",
            "Lc8/jnq",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/kpq;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "collectionFactory":Lc8/Hnq;, "Lrx/functions/Func0<TR;>;"
    .local p3, "collector":Lc8/jnq;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/kpq;->source:Lc8/Vlq;

    .line 34
    iput-object p2, p0, Lc8/kpq;->collectionFactory:Lc8/Hnq;

    .line 35
    iput-object p3, p0, Lc8/kpq;->collector:Lc8/jnq;

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/kpq;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lc8/kpq;->collectionFactory:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "initialValue":Ljava/lang/Object;, "TR;"
    new-instance v2, Lc8/jpq;

    iget-object v3, p0, Lc8/kpq;->collector:Lc8/jnq;

    invoke-direct {v2, p1, v1, v3}, Lc8/jpq;-><init>(Lc8/Omq;Ljava/lang/Object;Lc8/jnq;)V

    iget-object v3, p0, Lc8/kpq;->source:Lc8/Vlq;

    invoke-virtual {v2, v3}, Lc8/jpq;->subscribeTo(Lc8/Vlq;)V

    .line 51
    .end local v1    # "initialValue":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lc8/kpq;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/kpq;->call(Lc8/Omq;)V

    return-void
.end method
