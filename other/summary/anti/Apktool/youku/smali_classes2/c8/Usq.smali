.class public Lc8/Usq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ssq;,
        Lc8/Tsq;
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
.field private final capacity:Ljava/lang/Long;

.field private final onOverflow:Lc8/hnq;

.field private final overflowStrategy:Lc8/Fkq;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lc8/Usq;->capacity:Ljava/lang/Long;

    .line 47
    iput-object v0, p0, Lc8/Usq;->onOverflow:Lc8/hnq;

    .line 48
    sget-object v0, Lc8/Gkq;->ON_OVERFLOW_DEFAULT:Lc8/Fkq;

    iput-object v0, p0, Lc8/Usq;->overflowStrategy:Lc8/Fkq;

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "capacity"    # J

    .prologue
    .line 58
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lc8/Gkq;->ON_OVERFLOW_DEFAULT:Lc8/Fkq;

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/Usq;-><init>(JLc8/hnq;Lc8/Fkq;)V

    .line 59
    return-void
.end method

.method public constructor <init>(JLc8/hnq;)V
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lc8/hnq;

    .prologue
    .line 69
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    sget-object v0, Lc8/Gkq;->ON_OVERFLOW_DEFAULT:Lc8/Fkq;

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/Usq;-><init>(JLc8/hnq;Lc8/Fkq;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLc8/hnq;Lc8/Fkq;)V
    .locals 3
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lc8/hnq;
    .param p4, "overflowStrategy"    # Lc8/Fkq;

    .prologue
    .line 80
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer capacity must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p4, :cond_1

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The BackpressureOverflow strategy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc8/Usq;->capacity:Ljava/lang/Long;

    .line 88
    iput-object p3, p0, Lc8/Usq;->onOverflow:Lc8/hnq;

    .line 89
    iput-object p4, p0, Lc8/Usq;->overflowStrategy:Lc8/Fkq;

    .line 90
    return-void
.end method

.method public static instance()Lc8/Usq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Usq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lc8/Tsq;->INSTANCE:Lc8/Usq;

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
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
    .line 97
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Ssq;

    iget-object v1, p0, Lc8/Usq;->capacity:Ljava/lang/Long;

    iget-object v2, p0, Lc8/Usq;->onOverflow:Lc8/hnq;

    iget-object v3, p0, Lc8/Usq;->overflowStrategy:Lc8/Fkq;

    invoke-direct {v0, p1, v1, v2, v3}, Lc8/Ssq;-><init>(Lc8/Omq;Ljava/lang/Long;Lc8/hnq;Lc8/Fkq;)V

    .line 101
    .local v0, "parent":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 102
    invoke-virtual {v0}, Lc8/Ssq;->manager()Lc8/Xlq;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 104
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/Usq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Usq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
