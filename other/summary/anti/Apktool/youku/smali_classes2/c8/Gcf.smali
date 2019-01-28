.class public Lc8/Gcf;
.super Ljava/lang/Object;
.source "Services.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "MgdSvcConn"


# instance fields
.field private volatile mBinder:Landroid/os/IBinder;

.field private mComponentName:Landroid/content/ComponentName;

.field private mInterfaceDescriptor:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iput-object p1, p0, Lc8/Gcf;->mComponentName:Landroid/content/ComponentName;

    .line 513
    iput-object p2, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    .line 514
    iget-object v0, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 515
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Gcf;->mInterfaceDescriptor:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    :goto_0
    return-void

    .line 515
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    iget-object v1, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    .line 526
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ManagedServiceConnection["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gcf;->mInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/Gcf;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string/jumbo v0, "not connected"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Gcf;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method waitUntilConnected(J)Landroid/os/IBinder;
    .locals 9
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 494
    :try_start_0
    iget-object v0, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 495
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 505
    iput-object v5, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    return-object v0

    .line 496
    .restart local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 498
    .local v2, "start":J
    :cond_1
    iget-object v1, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 499
    iget-object v1, p0, Lc8/Gcf;->mLock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v1, v6, p1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 503
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "start":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    :catchall_1
    move-exception v1

    iput-object v5, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    throw v1

    .line 502
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "start":J
    :cond_2
    :try_start_4
    iget-object v0, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    .end local v0    # "binder":Landroid/os/IBinder;
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 505
    iput-object v5, p0, Lc8/Gcf;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method
