.class public final Lc8/Rqq;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lc8/amq;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lc8/amq;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lc8/Rqq;->initialDelay:J

    .line 38
    iput-wide p3, p0, Lc8/Rqq;->period:J

    .line 39
    iput-object p5, p0, Lc8/Rqq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lc8/Rqq;->scheduler:Lc8/amq;

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lc8/Rqq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 46
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 47
    new-instance v1, Lc8/Qqq;

    invoke-direct {v1, p0, p1, v0}, Lc8/Qqq;-><init>(Lc8/Rqq;Lc8/Omq;Lc8/Zlq;)V

    iget-wide v2, p0, Lc8/Rqq;->initialDelay:J

    iget-wide v4, p0, Lc8/Rqq;->period:J

    iget-object v6, p0, Lc8/Rqq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lc8/Zlq;->schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 63
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Rqq;->call(Lc8/Omq;)V

    return-void
.end method
