.class public final Lc8/upq;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscription.java"

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
            "<+TT;>;"
        }
    .end annotation
.end field

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/upq;, "Lrx/internal/operators/OnSubscribeDelaySubscription<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/upq;->source:Lc8/Vlq;

    .line 39
    iput-wide p2, p0, Lc8/upq;->time:J

    .line 40
    iput-object p4, p0, Lc8/upq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lc8/upq;->scheduler:Lc8/amq;

    .line 42
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/upq;, "Lrx/internal/operators/OnSubscribeDelaySubscription<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lc8/upq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 47
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 49
    new-instance v1, Lc8/tpq;

    invoke-direct {v1, p0, p1}, Lc8/tpq;-><init>(Lc8/upq;Lc8/Omq;)V

    iget-wide v2, p0, Lc8/upq;->time:J

    iget-object v4, p0, Lc8/upq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 57
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/upq;, "Lrx/internal/operators/OnSubscribeDelaySubscription<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/upq;->call(Lc8/Omq;)V

    return-void
.end method
