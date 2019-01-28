.class public Lc8/Cuq;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Duq;->setProducer(Lc8/Xlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$1:Lc8/Duq;

.field final synthetic val$producer:Lc8/Xlq;


# direct methods
.method constructor <init>(Lc8/Duq;Lc8/Xlq;)V
    .locals 4

    .prologue
    .line 93
    .local p0, "this":Lc8/Cuq;, "Lrx/internal/operators/OperatorTake$1.1;"
    iput-object p1, p0, Lc8/Cuq;->this$1:Lc8/Duq;

    iput-object p2, p0, Lc8/Cuq;->val$producer:Lc8/Xlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/Cuq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/Cuq;, "Lrx/internal/operators/OperatorTake$1.1;"
    const-wide/16 v8, 0x0

    .line 100
    cmp-long v4, p1, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lc8/Cuq;->this$1:Lc8/Duq;

    iget-boolean v4, v4, Lc8/Duq;->completed:Z

    if-nez v4, :cond_1

    .line 104
    :cond_0
    iget-object v4, p0, Lc8/Cuq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 105
    .local v2, "r":J
    iget-object v4, p0, Lc8/Cuq;->this$1:Lc8/Duq;

    iget-object v4, v4, Lc8/Duq;->this$0:Lc8/Euq;

    iget v4, v4, Lc8/Euq;->limit:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 106
    .local v0, "c":J
    cmp-long v4, v0, v8

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lc8/Cuq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    add-long v6, v2, v0

    invoke-virtual {v4, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lc8/Cuq;->val$producer:Lc8/Xlq;

    invoke-interface {v4, v0, v1}, Lc8/Xlq;->request(J)V

    .line 114
    .end local v0    # "c":J
    .end local v2    # "r":J
    :cond_1
    return-void
.end method
