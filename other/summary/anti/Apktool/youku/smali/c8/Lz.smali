.class public Lc8/Lz;
.super Ljava/lang/Object;
.source "AdditionalActivityManagerProxy.java"


# static fields
.field private static sAdditionalActivityManagerProxy:Lc8/Lz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lc8/Lz;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lc8/Lz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Lz;->sAdditionalActivityManagerProxy:Lc8/Lz;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/Lz;

    invoke-direct {v0}, Lc8/Lz;-><init>()V

    sput-object v0, Lc8/Lz;->sAdditionalActivityManagerProxy:Lc8/Lz;

    .line 32
    :cond_0
    sget-object v0, Lc8/Lz;->sAdditionalActivityManagerProxy:Lc8/Lz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolveType"    # Ljava/lang/String;
    .param p4, "connection"    # Landroid/app/IServiceConnection;

    .prologue
    .line 51
    invoke-static {p1, p2, p3, p4}, Lc8/sA;->bindService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;)I

    move-result v0

    return v0
.end method

.method public getContentProvider(Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 59
    invoke-static {p1}, Lc8/Xz;->getContentProvider(Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startRegisterReceivers(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lc8/aA;->registerAdditionalReceiver()V

    .line 40
    :cond_0
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-static {p1}, Lc8/sA;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-static {p1}, Lc8/sA;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 1
    .param p1, "conn"    # Landroid/app/IServiceConnection;

    .prologue
    .line 55
    invoke-static {p1}, Lc8/sA;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    return v0
.end method
