.class public Lanet/channel/TaobaoNetworkAdapter;
.super Ljava/lang/Object;
.source "TaobaoNetworkAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static isInited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lc8/PJ;

    invoke-direct {v0}, Lc8/PJ;-><init>()V

    invoke-static {v0}, Lc8/KL;->setLog(Lc8/IL;)V

    .line 36
    new-instance v0, Lc8/zJ;

    invoke-direct {v0}, Lc8/zJ;-><init>()V

    invoke-static {v0}, Lc8/qN;->setRemoteConfig(Lc8/pN;)V

    .line 39
    new-instance v0, Lc8/rJ;

    invoke-direct {v0}, Lc8/rJ;-><init>()V

    invoke-static {v0}, Lc8/qJ;->setInstance(Lc8/sJ;)V

    .line 42
    new-instance v0, Lc8/oJ;

    invoke-direct {v0}, Lc8/oJ;-><init>()V

    invoke-static {v0}, Lc8/JJ;->setInstance(Lc8/HJ;)V

    .line 45
    new-instance v0, Lc8/nJ;

    invoke-direct {v0}, Lc8/nJ;-><init>()V

    invoke-static {v0}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 62
    :cond_0
    return-void
.end method
