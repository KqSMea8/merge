.class public final Lc8/Moq;
.super Lc8/Omq;
.source "CompletableOnSubscribeMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Noq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletableMergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Lc8/Plq;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Nlq;

.field final delayErrors:Z

.field volatile done:Z

.field final errors:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final set:Lc8/SBq;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Nlq;IZ)V
    .locals 2
    .param p1, "actual"    # Lc8/Nlq;
    .param p2, "maxConcurrency"    # I
    .param p3, "delayErrors"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 65
    iput-object p1, p0, Lc8/Moq;->actual:Lc8/Nlq;

    .line 66
    iput p2, p0, Lc8/Moq;->maxConcurrency:I

    .line 67
    iput-boolean p3, p0, Lc8/Moq;->delayErrors:Z

    .line 68
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Moq;->set:Lc8/SBq;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/Moq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/Moq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 73
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Moq;->request(J)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lc8/Moq;->request(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Moq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Moq;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lc8/Moq;->request(J)V

    return-void
.end method

.method static synthetic access$100(Lc8/Moq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Moq;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lc8/Moq;->request(J)V

    return-void
.end method


# virtual methods
.method getOrCreateErrors()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 82
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 90
    :goto_0
    return-object v1

    .line 86
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 87
    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-object v1, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lc8/Moq;->done:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Moq;->done:Z

    .line 162
    invoke-virtual {p0}, Lc8/Moq;->terminate()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    iget-boolean v0, p0, Lc8/Moq;->done:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lc8/Moq;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Moq;->done:Z

    .line 153
    invoke-virtual {p0}, Lc8/Moq;->terminate()V

    goto :goto_0
.end method

.method public onNext(Lc8/Plq;)V
    .locals 1
    .param p1, "t"    # Lc8/Plq;

    .prologue
    .line 95
    iget-boolean v0, p0, Lc8/Moq;->done:Z

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/Moq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 101
    new-instance v0, Lc8/Loq;

    invoke-direct {v0, p0}, Lc8/Loq;-><init>(Lc8/Moq;)V

    invoke-virtual {p1, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lc8/Plq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Moq;->onNext(Lc8/Plq;)V

    return-void
.end method

.method terminate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v2, p0, Lc8/Moq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_4

    .line 167
    iget-object v2, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 168
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    :cond_0
    iget-object v2, p0, Lc8/Moq;->actual:Lc8/Nlq;

    invoke-interface {v2}, Lc8/Nlq;->onCompleted()V

    .line 190
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_1
    :goto_0
    return-void

    .line 171
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-static {v1}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lc8/Moq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lc8/Moq;->actual:Lc8/Nlq;

    invoke-interface {v2, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_4
    iget-boolean v2, p0, Lc8/Moq;->delayErrors:Z

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p0, Lc8/Moq;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 181
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-static {v1}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lc8/Moq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lc8/Moq;->actual:Lc8/Nlq;

    invoke-interface {v2, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_5
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
