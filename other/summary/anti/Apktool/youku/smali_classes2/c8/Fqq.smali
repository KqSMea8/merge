.class public Lc8/Fqq;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Iqq;->onSubscribe(Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc8/inq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Iqq;

.field final synthetic val$subscriber:Lc8/Omq;

.field final synthetic val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lc8/Iqq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lc8/Fqq;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    iput-object p1, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iput-object p2, p0, Lc8/Fqq;->val$subscriber:Lc8/Omq;

    iput-object p3, p0, Lc8/Fqq;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Pmq;)V
    .locals 4
    .param p1, "subscription"    # Lc8/Pmq;

    .prologue
    .local p0, "this":Lc8/Fqq;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    const/4 v3, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 98
    iget-object v0, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iget-object v1, p0, Lc8/Fqq;->val$subscriber:Lc8/Omq;

    iget-object v2, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iget-object v2, v2, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    invoke-virtual {v0, v1, v2}, Lc8/Iqq;->doSubscribe(Lc8/Omq;Lc8/SBq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v0, p0, Lc8/Fqq;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Fqq;->this$0:Lc8/Iqq;

    iget-object v1, v1, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v1, p0, Lc8/Fqq;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lc8/Fqq;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    check-cast p1, Lc8/Pmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Fqq;->call(Lc8/Pmq;)V

    return-void
.end method
