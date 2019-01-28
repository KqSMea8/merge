.class public Lc8/sA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# static fields
.field private static sBridges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/sA;",
            ">;"
        }
    .end annotation
.end field

.field private static sServicehandler:Landroid/os/Handler;

.field private static shandlerThread:Landroid/os/HandlerThread;


# instance fields
.field mActiveServiceInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent;",
            "Landroid/app/IServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDelegateConnection:Landroid/content/ServiceConnection;

.field private mRemoteDelegate:Lc8/jA;

.field private processName:Ljava/lang/String;

.field private targetIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "atlas_service_manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    sput-object v0, Lc8/sA;->shandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lc8/sA;->shandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "processname"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/sA;->mActiveServiceInfo:Ljava/util/HashMap;

    .line 239
    new-instance v0, Lc8/qA;

    invoke-direct {v0, p0}, Lc8/qA;-><init>(Lc8/sA;)V

    iput-object v0, p0, Lc8/sA;->mDelegateConnection:Landroid/content/ServiceConnection;

    .line 259
    new-instance v0, Lc8/rA;

    invoke-direct {v0, p0}, Lc8/rA;-><init>(Lc8/sA;)V

    iput-object v0, p0, Lc8/sA;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 50
    iput-object p1, p0, Lc8/sA;->processName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lc8/sA;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lc8/sA;->obtain(Ljava/lang/String;)Lc8/sA;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/sA;)Lc8/jA;
    .locals 1
    .param p0, "x0"    # Lc8/sA;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    return-object v0
.end method

.method static synthetic access$102(Lc8/sA;Lc8/jA;)Lc8/jA;
    .locals 0
    .param p0, "x0"    # Lc8/sA;
    .param p1, "x1"    # Lc8/jA;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    return-object p1
.end method

.method static synthetic access$200(Lc8/sA;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lc8/sA;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/sA;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$300(Lc8/sA;Lc8/jA;)V
    .locals 0
    .param p0, "x0"    # Lc8/sA;
    .param p1, "x1"    # Lc8/jA;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/sA;->recoverActiveServie(Lc8/jA;)V

    return-void
.end method

.method static synthetic access$400(Lc8/sA;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lc8/sA;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/sA;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lc8/sA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sA;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/sA;->processName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/sA;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/sA;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/sA;->connectDelegateService(Ljava/lang/String;)V

    return-void
.end method

.method public static bindService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;)I
    .locals 4
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "connection"    # Landroid/app/IServiceConnection;

    .prologue
    .line 135
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-class v3, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2, v3}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 136
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v1, "ServiceBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t bindService | serviceinfo for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 140
    :cond_0
    sget-object v1, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v2, Lc8/mA;

    invoke-direct {v2, v0, p1, p3, p0}, Lc8/mA;-><init>(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;Landroid/app/IServiceConnection;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized connectDelegateService(Ljava/lang/String;)V
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    invoke-interface {v3}, Lc8/jA;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lc8/sA;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 79
    iget-object v3, p0, Lc8/sA;->targetIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 80
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v2, "service":Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-static {v3, p1}, Lc8/Oz;->getBridgeName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "delegateComponentName":Ljava/lang/String;
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iput-object v2, p0, Lc8/sA;->targetIntent:Landroid/content/Intent;

    .line 85
    .end local v0    # "delegateComponentName":Ljava/lang/String;
    .end local v2    # "service":Landroid/content/Intent;
    :cond_1
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    iget-object v4, p0, Lc8/sA;->targetIntent:Landroid/content/Intent;

    iget-object v5, p0, Lc8/sA;->mDelegateConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    iget-object v3, p0, Lc8/sA;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static handleActivityStack(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lc8/Vz;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "observer"    # Lc8/Vz;

    .prologue
    .line 181
    sget-object v0, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v1, Lc8/oA;

    invoke-direct {v1, p1, p0, p2}, Lc8/oA;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lc8/Vz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public static notifyonReceived(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 197
    sget-object v0, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v1, Lc8/pA;

    invoke-direct {v1, p1, p0}, Lc8/pA;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private static obtain(Ljava/lang/String;)Lc8/sA;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v1, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 55
    const-class v2, Lc8/sA;

    monitor-enter v2

    .line 56
    :try_start_0
    sget-object v1, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Lc8/sA;

    invoke-direct {v0, p0}, Lc8/sA;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "bridge":Lc8/sA;
    sget-object v1, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "bridge":Lc8/sA;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v1, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/sA;

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private recoverActiveServie(Lc8/jA;)V
    .locals 6
    .param p1, "delegate"    # Lc8/jA;

    .prologue
    .line 214
    iget-object v5, p0, Lc8/sA;->mActiveServiceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 216
    iget-object v5, p0, Lc8/sA;->mActiveServiceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 217
    .local v4, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 219
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Intent;Landroid/app/IServiceConnection;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 220
    .local v3, "intent":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 221
    .local v0, "connection":Landroid/app/IServiceConnection;
    if-eqz v0, :cond_0

    .line 224
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v3, v5, v0}, Lc8/jA;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/IServiceConnection;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {p1, v3, v5}, Lc8/jA;->startService(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    .line 232
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "connection":Landroid/app/IServiceConnection;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Intent;Landroid/app/IServiceConnection;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "service"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-class v3, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2, v3}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 96
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v1, "ServiceBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t find startservice | serviceinfo for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 100
    :cond_0
    sget-object v1, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v2, Lc8/kA;

    invoke-direct {v2, v0, p0}, Lc8/kA;-><init>(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method public static stopService(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "service"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-class v3, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2, v3}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 116
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v1, "ServiceBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t stopService | serviceinfo for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 120
    :cond_0
    sget-object v1, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v2, Lc8/lA;

    invoke-direct {v2, v0, p0}, Lc8/lA;-><init>(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static unbindService(Landroid/app/IServiceConnection;)Z
    .locals 5
    .param p0, "conn"    # Landroid/app/IServiceConnection;

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "tmp":Ljava/lang/String;
    sget-object v3, Lc8/sA;->sBridges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/atlas/runtime/newcomponent/service/ServiceBridge;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/sA;

    iget-object v3, v3, Lc8/sA;->mActiveServiceInfo:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tmp":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/atlas/runtime/newcomponent/service/ServiceBridge;>;"
    :cond_1
    move-object v1, v2

    .local v1, "processOfRemoteService":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 164
    sget-object v3, Lc8/sA;->sServicehandler:Landroid/os/Handler;

    new-instance v4, Lc8/nA;

    invoke-direct {v4, v1, p0}, Lc8/nA;-><init>(Ljava/lang/String;Landroid/app/IServiceConnection;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    const/4 v3, 0x1

    .line 176
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getRemoteDelegate()Lc8/jA;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    invoke-interface {v0}, Lc8/jA;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lc8/sA;->processName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/sA;->connectDelegateService(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lc8/sA;->mRemoteDelegate:Lc8/jA;

    goto :goto_0
.end method
