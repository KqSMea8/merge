.class public Lrx/internal/operators/OperatorElementAt$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorElementAt.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ksq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final actual:Lc8/Xlq;


# direct methods
.method public constructor <init>(Lc8/Xlq;)V
    .locals 0
    .param p1, "actual"    # Lc8/Xlq;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OperatorElementAt$InnerProducer;->actual:Lc8/Xlq;

    .line 104
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 107
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$InnerProducer;->actual:Lc8/Xlq;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lc8/Xlq;->request(J)V

    .line 115
    :cond_1
    return-void
.end method
