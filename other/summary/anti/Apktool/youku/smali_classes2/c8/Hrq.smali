.class public Lc8/Hrq;
.super Lc8/Omq;
.source "OperatorDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Irq;->call(Lc8/Omq;)Lc8/Omq;
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
.field done:Z

.field final synthetic this$0:Lc8/Irq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$worker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Irq;Lc8/Omq;Lc8/Zlq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lc8/Hrq;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Hrq;->this$0:Lc8/Irq;

    iput-object p3, p0, Lc8/Hrq;->val$worker:Lc8/Zlq;

    iput-object p4, p0, Lc8/Hrq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 53
    .local p0, "this":Lc8/Hrq;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lc8/Hrq;->val$worker:Lc8/Zlq;

    new-instance v1, Lc8/Erq;

    invoke-direct {v1, p0}, Lc8/Erq;-><init>(Lc8/Hrq;)V

    iget-object v2, p0, Lc8/Hrq;->this$0:Lc8/Irq;

    iget-wide v2, v2, Lc8/Irq;->delay:J

    iget-object v4, p0, Lc8/Hrq;->this$0:Lc8/Irq;

    iget-object v4, v4, Lc8/Irq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lc8/Hrq;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lc8/Hrq;->val$worker:Lc8/Zlq;

    new-instance v1, Lc8/Frq;

    invoke-direct {v1, p0, p1}, Lc8/Frq;-><init>(Lc8/Hrq;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lc8/Hrq;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Hrq;->val$worker:Lc8/Zlq;

    new-instance v1, Lc8/Grq;

    invoke-direct {v1, p0, p1}, Lc8/Grq;-><init>(Lc8/Hrq;Ljava/lang/Object;)V

    iget-object v2, p0, Lc8/Hrq;->this$0:Lc8/Irq;

    iget-wide v2, v2, Lc8/Irq;->delay:J

    iget-object v4, p0, Lc8/Hrq;->this$0:Lc8/Irq;

    iget-object v4, v4, Lc8/Irq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 92
    return-void
.end method
