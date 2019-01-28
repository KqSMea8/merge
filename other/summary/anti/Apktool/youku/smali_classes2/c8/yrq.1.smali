.class public Lc8/yrq;
.super Lc8/Omq;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zrq;->call(Lc8/Omq;)Lc8/Omq;
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

.field final synthetic this$0:Lc8/zrq;

.field final synthetic val$s:Lc8/qAq;

.field final synthetic val$ssub:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/zrq;Lc8/Omq;Lc8/qAq;Lc8/YBq;)V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lc8/yrq;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/yrq;->this$0:Lc8/zrq;

    iput-object p3, p0, Lc8/yrq;->val$s:Lc8/qAq;

    iput-object p4, p0, Lc8/yrq;->val$ssub:Lc8/YBq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 46
    new-instance v0, Lc8/Crq;

    invoke-direct {v0}, Lc8/Crq;-><init>()V

    iput-object v0, p0, Lc8/yrq;->state:Lc8/Crq;

    .line 47
    iput-object p0, p0, Lc8/yrq;->self:Lc8/Omq;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lc8/yrq;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lc8/yrq;->state:Lc8/Crq;

    iget-object v1, p0, Lc8/yrq;->val$s:Lc8/qAq;

    invoke-virtual {v0, v1, p0}, Lc8/Crq;->emitAndComplete(Lc8/Omq;Lc8/Omq;)V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    .local p0, "this":Lc8/yrq;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    iget-object v0, p0, Lc8/yrq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lc8/yrq;->unsubscribe()V

    .line 97
    iget-object v0, p0, Lc8/yrq;->state:Lc8/Crq;

    invoke-virtual {v0}, Lc8/Crq;->clear()V

    .line 98
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
    .line 60
    .local p0, "this":Lc8/yrq;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lc8/yrq;->this$0:Lc8/zrq;

    iget-object v4, v4, Lc8/zrq;->selector:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v1, "debouncer":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    iget-object v4, p0, Lc8/yrq;->state:Lc8/Crq;

    invoke-virtual {v4, p1}, Lc8/Crq;->next(Ljava/lang/Object;)I

    move-result v3

    .line 69
    .local v3, "index":I
    new-instance v0, Lc8/xrq;

    invoke-direct {v0, p0, v3}, Lc8/xrq;-><init>(Lc8/yrq;I)V

    .line 87
    .local v0, "debounceSubscriber":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    iget-object v4, p0, Lc8/yrq;->val$ssub:Lc8/YBq;

    invoke-virtual {v4, v0}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 89
    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 91
    .end local v0    # "debounceSubscriber":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    .end local v1    # "debouncer":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    .end local v3    # "index":I
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lc8/yrq;, "Lrx/internal/operators/OperatorDebounceWithSelector.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/yrq;->request(J)V

    .line 53
    return-void
.end method
