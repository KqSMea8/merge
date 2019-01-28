.class public Lc8/qqq;
.super Lc8/Omq;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rqq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Lc8/Qlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/rqq;

.field final synthetic val$filteredTerminals:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/rqq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 284
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/qqq;->this$1:Lc8/rqq;

    iput-object p3, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public onNext(Lc8/Qlq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p1, "t":Lc8/Qlq;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lc8/Qlq;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qqq;->this$1:Lc8/rqq;

    iget-object v0, v0, Lc8/rqq;->this$0:Lc8/zqq;

    iget-boolean v0, v0, Lc8/zqq;->stopOnComplete:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lc8/Qlq;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/qqq;->this$1:Lc8/rqq;

    iget-object v0, v0, Lc8/rqq;->this$0:Lc8/zqq;

    iget-boolean v0, v0, Lc8/zqq;->stopOnError:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-virtual {p1}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lc8/qqq;->val$filteredTerminals:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/qqq;->onNext(Lc8/Qlq;)V

    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 308
    .local p0, "this":Lc8/qqq;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 309
    return-void
.end method
