.class public Lc8/Yrq;
.super Lc8/Omq;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zrq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private done:Z

.field final synthetic this$0:Lc8/Zrq;

.field final synthetic val$observer:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Zrq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lc8/Yrq;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Yrq;->this$0:Lc8/Zrq;

    iput-object p3, p0, Lc8/Yrq;->val$observer:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lc8/Yrq;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    iget-boolean v1, p0, Lc8/Yrq;->done:Z

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Yrq;->this$0:Lc8/Zrq;

    iget-object v1, v1, Lc8/Zrq;->doOnEachObserver:Lc8/Wlq;

    invoke-interface {v1}, Lc8/Wlq;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Yrq;->done:Z

    .line 54
    iget-object v1, p0, Lc8/Yrq;->val$observer:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lc8/Yrq;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    const/4 v5, 0x1

    .line 60
    invoke-static {p1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    iget-boolean v1, p0, Lc8/Yrq;->done:Z

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-boolean v5, p0, Lc8/Yrq;->done:Z

    .line 66
    :try_start_0
    iget-object v1, p0, Lc8/Yrq;->this$0:Lc8/Zrq;

    iget-object v1, v1, Lc8/Zrq;->doOnEachObserver:Lc8/Wlq;

    invoke-interface {v1, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v1, p0, Lc8/Yrq;->val$observer:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    iget-object v1, p0, Lc8/Yrq;->val$observer:Lc8/Omq;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/Yrq;, "Lrx/internal/operators/OperatorDoOnEach.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lc8/Yrq;->done:Z

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Yrq;->this$0:Lc8/Zrq;

    iget-object v1, v1, Lc8/Zrq;->doOnEachObserver:Lc8/Wlq;

    invoke-interface {v1, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v1, p0, Lc8/Yrq;->val$observer:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method
