.class public final Lc8/ipq;
.super Ljava/lang/Object;
.source "OnSubscribeAutoConnect.java"

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
.field final clients:Ljava/util/concurrent/atomic/AtomicInteger;

.field final connection:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;"
        }
    .end annotation
.end field

.field final numberOfSubscribers:I

.field final source:Lc8/Vzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vzq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vzq;ILc8/inq;)V
    .locals 2
    .param p2, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vzq",
            "<+TT;>;I",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/ipq;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "source":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<+TT;>;"
    .local p3, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-gtz p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "numberOfSubscribers > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lc8/ipq;->source:Lc8/Vzq;

    .line 45
    iput p2, p0, Lc8/ipq;->numberOfSubscribers:I

    .line 46
    iput-object p3, p0, Lc8/ipq;->connection:Lc8/inq;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/ipq;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
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
    .line 51
    .local p0, "this":Lc8/ipq;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/ipq;->source:Lc8/Vzq;

    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vzq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 52
    iget-object v0, p0, Lc8/ipq;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lc8/ipq;->numberOfSubscribers:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lc8/ipq;->source:Lc8/Vzq;

    iget-object v1, p0, Lc8/ipq;->connection:Lc8/inq;

    invoke-virtual {v0, v1}, Lc8/Vzq;->connect(Lc8/inq;)V

    .line 55
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/ipq;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ipq;->call(Lc8/Omq;)V

    return-void
.end method
