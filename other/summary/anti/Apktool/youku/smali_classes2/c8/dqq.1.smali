.class public final Lc8/dqq;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cqq;
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
.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final transformer:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/dqq;, "Lrx/internal/operators/OnSubscribeMap<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "transformer":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/dqq;->source:Lc8/Vlq;

    .line 41
    iput-object p2, p0, Lc8/dqq;->transformer:Lc8/Inq;

    .line 42
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/dqq;, "Lrx/internal/operators/OnSubscribeMap<TT;TR;>;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/cqq;

    iget-object v1, p0, Lc8/dqq;->transformer:Lc8/Inq;

    invoke-direct {v0, p1, v1}, Lc8/cqq;-><init>(Lc8/Omq;Lc8/Inq;)V

    .line 47
    .local v0, "parent":Lc8/cqq;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 48
    iget-object v1, p0, Lc8/dqq;->source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 49
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/dqq;, "Lrx/internal/operators/OnSubscribeMap<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/dqq;->call(Lc8/Omq;)V

    return-void
.end method
