.class public final Lc8/Vmq;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Vmq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mainThreadScheduler:Lc8/amq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lc8/Vmq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lc8/Tmq;->getInstance()Lc8/Tmq;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Tmq;->getSchedulersHook()Lc8/Umq;

    move-result-object v0

    .line 47
    .local v0, "hook":Lc8/Umq;
    invoke-virtual {v0}, Lc8/Umq;->getMainThreadScheduler()Lc8/amq;

    move-result-object v1

    .line 48
    .local v1, "main":Lc8/amq;
    if-eqz v1, :cond_0

    .line 49
    iput-object v1, p0, Lc8/Vmq;->mainThreadScheduler:Lc8/amq;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Lc8/Zmq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Zmq;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/Vmq;->mainThreadScheduler:Lc8/amq;

    goto :goto_0
.end method

.method public static from(Landroid/os/Looper;)Lc8/amq;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lc8/Zmq;

    invoke-direct {v0, p0}, Lc8/Zmq;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static getInstance()Lc8/Vmq;
    .locals 3

    .prologue
    .line 33
    .local v0, "current":Lc8/Vmq;
    :cond_0
    sget-object v1, Lc8/Vmq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lc8/Vmq;
    check-cast v0, Lc8/Vmq;

    .line 34
    .restart local v0    # "current":Lc8/Vmq;
    if-eqz v0, :cond_1

    .line 39
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lc8/Vmq;

    .end local v0    # "current":Lc8/Vmq;
    invoke-direct {v0}, Lc8/Vmq;-><init>()V

    .line 38
    .restart local v0    # "current":Lc8/Vmq;
    sget-object v1, Lc8/Vmq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static mainThread()Lc8/amq;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lc8/Vmq;->getInstance()Lc8/Vmq;

    move-result-object v0

    iget-object v0, v0, Lc8/Vmq;->mainThreadScheduler:Lc8/amq;

    return-object v0
.end method

.method public static reset()V
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lc8/Vmq;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
