.class public Lc8/RN;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/RN;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lc8/VJ;Lc8/XJ;)V
    .locals 1
    .param p0, "listener"    # Lc8/VJ;
    .param p1, "filter"    # Lc8/XJ;

    .prologue
    .line 101
    invoke-static {}, Lc8/QJ;->getInstance()Lc8/QJ;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/QJ;->addQualityChangeListener(Lc8/VJ;Lc8/XJ;)V

    .line 102
    return-void
.end method

.method public static getNetSpeedValue()D
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UJ;->getNetSpeedValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized init()V
    .locals 4

    .prologue
    .line 27
    const-class v1, Lc8/RN;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/RN;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UJ;->startNetworkMeter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
