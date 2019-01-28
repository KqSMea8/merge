.class public final Lc8/Htq;
.super Ljava/lang/Object;
.source "OperatorSampleWithObservable.java"

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


# static fields
.field static final EMPTY_TOKEN:Ljava/lang/Object;


# instance fields
.field final sampler:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Htq;->EMPTY_TOKEN:Ljava/lang/Object;

    return-void
.end method

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
    .line 37
    .local p0, "this":Lc8/Htq;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "sampler":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/Htq;->sampler:Lc8/Vlq;

    .line 39
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 6
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
    .line 43
    .local p0, "this":Lc8/Htq;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lc8/qAq;

    invoke-direct {v2, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 45
    .local v2, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lc8/Htq;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v4, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    .local v0, "main":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    new-instance v3, Lc8/Ftq;

    invoke-direct {v3, p0, v4, v2, v0}, Lc8/Ftq;-><init>(Lc8/Htq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 76
    .local v3, "samplerSub":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    new-instance v1, Lc8/Gtq;

    invoke-direct {v1, p0, v4, v2, v3}, Lc8/Gtq;-><init>(Lc8/Htq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/qAq;Lc8/Omq;)V

    .line 98
    .local v1, "result":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 101
    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 103
    iget-object v5, p0, Lc8/Htq;->sampler:Lc8/Vlq;

    invoke-virtual {v5, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 105
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/Htq;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Htq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
