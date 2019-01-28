.class public final Lc8/uwq;
.super Ljava/lang/Object;
.source "SingleDoAfterTerminate.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/twq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lc8/hnq;

.field final source:Lc8/Mmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Mmq;Lc8/hnq;)V
    .locals 0
    .param p2, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<TT;>;",
            "Lc8/hnq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/uwq;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    .local p1, "source":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/uwq;->source:Lc8/Mmq;

    .line 35
    iput-object p2, p0, Lc8/uwq;->action:Lc8/hnq;

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/uwq;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    .local p1, "t":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/twq;

    iget-object v1, p0, Lc8/uwq;->action:Lc8/hnq;

    invoke-direct {v0, p1, v1}, Lc8/twq;-><init>(Lc8/Nmq;Lc8/hnq;)V

    .line 41
    .local v0, "parent":Lc8/twq;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 42
    iget-object v1, p0, Lc8/uwq;->source:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 43
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/uwq;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/uwq;->call(Lc8/Nmq;)V

    return-void
.end method
