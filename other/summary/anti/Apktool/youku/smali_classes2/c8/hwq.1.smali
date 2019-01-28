.class public final Lc8/hwq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fwq;,
        Lc8/Zvq;,
        Lc8/cwq;,
        Lc8/gwq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Vlq",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final NL:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final scheduler:Lc8/amq;

.field final size:I

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/hwq;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 52
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    sput-object v0, Lc8/hwq;->NL:Lc8/cpq;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "size"    # I
    .param p7, "scheduler"    # Lc8/amq;

    .prologue
    .line 55
    .local p0, "this":Lc8/hwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lc8/hwq;->timespan:J

    .line 57
    iput-wide p3, p0, Lc8/hwq;->timeshift:J

    .line 58
    iput-object p5, p0, Lc8/hwq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 59
    iput p6, p0, Lc8/hwq;->size:I

    .line 60
    iput-object p7, p0, Lc8/hwq;->scheduler:Lc8/amq;

    .line 61
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/hwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget-object v3, p0, Lc8/hwq;->scheduler:Lc8/amq;

    invoke-virtual {v3}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v2

    .line 68
    .local v2, "worker":Lc8/Zlq;
    iget-wide v4, p0, Lc8/hwq;->timespan:J

    iget-wide v6, p0, Lc8/hwq;->timeshift:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 69
    new-instance v0, Lc8/cwq;

    invoke-direct {v0, p0, p1, v2}, Lc8/cwq;-><init>(Lc8/hwq;Lc8/Omq;Lc8/Zlq;)V

    .line 70
    .local v0, "s":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v0, v2}, Lc8/cwq;->add(Lc8/Pmq;)V

    .line 71
    invoke-virtual {v0}, Lc8/cwq;->scheduleExact()V

    .line 79
    .end local v0    # "s":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v1, Lc8/fwq;

    invoke-direct {v1, p0, p1, v2}, Lc8/fwq;-><init>(Lc8/hwq;Lc8/Omq;Lc8/Zlq;)V

    .line 76
    .local v1, "s":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v1, v2}, Lc8/fwq;->add(Lc8/Pmq;)V

    .line 77
    invoke-virtual {v1}, Lc8/fwq;->startNewChunk()V

    .line 78
    invoke-virtual {v1}, Lc8/fwq;->scheduleChunk()V

    move-object v0, v1

    .line 79
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lc8/hwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hwq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
