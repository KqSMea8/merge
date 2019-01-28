.class public final Lc8/guq;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lc8/amq;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 35
    .local p0, "this":Lc8/guq;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lc8/guq;->time:J

    .line 37
    iput-object p3, p0, Lc8/guq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lc8/guq;->scheduler:Lc8/amq;

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
    .local p0, "this":Lc8/guq;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lc8/guq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    .line 44
    .local v1, "worker":Lc8/Zlq;
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v0, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lc8/euq;

    invoke-direct {v2, p0, v0}, Lc8/euq;-><init>(Lc8/guq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v4, p0, Lc8/guq;->time:J

    iget-object v3, p0, Lc8/guq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 52
    new-instance v2, Lc8/fuq;

    invoke-direct {v2, p0, p1, v0, p1}, Lc8/fuq;-><init>(Lc8/guq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Omq;)V

    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/guq;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/guq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
