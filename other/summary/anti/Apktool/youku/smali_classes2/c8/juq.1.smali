.class public final Lc8/juq;
.super Ljava/lang/Object;
.source "OperatorSkipUntil.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TU;>;"
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
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/juq;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/juq;->other:Lc8/Vlq;

    .line 40
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/juq;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 45
    .local v1, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 47
    .local v0, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lc8/huq;

    invoke-direct {v2, p0, v0, v1}, Lc8/huq;-><init>(Lc8/juq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/qAq;)V

    .line 66
    .local v2, "u":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 67
    iget-object v3, p0, Lc8/juq;->other:Lc8/Vlq;

    invoke-virtual {v3, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 69
    new-instance v3, Lc8/iuq;

    invoke-direct {v3, p0, p1, v0, v1}, Lc8/iuq;-><init>(Lc8/juq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/qAq;)V

    return-object v3
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lc8/juq;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/juq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
