.class public final Lc8/Pqq;
.super Ljava/lang/Object;
.source "OnSubscribeTimerOnce.java"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lc8/Pqq;->time:J

    .line 37
    iput-object p3, p0, Lc8/Pqq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lc8/Pqq;->scheduler:Lc8/amq;

    .line 39
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 5
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
    .line 43
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lc8/Pqq;->scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 44
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 45
    new-instance v1, Lc8/Oqq;

    invoke-direct {v1, p0, p1}, Lc8/Oqq;-><init>(Lc8/Pqq;Lc8/Omq;)V

    iget-wide v2, p0, Lc8/Pqq;->time:J

    iget-object v4, p0, Lc8/Pqq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 57
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Pqq;->call(Lc8/Omq;)V

    return-void
.end method
