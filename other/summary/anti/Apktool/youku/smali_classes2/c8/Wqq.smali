.class public Lc8/Wqq;
.super Lc8/Omq;
.source "OperatorAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xqq;->call(Lc8/Omq;)Lc8/Omq;
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

.field final synthetic this$0:Lc8/Xqq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lc8/Xqq;Lrx/internal/producers/SingleDelayedProducer;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lc8/Wqq;, "Lrx/internal/operators/OperatorAll.1;"
    iput-object p1, p0, Lc8/Wqq;->this$0:Lc8/Xqq;

    iput-object p2, p0, Lc8/Wqq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lc8/Wqq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/Wqq;, "Lrx/internal/operators/OperatorAll.1;"
    const/4 v1, 0x1

    .line 69
    iget-boolean v0, p0, Lc8/Wqq;->done:Z

    if-nez v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lc8/Wqq;->done:Z

    .line 71
    iget-object v0, p0, Lc8/Wqq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lc8/Wqq;, "Lrx/internal/operators/OperatorAll.1;"
    iget-object v0, p0, Lc8/Wqq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Wqq;, "Lrx/internal/operators/OperatorAll.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/Wqq;->this$0:Lc8/Xqq;

    iget-object v2, v2, Lc8/Xqq;->predicate:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lc8/Wqq;->done:Z

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Wqq;->done:Z

    .line 55
    iget-object v2, p0, Lc8/Wqq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lc8/Wqq;->unsubscribe()V

    .line 60
    .end local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method
