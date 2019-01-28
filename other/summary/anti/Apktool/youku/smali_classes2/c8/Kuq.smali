.class public final Lc8/Kuq;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Juq;
    }
.end annotation

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
.field final ageMillis:J

.field final count:I

.field final scheduler:Lc8/amq;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;

    .prologue
    .line 45
    .local p0, "this":Lc8/Kuq;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Kuq;->ageMillis:J

    .line 50
    iput-object p5, p0, Lc8/Kuq;->scheduler:Lc8/amq;

    .line 51
    iput p1, p0, Lc8/Kuq;->count:I

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 39
    .local p0, "this":Lc8/Kuq;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Kuq;->ageMillis:J

    .line 41
    iput-object p4, p0, Lc8/Kuq;->scheduler:Lc8/amq;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lc8/Kuq;->count:I

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 7
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
    .line 56
    .local p0, "this":Lc8/Kuq;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lc8/Juq;

    iget v3, p0, Lc8/Kuq;->count:I

    iget-wide v4, p0, Lc8/Kuq;->ageMillis:J

    iget-object v6, p0, Lc8/Kuq;->scheduler:Lc8/amq;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lc8/Juq;-><init>(Lc8/Omq;IJLc8/amq;)V

    .line 58
    .local v1, "parent":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 59
    new-instance v0, Lc8/Iuq;

    invoke-direct {v0, p0, v1}, Lc8/Iuq;-><init>(Lc8/Kuq;Lc8/Juq;)V

    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 66
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/Kuq;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Kuq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
