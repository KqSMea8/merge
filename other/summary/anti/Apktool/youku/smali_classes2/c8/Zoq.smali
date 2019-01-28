.class public final Lc8/Zoq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lc8/Llq;


# instance fields
.field final other:Lc8/Plq;

.field final scheduler:Lc8/amq;

.field final source:Lc8/Plq;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lc8/Plq;JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)V
    .locals 0
    .param p1, "source"    # Lc8/Plq;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .param p6, "other"    # Lc8/Plq;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/Zoq;->source:Lc8/Plq;

    .line 39
    iput-wide p2, p0, Lc8/Zoq;->timeout:J

    .line 40
    iput-object p4, p0, Lc8/Zoq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lc8/Zoq;->scheduler:Lc8/amq;

    .line 42
    iput-object p6, p0, Lc8/Zoq;->other:Lc8/Plq;

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 7
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 47
    new-instance v1, Lc8/SBq;

    invoke-direct {v1}, Lc8/SBq;-><init>()V

    .line 48
    .local v1, "set":Lc8/SBq;
    invoke-interface {p1, v1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 52
    .local v0, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lc8/Zoq;->scheduler:Lc8/amq;

    invoke-virtual {v3}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v2

    .line 54
    .local v2, "w":Lc8/Zlq;
    invoke-virtual {v1, v2}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 55
    new-instance v3, Lc8/Xoq;

    invoke-direct {v3, p0, v0, v1, p1}, Lc8/Xoq;-><init>(Lc8/Zoq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/SBq;Lc8/Nlq;)V

    iget-wide v4, p0, Lc8/Zoq;->timeout:J

    iget-object v6, p0, Lc8/Zoq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 88
    iget-object v3, p0, Lc8/Zoq;->source:Lc8/Plq;

    new-instance v4, Lc8/Yoq;

    invoke-direct {v4, p0, v1, v0, p1}, Lc8/Yoq;-><init>(Lc8/Zoq;Lc8/SBq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Nlq;)V

    invoke-virtual {v3, v4}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 114
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Zoq;->call(Lc8/Nlq;)V

    return-void
.end method
