.class public final Lc8/Iqq;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile baseSubscription:Lc8/SBq;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final source:Lc8/Vzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vzq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Vzq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vzq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "source":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/Iqq;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object p1, p0, Lc8/Iqq;->source:Lc8/Vzq;

    .line 53
    return-void
.end method

.method private disconnect(Lc8/SBq;)Lc8/Pmq;
    .locals 1
    .param p1, "current"    # Lc8/SBq;

    .prologue
    .line 145
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    new-instance v0, Lc8/Hqq;

    invoke-direct {v0, p0, p1}, Lc8/Hqq;-><init>(Lc8/Iqq;Lc8/SBq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method private onSubscribe(Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc8/inq;
    .locals 1
    .param p2, "writeLocked"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lc8/inq",
            "<",
            "Lc8/Pmq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Fqq;

    invoke-direct {v0, p0, p1, p2}, Lc8/Fqq;-><init>(Lc8/Iqq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v2, 0x1

    .line 58
    iget-object v1, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    iget-object v1, p0, Lc8/Iqq;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .local v0, "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_0
    iget-object v1, p0, Lc8/Iqq;->source:Lc8/Vzq;

    invoke-direct {p0, p1, v0}, Lc8/Iqq;->onSubscribe(Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc8/inq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Vzq;->connect(Lc8/inq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v1

    .line 80
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/Iqq;->baseSubscription:Lc8/SBq;

    invoke-virtual {p0, p1, v1}, Lc8/Iqq;->doSubscribe(Lc8/Omq;Lc8/SBq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    iget-object v1, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lc8/Iqq;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Iqq;->call(Lc8/Omq;)V

    return-void
.end method

.method doSubscribe(Lc8/Omq;Lc8/SBq;)V
    .locals 2
    .param p2, "currentBase"    # Lc8/SBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/SBq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lc8/Iqq;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p2}, Lc8/Iqq;->disconnect(Lc8/SBq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 112
    iget-object v0, p0, Lc8/Iqq;->source:Lc8/Vzq;

    new-instance v1, Lc8/Gqq;

    invoke-direct {v1, p0, p1, p1, p2}, Lc8/Gqq;-><init>(Lc8/Iqq;Lc8/Omq;Lc8/Omq;Lc8/SBq;)V

    invoke-virtual {v0, v1}, Lc8/Vzq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 142
    return-void
.end method
