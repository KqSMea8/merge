.class public final Lc8/hN;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "[onServiceConnected]ANet_Service start success. ANet run with service mode"

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    const-class v1, Lc8/jN;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-static {p2}, Lc8/CM;->asInterface(Landroid/os/IBinder;)Lc8/DM;

    move-result-object v0

    invoke-static {v0}, Lc8/jN;->access$002(Lc8/DM;)Lc8/DM;

    .line 48
    invoke-static {}, Lc8/jN;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lc8/jN;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v4}, Lc8/jN;->access$302(Z)Z

    .line 53
    invoke-static {v4}, Lc8/jN;->access$102(Z)Z

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "ANet_Service Disconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-static {v4}, Lc8/jN;->access$002(Lc8/DM;)Lc8/DM;

    .line 35
    invoke-static {v3}, Lc8/jN;->access$102(Z)Z

    .line 36
    invoke-static {}, Lc8/jN;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lc8/jN;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    :cond_1
    return-void
.end method
