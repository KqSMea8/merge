.class public final Lc8/Bpq;
.super Ljava/lang/Object;
.source "OnSubscribeDetach.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;,
        Lc8/zpq;,
        Lc8/Apq;
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
.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/Bpq;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/Bpq;->source:Lc8/Vlq;

    .line 35
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/Bpq;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Apq;

    invoke-direct {v0, p1}, Lc8/Apq;-><init>(Lc8/Omq;)V

    .line 40
    .local v0, "parent":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    new-instance v1, Lc8/zpq;

    invoke-direct {v1, v0}, Lc8/zpq;-><init>(Lc8/Apq;)V

    .line 42
    .local v1, "producer":Lc8/zpq;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 43
    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 45
    iget-object v2, p0, Lc8/Bpq;->source:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 46
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/Bpq;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Bpq;->call(Lc8/Omq;)V

    return-void
.end method
