.class public Lcom/taobao/android/service/AidlBridgeService;
.super Landroid/app/Service;
.source "AidlBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dcf;
    }
.end annotation


# static fields
.field private static final KBridgeServiceName:Ljava/lang/String;

.field private static final sDummyReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mBridgeBinder:Lc8/Gbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/taobao/android/service/AidlBridgeService;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/service/AidlBridgeService;->KBridgeServiceName:Ljava/lang/String;

    .line 111
    new-instance v0, Lc8/Ccf;

    invoke-direct {v0}, Lc8/Ccf;-><init>()V

    sput-object v0, Lcom/taobao/android/service/AidlBridgeService;->sDummyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Lc8/Bcf;

    invoke-direct {v0, p0}, Lc8/Bcf;-><init>(Lcom/taobao/android/service/AidlBridgeService;)V

    iput-object v0, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lc8/Gbf;

    .line 99
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceconnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/android/service/AidlBridgeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static peekMe(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v0, Lcom/taobao/android/service/AidlBridgeService;->sDummyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/taobao/android/service/AidlBridgeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v4, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lc8/Gbf;

    check-cast v4, Landroid/os/IBinder;

    .line 52
    :cond_0
    :goto_0
    return-object v4

    .line 39
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/android/service/AidlBridgeService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Lcom/taobao/android/service/AidlBridgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 43
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    sget-object v5, Lcom/taobao/android/service/AidlBridgeService;->KBridgeServiceName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    :try_start_0
    iget-object v5, p0, Lcom/taobao/android/service/AidlBridgeService;->mBridgeBinder:Lc8/Gbf;

    invoke-interface {v5, p1}, Lc8/Gbf;->bindService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 48
    goto :goto_0

    .line 49
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
