.class public Lc8/Brq;
.super Lc8/Omq;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Drq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final self:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<*>;"
        }
    .end annotation
.end field

.field final state:Lc8/Crq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Crq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Drq;

.field final synthetic val$s:Lc8/qAq;

.field final synthetic val$ssub:Lc8/YBq;

.field final synthetic val$worker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Drq;Lc8/Omq;Lc8/YBq;Lc8/Zlq;Lc8/qAq;)V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lc8/Brq;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Brq;->this$0:Lc8/Drq;

    iput-object p3, p0, Lc8/Brq;->val$ssub:Lc8/YBq;

    iput-object p4, p0, Lc8/Brq;->val$worker:Lc8/Zlq;

    iput-object p5, p0, Lc8/Brq;->val$s:Lc8/qAq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 64
    new-instance v0, Lc8/Crq;

    invoke-direct {v0}, Lc8/Crq;-><init>()V

    iput-object v0, p0, Lc8/Brq;->state:Lc8/Crq;

    .line 65
    iput-object p0, p0, Lc8/Brq;->self:Lc8/Omq;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lc8/Brq;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lc8/Brq;->state:Lc8/Crq;

    iget-object v1, p0, Lc8/Brq;->val$s:Lc8/qAq;

    invoke-virtual {v0, v1, p0}, Lc8/Crq;->emitAndComplete(Lc8/Omq;Lc8/Omq;)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    .local p0, "this":Lc8/Brq;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lc8/Brq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Lc8/Brq;->unsubscribe()V

    .line 88
    iget-object v0, p0, Lc8/Brq;->state:Lc8/Crq;

    invoke-virtual {v0}, Lc8/Crq;->clear()V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lc8/Brq;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Brq;->state:Lc8/Crq;

    invoke-virtual {v1, p1}, Lc8/Crq;->next(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "index":I
    iget-object v1, p0, Lc8/Brq;->val$ssub:Lc8/YBq;

    iget-object v2, p0, Lc8/Brq;->val$worker:Lc8/Zlq;

    new-instance v3, Lc8/Arq;

    invoke-direct {v3, p0, v0}, Lc8/Arq;-><init>(Lc8/Brq;I)V

    iget-object v4, p0, Lc8/Brq;->this$0:Lc8/Drq;

    iget-wide v4, v4, Lc8/Drq;->timeout:J

    iget-object v6, p0, Lc8/Brq;->this$0:Lc8/Drq;

    iget-object v6, v6, Lc8/Drq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lc8/Brq;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Brq;->request(J)V

    .line 70
    return-void
.end method
