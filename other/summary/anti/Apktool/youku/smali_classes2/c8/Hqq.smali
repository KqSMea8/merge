.class public Lc8/Hqq;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Iqq;->disconnect(Lc8/SBq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Iqq;

.field final synthetic val$current:Lc8/SBq;


# direct methods
.method constructor <init>(Lc8/Iqq;Lc8/SBq;)V
    .locals 0

    .prologue
    .line 145
    .local p0, "this":Lc8/Hqq;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iput-object p1, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iput-object p2, p0, Lc8/Hqq;->val$current:Lc8/SBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lc8/Hqq;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    iget-object v1, p0, Lc8/Hqq;->val$current:Lc8/SBq;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 155
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    new-instance v1, Lc8/SBq;

    invoke-direct {v1}, Lc8/SBq;-><init>()V

    iput-object v1, v0, Lc8/Iqq;->baseSubscription:Lc8/SBq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    iget-object v0, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v0, v0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Hqq;->this$0:Lc8/Iqq;

    iget-object v1, v1, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
