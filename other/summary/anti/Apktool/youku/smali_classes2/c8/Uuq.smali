.class public Lc8/Uuq;
.super Lc8/Omq;
.source "OperatorTakeWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vuq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private counter:I

.field private done:Z

.field final synthetic this$0:Lc8/Vuq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Vuq;Lc8/Omq;ZLc8/Omq;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 49
    .local p0, "this":Lc8/Uuq;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Uuq;->this$0:Lc8/Vuq;

    iput-object p4, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2, p3}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lc8/Uuq;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lc8/Uuq;->done:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lc8/Uuq;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lc8/Uuq;->done:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 87
    :cond_0
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
    .local p0, "this":Lc8/Uuq;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 59
    :try_start_0
    iget-object v2, p0, Lc8/Uuq;->this$0:Lc8/Vuq;

    iget-object v2, v2, Lc8/Vuq;->predicate:Lc8/Jnq;

    iget v3, p0, Lc8/Uuq;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/Uuq;->counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "isSelected":Z
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v5, p0, Lc8/Uuq;->done:Z

    .line 62
    iget-object v2, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-static {v0, v2, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lc8/Uuq;->unsubscribe()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "isSelected":Z
    :cond_0
    iput-boolean v5, p0, Lc8/Uuq;->done:Z

    .line 70
    iget-object v2, p0, Lc8/Uuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V

    .line 71
    invoke-virtual {p0}, Lc8/Uuq;->unsubscribe()V

    goto :goto_0
.end method
