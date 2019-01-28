.class public Lc8/puq;
.super Lc8/Omq;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/quq;->call()V
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
.field final synthetic this$1:Lc8/quq;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lc8/quq;Lc8/Omq;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lc8/puq;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/puq;->this$1:Lc8/quq;

    iput-object p3, p0, Lc8/puq;->val$t:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lc8/puq;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$inner:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v1, v1, Lc8/quq;->val$inner:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lc8/puq;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$inner:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v1, v1, Lc8/quq;->val$inner:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/puq;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 76
    .local p0, "this":Lc8/puq;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    iget-object v0, p0, Lc8/puq;->this$1:Lc8/quq;

    iget-object v0, v0, Lc8/quq;->val$subscriber:Lc8/Omq;

    new-instance v1, Lc8/ouq;

    invoke-direct {v1, p0, p1}, Lc8/ouq;-><init>(Lc8/puq;Lc8/Xlq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 91
    return-void
.end method
