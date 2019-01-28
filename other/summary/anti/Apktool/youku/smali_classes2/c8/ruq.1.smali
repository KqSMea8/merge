.class public final Lc8/ruq;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lc8/Rlq;


# annotations
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
.field final scheduler:Lc8/amq;

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/amq;)V
    .locals 0
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/ruq;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lc8/ruq;->scheduler:Lc8/amq;

    .line 37
    iput-object p1, p0, Lc8/ruq;->source:Lc8/Vlq;

    .line 38
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
    .line 42
    .local p0, "this":Lc8/ruq;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lc8/ruq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 43
    .local v0, "inner":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 45
    new-instance v1, Lc8/quq;

    invoke-direct {v1, p0, p1, v0}, Lc8/quq;-><init>(Lc8/ruq;Lc8/Omq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 97
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/ruq;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ruq;->call(Lc8/Omq;)V

    return-void
.end method
