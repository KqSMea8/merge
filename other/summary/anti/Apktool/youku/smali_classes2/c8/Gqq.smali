.class public Lc8/Gqq;
.super Lc8/Omq;
.source "OnSubscribeRefCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Iqq;->doSubscribe(Lc8/Omq;Lc8/SBq;)V
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
.field final synthetic this$0:Lc8/Iqq;

.field final synthetic val$currentBase:Lc8/SBq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Iqq;Lc8/Omq;Lc8/Omq;Lc8/SBq;)V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lc8/Gqq;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iput-object p3, p0, Lc8/Gqq;->val$subscriber:Lc8/Omq;

    iput-object p4, p0, Lc8/Gqq;->val$currentBase:Lc8/SBq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lc8/Gqq;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    iget-object v1, p0, Lc8/Gqq;->val$currentBase:Lc8/SBq;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 134
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    new-instance v1, Lc8/SBq;

    invoke-direct {v1}, Lc8/SBq;-><init>()V

    iput-object v1, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    .line 135
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-object v0, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Gqq;->this$0:Lc8/Iqq;

    iget-object v1, v1, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lc8/Gqq;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lc8/Gqq;->cleanup()V

    .line 125
    iget-object v0, p0, Lc8/Gqq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    .local p0, "this":Lc8/Gqq;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lc8/Gqq;->cleanup()V

    .line 116
    iget-object v0, p0, Lc8/Gqq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/Gqq;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Gqq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
