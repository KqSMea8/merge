.class public Lc8/Krq;
.super Lc8/Omq;
.source "OperatorDelayWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lrq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/Lrq;

.field final synthetic val$child:Lc8/qAq;

.field final synthetic val$delayedEmissions:Lc8/yBq;


# direct methods
.method constructor <init>(Lc8/Lrq;Lc8/Omq;Lc8/yBq;Lc8/qAq;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/Krq;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Krq;->this$0:Lc8/Lrq;

    iput-object p3, p0, Lc8/Krq;->val$delayedEmissions:Lc8/yBq;

    iput-object p4, p0, Lc8/Krq;->val$child:Lc8/qAq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lc8/Krq;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lc8/Krq;->val$delayedEmissions:Lc8/yBq;

    invoke-virtual {v0}, Lc8/yBq;->onCompleted()V

    .line 54
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lc8/Krq;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lc8/Krq;->val$child:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 59
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
    .line 64
    .local p0, "this":Lc8/Krq;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/Krq;->val$delayedEmissions:Lc8/yBq;

    iget-object v1, p0, Lc8/Krq;->this$0:Lc8/Lrq;

    iget-object v1, v1, Lc8/Lrq;->itemDelay:Lc8/Inq;

    invoke-interface {v1, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/Vlq;->defaultIfEmpty(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    new-instance v3, Lc8/Jrq;

    invoke-direct {v3, p0, p1}, Lc8/Jrq;-><init>(Lc8/Krq;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v2, v1}, Lc8/yBq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
