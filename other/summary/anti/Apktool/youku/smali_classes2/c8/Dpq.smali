.class public final Lc8/Dpq;
.super Ljava/lang/Object;
.source "OnSubscribeFilter.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cpq;
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

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
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
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/Dpq;, "Lrx/internal/operators/OnSubscribeFilter<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/Dpq;->source:Lc8/Vlq;

    .line 38
    iput-object p2, p0, Lc8/Dpq;->predicate:Lc8/Inq;

    .line 39
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
    .line 43
    .local p0, "this":Lc8/Dpq;, "Lrx/internal/operators/OnSubscribeFilter<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Cpq;

    iget-object v1, p0, Lc8/Dpq;->predicate:Lc8/Inq;

    invoke-direct {v0, p1, v1}, Lc8/Cpq;-><init>(Lc8/Omq;Lc8/Inq;)V

    .line 44
    .local v0, "parent":Lc8/Cpq;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 45
    iget-object v1, p0, Lc8/Dpq;->source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 46
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/Dpq;, "Lrx/internal/operators/OnSubscribeFilter<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Dpq;->call(Lc8/Omq;)V

    return-void
.end method
