.class public final Lc8/Cqq;
.super Ljava/lang/Object;
.source "OnSubscribeReduce.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Bqq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final reducer:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TT;TT;TT;>;"
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
.method public constructor <init>(Lc8/Vlq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Jnq",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/Cqq;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "reducer":Lc8/Jnq;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/Cqq;->source:Lc8/Vlq;

    .line 34
    iput-object p2, p0, Lc8/Cqq;->reducer:Lc8/Jnq;

    .line 35
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/Cqq;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Bqq;

    iget-object v1, p0, Lc8/Cqq;->reducer:Lc8/Jnq;

    invoke-direct {v0, p1, v1}, Lc8/Bqq;-><init>(Lc8/Omq;Lc8/Jnq;)V

    .line 40
    .local v0, "parent":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 41
    new-instance v1, Lc8/Aqq;

    invoke-direct {v1, p0, v0}, Lc8/Aqq;-><init>(Lc8/Cqq;Lc8/Bqq;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 47
    iget-object v1, p0, Lc8/Cqq;->source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 48
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lc8/Cqq;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Cqq;->call(Lc8/Omq;)V

    return-void
.end method
