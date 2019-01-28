.class public final Lc8/Irq;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

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
.field final delay:J

.field final scheduler:Lc8/amq;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 37
    .local p0, "this":Lc8/Irq;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lc8/Irq;->delay:J

    .line 39
    iput-object p3, p0, Lc8/Irq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lc8/Irq;->scheduler:Lc8/amq;

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
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
    .line 45
    .local p0, "this":Lc8/Irq;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lc8/Irq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 46
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 47
    new-instance v1, Lc8/Hrq;

    invoke-direct {v1, p0, p1, v0, p1}, Lc8/Hrq;-><init>(Lc8/Irq;Lc8/Omq;Lc8/Zlq;Lc8/Omq;)V

    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/Irq;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Irq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
