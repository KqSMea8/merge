.class public Lc8/Bcf;
.super Lc8/Fbf;
.source "AidlBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/service/AidlBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lc8/Dcf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/android/service/AidlBridgeService;


# direct methods
.method public constructor <init>(Lcom/taobao/android/service/AidlBridgeService;)V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lc8/Bcf;->this$0:Lcom/taobao/android/service/AidlBridgeService;

    invoke-direct {p0}, Lc8/Fbf;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Bcf;->mServices:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized bindService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 59
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 60
    iget-object v5, p0, Lc8/Bcf;->this$0:Lcom/taobao/android/service/AidlBridgeService;

    invoke-virtual {v5}, Lcom/taobao/android/service/AidlBridgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 61
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 79
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 62
    .restart local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_2
    iget-object v5, p0, Lc8/Bcf;->mServices:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Dcf;

    .line 65
    .local v1, "connection":Lc8/Dcf;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lc8/Dcf;->mBinder:Landroid/os/IBinder;

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    new-instance v1, Lc8/Dcf;

    .end local v1    # "connection":Lc8/Dcf;
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lc8/Dcf;-><init>(Lc8/Bcf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .restart local v1    # "connection":Lc8/Dcf;
    const/4 v3, 0x0

    .line 72
    .local v3, "ret":Z
    :try_start_2
    iget-object v5, p0, Lc8/Bcf;->this$0:Lcom/taobao/android/service/AidlBridgeService;

    invoke-static {v5, p1, v1}, Lc8/Fcf;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 77
    :goto_1
    if-eqz v3, :cond_0

    .line 78
    :try_start_3
    iget-object v4, p0, Lc8/Bcf;->mServices:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v4, v1, Lc8/Dcf;->mBinder:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "connection":Lc8/Dcf;
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v1    # "connection":Lc8/Dcf;
    .restart local v3    # "ret":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public declared-synchronized unbindService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lc8/Bcf;->mServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dcf;

    .line 87
    .local v0, "connection":Lc8/Dcf;
    iget-object v3, v0, Lc8/Dcf;->mBinder:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    .line 89
    iget-object v3, p0, Lc8/Bcf;->this$0:Lcom/taobao/android/service/AidlBridgeService;

    invoke-static {v3, v0}, Lc8/Fcf;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "connection":Lc8/Dcf;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 94
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;>;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method
