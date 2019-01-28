.class public final Lc8/hBq;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/hBq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final computationScheduler:Lc8/amq;

.field private final ioScheduler:Lc8/amq;

.field private final newThreadScheduler:Lc8/amq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lc8/hBq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v4

    invoke-virtual {v4}, Lc8/bBq;->getSchedulersHook()Lc8/cBq;

    move-result-object v1

    .line 59
    .local v1, "hook":Lc8/cBq;
    invoke-virtual {v1}, Lc8/cBq;->getComputationScheduler()Lc8/amq;

    move-result-object v0

    .line 60
    .local v0, "c":Lc8/amq;
    if-eqz v0, :cond_0

    .line 61
    iput-object v0, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    .line 66
    :goto_0
    invoke-virtual {v1}, Lc8/cBq;->getIOScheduler()Lc8/amq;

    move-result-object v2

    .line 67
    .local v2, "io":Lc8/amq;
    if-eqz v2, :cond_1

    .line 68
    iput-object v2, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    .line 73
    :goto_1
    invoke-virtual {v1}, Lc8/cBq;->getNewThreadScheduler()Lc8/amq;

    move-result-object v3

    .line 74
    .local v3, "nt":Lc8/amq;
    if-eqz v3, :cond_2

    .line 75
    iput-object v3, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    .line 79
    :goto_2
    return-void

    .line 63
    .end local v2    # "io":Lc8/amq;
    .end local v3    # "nt":Lc8/amq;
    :cond_0
    invoke-static {}, Lc8/cBq;->createComputationScheduler()Lc8/amq;

    move-result-object v4

    iput-object v4, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    goto :goto_0

    .line 70
    .restart local v2    # "io":Lc8/amq;
    :cond_1
    invoke-static {}, Lc8/cBq;->createIoScheduler()Lc8/amq;

    move-result-object v4

    iput-object v4, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    goto :goto_1

    .line 77
    .restart local v3    # "nt":Lc8/amq;
    :cond_2
    invoke-static {}, Lc8/cBq;->createNewThreadScheduler()Lc8/amq;

    move-result-object v4

    iput-object v4, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    goto :goto_2
.end method

.method public static computation()Lc8/amq;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lc8/hBq;->getInstance()Lc8/hBq;

    move-result-object v0

    iget-object v0, v0, Lc8/hBq;->computationScheduler:Lc8/amq;

    invoke-static {v0}, Lc8/WAq;->onComputationScheduler(Lc8/amq;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lc8/amq;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 161
    new-instance v0, Lc8/cxq;

    invoke-direct {v0, p0}, Lc8/cxq;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static getInstance()Lc8/hBq;
    .locals 3

    .prologue
    .line 42
    .local v0, "current":Lc8/hBq;
    :goto_0
    sget-object v1, Lc8/hBq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lc8/hBq;
    check-cast v0, Lc8/hBq;

    .line 43
    .restart local v0    # "current":Lc8/hBq;
    if-eqz v0, :cond_1

    .line 48
    :cond_0
    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lc8/hBq;

    .end local v0    # "current":Lc8/hBq;
    invoke-direct {v0}, Lc8/hBq;-><init>()V

    .line 47
    .restart local v0    # "current":Lc8/hBq;
    sget-object v1, Lc8/hBq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lc8/hBq;->shutdownInstance()V

    goto :goto_0
.end method

.method public static immediate()Lc8/amq;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lc8/gxq;->INSTANCE:Lc8/gxq;

    return-object v0
.end method

.method public static io()Lc8/amq;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lc8/hBq;->getInstance()Lc8/hBq;

    move-result-object v0

    iget-object v0, v0, Lc8/hBq;->ioScheduler:Lc8/amq;

    invoke-static {v0}, Lc8/WAq;->onIOScheduler(Lc8/amq;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lc8/amq;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lc8/hBq;->getInstance()Lc8/hBq;

    move-result-object v0

    iget-object v0, v0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    invoke-static {v0}, Lc8/WAq;->onNewThreadScheduler(Lc8/amq;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 3
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 171
    sget-object v1, Lc8/hBq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hBq;

    .line 172
    .local v0, "s":Lc8/hBq;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lc8/hBq;->shutdownInstance()V

    .line 175
    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lc8/hBq;->getInstance()Lc8/hBq;

    move-result-object v0

    .line 200
    .local v0, "s":Lc8/hBq;
    invoke-virtual {v0}, Lc8/hBq;->shutdownInstance()V

    .line 202
    monitor-enter v0

    .line 203
    :try_start_0
    sget-object v1, Lc8/dxq;->INSTANCE:Lc8/dxq;

    invoke-virtual {v1}, Lc8/dxq;->shutdown()V

    .line 205
    sget-object v1, Lc8/fyq;->SPSC_POOL:Lc8/Yxq;

    invoke-virtual {v1}, Lc8/Yxq;->shutdown()V

    .line 207
    sget-object v1, Lc8/fyq;->SPMC_POOL:Lc8/Yxq;

    invoke-virtual {v1}, Lc8/Yxq;->shutdown()V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lc8/hBq;->getInstance()Lc8/hBq;

    move-result-object v0

    .line 184
    .local v0, "s":Lc8/hBq;
    invoke-virtual {v0}, Lc8/hBq;->startInstance()V

    .line 186
    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lc8/dxq;->INSTANCE:Lc8/dxq;

    invoke-virtual {v1}, Lc8/dxq;->start()V

    .line 189
    sget-object v1, Lc8/fyq;->SPSC_POOL:Lc8/Yxq;

    invoke-virtual {v1}, Lc8/Yxq;->start()V

    .line 191
    sget-object v1, Lc8/fyq;->SPMC_POOL:Lc8/Yxq;

    invoke-virtual {v1}, Lc8/Yxq;->start()V

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static test()Lc8/nBq;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lc8/nBq;

    invoke-direct {v0}, Lc8/nBq;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lc8/amq;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lc8/vxq;->INSTANCE:Lc8/vxq;

    return-object v0
.end method


# virtual methods
.method declared-synchronized shutdownInstance()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->shutdown()V

    .line 233
    :cond_0
    iget-object v0, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->shutdown()V

    .line 236
    :cond_1
    iget-object v0, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startInstance()V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lc8/hBq;->computationScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->start()V

    .line 218
    :cond_0
    iget-object v0, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lc8/hBq;->ioScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->start()V

    .line 221
    :cond_1
    iget-object v0, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    instance-of v0, v0, Lc8/lxq;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lc8/hBq;->newThreadScheduler:Lc8/amq;

    check-cast v0, Lc8/lxq;

    invoke-interface {v0}, Lc8/lxq;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_2
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
