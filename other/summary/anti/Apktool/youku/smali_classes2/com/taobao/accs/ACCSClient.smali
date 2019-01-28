.class public Lcom/taobao/accs/ACCSClient;
.super Ljava/lang/Object;
.source "ACCSClient.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mACCSClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/ACCSClient;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# instance fields
.field private OTAG:Ljava/lang/String;

.field protected mAccsManager:Lcom/taobao/accs/IACCSManager;

.field private mConfig:Lcom/taobao/accs/AccsClientConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "ACCSClient"

    sput-object v0, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    .line 33
    return-void
.end method

.method public static getAccsClient()Lcom/taobao/accs/ACCSClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;
    .locals 9
    .param p0, "configTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 91
    const-class v4, Lcom/taobao/accs/ACCSClient;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string/jumbo p0, "default"

    .line 93
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "configTag null, use default!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v2

    .line 98
    .local v2, "config":Lcom/taobao/accs/AccsClientConfig;
    if-nez v2, :cond_1

    .line 99
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "configTag not exist, please init first!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v3, Lcom/taobao/accs/AccsException;

    const-string/jumbo v5, "tag not exist"

    invoke-direct {v3, v5}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v2    # "config":Lcom/taobao/accs/AccsClientConfig;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 102
    .restart local v2    # "config":Lcom/taobao/accs/AccsClientConfig;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAccsClient"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "configTag"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v3, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ACCSClient;

    .line 105
    .local v0, "client":Lcom/taobao/accs/ACCSClient;
    if-nez v0, :cond_2

    .line 106
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAccsClient create client"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "config"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/taobao/accs/ACCSClient;

    .end local v0    # "client":Lcom/taobao/accs/ACCSClient;
    sget-object v3, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/taobao/accs/ACCSClient;-><init>(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)V

    .line 108
    .restart local v0    # "client":Lcom/taobao/accs/ACCSClient;
    sget-object v3, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {v0, v2}, Lcom/taobao/accs/ACCSClient;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 121
    .end local v0    # "client":Lcom/taobao/accs/ACCSClient;
    .local v1, "client":Ljava/lang/Object;
    :goto_0
    monitor-exit v4

    return-object v1

    .line 113
    .end local v1    # "client":Ljava/lang/Object;
    .restart local v0    # "client":Lcom/taobao/accs/ACCSClient;
    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAccsClient exists"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 115
    .restart local v1    # "client":Ljava/lang/Object;
    goto :goto_0

    .line 118
    .end local v1    # "client":Ljava/lang/Object;
    :cond_3
    sget-object v3, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAccsClient update config"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "old config"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v8}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "new config"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {v0, v2}, Lcom/taobao/accs/ACCSClient;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 121
    .restart local v1    # "client":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/taobao/accs/AccsClientConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 67
    const-class v1, Lcom/taobao/accs/ACCSClient;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/accs/AccsException;

    const-string/jumbo v2, "params error"

    invoke-direct {v0, v2}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    .line 71
    sget-object v0, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "config"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 46
    const-class v3, Lcom/taobao/accs/ACCSClient;

    monitor-enter v3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    new-instance v2, Lcom/taobao/accs/AccsException;

    const-string/jumbo v4, "params error"

    invoke-direct {v2, v4}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 49
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v1

    .line 50
    .local v1, "config":Lcom/taobao/accs/AccsClientConfig;
    sget-boolean v2, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z

    if-nez v2, :cond_2

    .line 51
    new-instance v0, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 52
    .local v0, "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    invoke-virtual {v0, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "init"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "create config, appkey as tag"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .end local v0    # "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    :cond_2
    invoke-static {p0, v1}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method public static declared-synchronized setEnvironment(Landroid/content/Context;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "env"    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    .line 137
    const-class v7, Lcom/taobao/accs/ACCSClient;

    monitor-enter v7

    move v5, p1

    .line 139
    .local v5, "toEnv":I
    if-ltz p1, :cond_0

    if-le p1, v12, :cond_1

    .line 140
    :cond_0
    :try_start_0
    sget-object v6, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "env error"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "env"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const/4 v5, 0x0

    .line 143
    :cond_1
    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 144
    .local v3, "preMode":I
    sput v5, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 146
    if-eq v3, v5, :cond_4

    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isMainProcess(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    sget-object v6, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setEnvironment:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->clearAllSharePreferences(Landroid/content/Context;)V

    .line 149
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->clearAgooBindCache(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->killService(Landroid/content/Context;)V

    .line 151
    if-ne v5, v12, :cond_3

    .line 152
    sget-object v6, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    invoke-static {v6}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 158
    :cond_2
    :goto_0
    sget-object v6, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/ACCSClient;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/taobao/accs/AccsException;
    :try_start_2
    sget-object v6, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setEnvironment update client"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v0, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 167
    .end local v0    # "e":Lcom/taobao/accs/AccsException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/ACCSClient;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "preMode":I
    :catch_1
    move-exception v4

    .line 168
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v6, Lcom/taobao/accs/ACCSClient;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setEnvironment"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v4, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    invoke-static {p0, v5}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_2
    monitor-exit v7

    return-void

    .line 153
    .restart local v3    # "preMode":I
    :cond_3
    if-ne v5, v13, :cond_2

    .line 154
    :try_start_5
    sget-object v6, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    invoke-static {v6}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 170
    .end local v3    # "preMode":I
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-static {p0, v5}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 170
    .restart local v3    # "preMode":I
    :cond_4
    :try_start_7
    invoke-static {p0, v5}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method

.method private updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 127
    sget-object v0, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    .line 128
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IACCSManager;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V

    .line 129
    return-void
.end method


# virtual methods
.method public bindApp(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .param p1, "ttid"    # Ljava/lang/String;
    .param p2, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "bindApp mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    goto :goto_0
.end method

.method public bindService(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "bindService mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->bindService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bindUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "bindUser mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bindUser(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "bindUser mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v2, "cancel mAccsManager null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->cancel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearLoginInfo()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "clearLoginInfo mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->clearLoginInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public forceDisableService()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "forceDisableService mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->forceDisableService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public forceEnableService()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "forceEnableService mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->forceEnableService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "forceReConnectChannel mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->forceReConnectChannel()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getChannelState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "getChannelState mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->getChannelState()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "getUserUnit mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->getUserUnit()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isChannelError(I)Z
    .locals 3
    .param p1, "errorcode"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "isChannelError mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IACCSManager;->isChannelError(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isNetworkReachable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v2, "isNetworkReachable mAccsManager null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->isNetworkReachable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerDataListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/accs/base/AccsAbstractDataListener;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDataListener mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    goto :goto_0
.end method

.method public registerSerivce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSerivce mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "flags"    # S
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p6, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendBusinessAck mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/taobao/accs/IACCSManager;->sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public sendData(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 3
    .param p1, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendData mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendPushResponse(Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p2, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPushResponse mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRequest(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 3
    .param p1, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequest mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setLoginInfo(Lcom/taobao/accs/ILoginInfo;)V
    .locals 3
    .param p1, "loginInfoImpl"    # Lcom/taobao/accs/ILoginInfo;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "setLoginInfo mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V

    goto :goto_0
.end method

.method public startInAppConnection(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .param p1, "ttid"    # Ljava/lang/String;
    .param p2, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "startInAppConnection mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    goto :goto_0
.end method

.method public unRegisterDataListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterDataListener mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterSerivce(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterSerivce mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindService(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindService mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unbindService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindUser()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->OTAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindUser mAccsManager null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->unbindUser(Landroid/content/Context;)V

    goto :goto_0
.end method
