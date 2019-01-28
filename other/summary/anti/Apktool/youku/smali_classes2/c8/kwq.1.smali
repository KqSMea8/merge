.class public final Lc8/kwq;
.super Ljava/lang/Object;
.source "OperatorWithLatestFrom.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TU;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/kwq;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Vlq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TU;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/kwq;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/kwq;->other:Lc8/Vlq;

    .line 40
    iput-object p2, p0, Lc8/kwq;->resultSelector:Lc8/Jnq;

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/kwq;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lc8/qAq;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lc8/qAq;-><init>(Lc8/Omq;Z)V

    .line 46
    .local v2, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TR;>;"
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 48
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/kwq;->EMPTY:Ljava/lang/Object;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .local v4, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Lc8/iwq;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lc8/iwq;-><init>(Lc8/kwq;Lc8/Omq;ZLjava/util/concurrent/atomic/AtomicReference;Lc8/qAq;)V

    .line 78
    .local v0, "subscriber":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v6, Lc8/jwq;

    invoke-direct {v6, p0, v4, v2}, Lc8/jwq;-><init>(Lc8/kwq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;)V

    .line 96
    .local v6, "otherSubscriber":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v0}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 97
    invoke-virtual {v2, v6}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 99
    iget-object v1, p0, Lc8/kwq;->other:Lc8/Vlq;

    invoke-virtual {v1, v6}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 101
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/kwq;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/kwq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
