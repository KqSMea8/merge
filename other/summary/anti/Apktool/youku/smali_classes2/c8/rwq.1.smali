.class public Lc8/rwq;
.super Lc8/Omq;
.source "OperatorZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/swq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lc8/swq;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/swq;Lc8/Omq;Lc8/Omq;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lc8/rwq;, "Lrx/internal/operators/OperatorZipIterable.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/rwq;->this$0:Lc8/swq;

    iput-object p3, p0, Lc8/rwq;->val$subscriber:Lc8/Omq;

    iput-object p4, p0, Lc8/rwq;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lc8/rwq;, "Lrx/internal/operators/OperatorZipIterable.1;"
    iget-boolean v0, p0, Lc8/rwq;->done:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rwq;->done:Z

    .line 56
    iget-object v0, p0, Lc8/rwq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    .local p0, "this":Lc8/rwq;, "Lrx/internal/operators/OperatorZipIterable.1;"
    iget-boolean v0, p0, Lc8/rwq;->done:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rwq;->done:Z

    .line 66
    iget-object v0, p0, Lc8/rwq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lc8/rwq;, "Lrx/internal/operators/OperatorZipIterable.1;"
    .local p1, "t":Ljava/lang/Object;, "TT1;"
    iget-boolean v1, p0, Lc8/rwq;->done:Z

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/rwq;->val$subscriber:Lc8/Omq;

    iget-object v2, p0, Lc8/rwq;->this$0:Lc8/swq;

    iget-object v2, v2, Lc8/swq;->zipFunction:Lc8/Jnq;

    iget-object v3, p0, Lc8/rwq;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lc8/rwq;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lc8/rwq;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
