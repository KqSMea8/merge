.class public Lc8/Wsq;
.super Lc8/Omq;
.source "OperatorOnBackpressureDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ysq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ysq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lc8/Ysq;Lc8/Omq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lc8/Wsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Wsq;->this$0:Lc8/Ysq;

    iput-object p3, p0, Lc8/Wsq;->val$child:Lc8/Omq;

    iput-object p4, p0, Lc8/Wsq;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lc8/Wsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    iget-object v0, p0, Lc8/Wsq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lc8/Wsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    iget-object v0, p0, Lc8/Wsq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lc8/Wsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Wsq;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 83
    iget-object v1, p0, Lc8/Wsq;->val$child:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lc8/Wsq;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lc8/Wsq;->this$0:Lc8/Ysq;

    iget-object v1, v1, Lc8/Ysq;->onDrop:Lc8/inq;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lc8/Wsq;->this$0:Lc8/Ysq;

    iget-object v1, v1, Lc8/Ysq;->onDrop:Lc8/inq;

    invoke-interface {v1, p1}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/Wsq;->val$child:Lc8/Omq;

    invoke-static {v0, v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lc8/Wsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Wsq;->request(J)V

    .line 68
    return-void
.end method
