.class public Lc8/Tqq;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Uqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToObservableFuture"
.end annotation

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
.field final that:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Tqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/Tqq;->that:Ljava/util/concurrent/Future;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Tqq;->time:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Tqq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/Tqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lc8/Tqq;->that:Ljava/util/concurrent/Future;

    .line 56
    iput-wide p2, p0, Lc8/Tqq;->time:J

    .line 57
    iput-object p4, p0, Lc8/Tqq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 58
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lc8/Tqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lc8/Sqq;

    invoke-direct {v2, p0}, Lc8/Sqq;-><init>(Lc8/Tqq;)V

    invoke-static {v2}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lc8/Tqq;->unit:Ljava/util/concurrent/TimeUnit;

    if-nez v2, :cond_2

    iget-object v2, p0, Lc8/Tqq;->that:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_1
    new-instance v2, Lrx/internal/producers/SingleProducer;

    invoke-direct {v2, p1, v1}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lc8/Omq;->setProducer(Lc8/Xlq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-static {v0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lc8/Tqq;->that:Ljava/util/concurrent/Future;

    iget-wide v4, p0, Lc8/Tqq;->time:J

    iget-object v3, p0, Lc8/Tqq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lc8/Tqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Tqq;->call(Lc8/Omq;)V

    return-void
.end method
