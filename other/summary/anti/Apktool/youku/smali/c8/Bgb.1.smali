.class public Lc8/Bgb;
.super Ljava/lang/Object;
.source "KernelContext.java"


# static fields
.field public static final SDK_VERSION_MINI:Ljava/lang/String;

.field public static final SDK_VERSION_STD:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "kernel"

.field public static UUID:Ljava/lang/String;

.field public static authOption:Lcom/ali/auth/third/core/config/AuthOption;

.field public static volatile context:Landroid/content/Context;

.field public static credentialService:Lc8/rhb;

.field public static executorService:Lc8/shb;

.field public static final initLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public static volatile isInitOk:Ljava/lang/Boolean;

.field public static isMini:Z

.field public static mWebViewProxy:Lc8/tgb;

.field public static packageName:Ljava/lang/String;

.field public static resources:Landroid/content/res/Resources;

.field public static sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

.field public static sdkVersion:Ljava/lang/String;

.field public static volatile serviceRegistry:Lc8/ehb;

.field public static storageService:Lc8/uhb;

.field public static supportOfflineLogin:Z

.field public static volatile syncInitialized:Z

.field public static timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Bgb;->isMini:Z

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Bgb;->supportOfflineLogin:Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/zgb;->SDK_VERSION:Lc8/Agb;

    invoke-virtual {v1}, Lc8/Agb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-mini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Bgb;->SDK_VERSION_MINI:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/zgb;->SDK_VERSION:Lc8/Agb;

    invoke-virtual {v1}, Lc8/Agb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-std"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Bgb;->SDK_VERSION_STD:Ljava/lang/String;

    .line 34
    sget-object v0, Lc8/Bgb;->SDK_VERSION_MINI:Ljava/lang/String;

    sput-object v0, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/ali/auth/third/core/config/AuthOption;->NORMAL:Lcom/ali/auth/third/core/config/AuthOption;

    sput-object v0, Lc8/Bgb;->authOption:Lcom/ali/auth/third/core/config/AuthOption;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lc8/Bgb;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    new-instance v0, Lc8/hhb;

    invoke-direct {v0}, Lc8/hhb;-><init>()V

    sput-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    .line 62
    new-instance v0, Lc8/Ahb;

    invoke-direct {v0}, Lc8/Ahb;-><init>()V

    sput-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServiceValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    sget-object v1, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    if-eqz v1, :cond_0

    const-class v1, Lc8/thb;

    invoke-static {v1}, Lc8/Bgb;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lc8/uhb;

    invoke-static {v1}, Lc8/Bgb;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lc8/rhb;

    invoke-static {v1}, Lc8/Bgb;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lc8/Bgb;->storageService:Lc8/uhb;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Bgb;->credentialService:Lc8/rhb;

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lc8/Bgb;->storageService:Lc8/uhb;

    invoke-interface {v0}, Lc8/uhb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 101
    const-class v1, Lc8/Bgb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lc8/bib;->getSystemApp()Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEnvironment()Lcom/ali/auth/third/core/config/Environment;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lc8/zgb;->getInstance()Lc8/zgb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    invoke-interface {v0, p0, p1}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getServices(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lc8/ehb;->getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/dhb;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "serviceProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    sget-object v2, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    invoke-interface {v2, p0, p1, v0}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    move-result-object v1

    .line 81
    .local v1, "serviceRegistration":Lc8/dhb;
    return-object v1

    .line 78
    .end local v0    # "serviceProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "serviceRegistration":Lc8/dhb;
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static wrapServiceRegistry()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    instance-of v0, v0, Lc8/jhb;

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lc8/jhb;

    sget-object v1, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    invoke-direct {v0, v1}, Lc8/jhb;-><init>(Lc8/ehb;)V

    sput-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    goto :goto_0
.end method
