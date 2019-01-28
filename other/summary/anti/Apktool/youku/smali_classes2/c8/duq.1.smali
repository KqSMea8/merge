.class public Lc8/duq;
.super Ljava/lang/Object;
.source "OperatorSkipLastTimed.java"

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

.field final timeInMillis:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 34
    .local p0, "this":Lc8/duq;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/duq;->timeInMillis:J

    .line 36
    iput-object p4, p0, Lc8/duq;->scheduler:Lc8/amq;

    .line 37
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
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
    .line 41
    .local p0, "this":Lc8/duq;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/cuq;

    invoke-direct {v0, p0, p1, p1}, Lc8/cuq;-><init>(Lc8/duq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/duq;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/duq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
