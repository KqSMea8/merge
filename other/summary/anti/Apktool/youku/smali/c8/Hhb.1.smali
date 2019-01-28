.class public Lc8/Hhb;
.super Ljava/lang/Object;
.source "InitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "init"


# instance fields
.field private envIndex:Ljava/lang/Integer;

.field private initResultCallback:Lc8/wgb;


# direct methods
.method public constructor <init>(Lc8/wgb;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "initResultCallback"    # Lc8/wgb;
    .param p2, "envIndex"    # Ljava/lang/Integer;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/Hhb;->initResultCallback:Lc8/wgb;

    .line 40
    iput-object p2, p0, Lc8/Hhb;->envIndex:Ljava/lang/Integer;

    .line 41
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lc8/Hhb;)Lc8/wgb;
    .locals 1
    .param p0, "x0"    # Lc8/Hhb;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Hhb;->initResultCallback:Lc8/wgb;

    return-object v0
.end method

.method private asyncRun()V
    .locals 6

    .prologue
    .line 256
    :try_start_0
    invoke-direct {p0}, Lc8/Hhb;->getTimeStamp()J

    move-result-wide v2

    .line 257
    .local v2, "timeStamp":J
    const-string/jumbo v1, "init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeStamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sput-wide v2, Lc8/Bgb;->timestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2    # "timeStamp":J
    :goto_0
    invoke-virtual {p0}, Lc8/Hhb;->initialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const-string/jumbo v1, "init"

    const-string/jumbo v4, " INIT FAILURE"

    invoke-static {v1, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v4, Lc8/Fhb;

    invoke-direct {v4, p0}, Lc8/Fhb;-><init>(Lc8/Hhb;)V

    invoke-interface {v1, v4}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 286
    :goto_1
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "init"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v4, Lc8/Ghb;

    invoke-direct {v4, p0}, Lc8/Ghb;-><init>(Lc8/Hhb;)V

    invoke-interface {v1, v4}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 284
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lc8/Bgb;->isInitOk:Ljava/lang/Boolean;

    .line 285
    const-string/jumbo v1, "init"

    const-string/jumbo v4, "INIT SUCCESS"

    invoke-static {v1, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "paramTypeNames"    # [Ljava/lang/String;
    .param p3, "paramValues"    # [Ljava/lang/Object;

    .prologue
    .line 199
    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/Xhb;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e2":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTimeStamp()J
    .locals 4

    .prologue
    .line 309
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 320
    :goto_0
    return-wide v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "init"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    goto :goto_0
.end method

.method private initializeCoreComponents()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 79
    :try_start_0
    const-class v3, Landroid/os/AsyncTask;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-static {}, Lc8/Bgb;->wrapServiceRegistry()V

    .line 86
    invoke-static {}, Lc8/zgb;->getInstance()Lc8/zgb;

    move-result-object v3

    iget-object v5, p0, Lc8/Hhb;->envIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lc8/zgb;->init(I)V

    .line 88
    sget-object v1, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    .line 90
    .local v1, "serviceRegistry":Lc8/ehb;
    invoke-direct {p0, v1}, Lc8/Hhb;->registerRpc(Lc8/ehb;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    :goto_1
    return v0

    .line 93
    :cond_1
    invoke-direct {p0, v1}, Lc8/Hhb;->registerStorage(Lc8/ehb;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-direct {p0, v1}, Lc8/Hhb;->registerUserTrack(Lc8/ehb;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string/jumbo v3, "plugin.vendor"

    const-string/jumbo v5, "kernel"

    invoke-static {v3, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 103
    .local v2, "systemServiceProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Lc8/shb;

    aput-object v5, v3, v0

    const-class v5, Ljava/util/concurrent/ExecutorService;

    aput-object v5, v3, v4

    sget-object v5, Lc8/Bgb;->executorService:Lc8/shb;

    invoke-interface {v1, v3, v5, v2}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 106
    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Lc8/rhb;

    aput-object v5, v3, v0

    sget-object v5, Lc8/whb;->INSTANCE:Lc8/whb;

    const-string/jumbo v6, "scop"

    const-string/jumbo v7, "system"

    invoke-static {v6, v7}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 109
    const-class v3, Lc8/rhb;

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/rhb;

    sput-object v3, Lc8/Bgb;->credentialService:Lc8/rhb;

    .line 113
    invoke-direct {p0}, Lc8/Hhb;->loadLogin()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lc8/Hhb;->loadOfflineLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v4

    .line 114
    .local v0, "loginPluginsStarted":Z
    :cond_3
    sget-boolean v3, Lc8/Bgb;->isMini:Z

    if-nez v3, :cond_4

    .line 115
    invoke-direct {p0}, Lc8/Hhb;->loadAccountLink()Z

    .line 117
    :cond_4
    const-string/jumbo v3, "init"

    const-string/jumbo v4, "INIT SUCCESS"

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "loginPluginsStarted":Z
    .end local v1    # "serviceRegistry":Lc8/ehb;
    .end local v2    # "systemServiceProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initializeUTDId()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Kgb;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private loadAccountLink()Z
    .locals 5

    .prologue
    .line 231
    const-string/jumbo v1, "init"

    const-string/jumbo v2, "register account link service"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    const-string/jumbo v1, "com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter"

    invoke-static {v1}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    .local v0, "loginLifecycleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter"

    const-string/jumbo v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lc8/Xhb;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v1, 0x1

    .line 237
    .end local v0    # "loginLifecycleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadLogin()Z
    .locals 5

    .prologue
    .line 208
    const-string/jumbo v1, "init"

    const-string/jumbo v2, "register login service"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :try_start_0
    const-string/jumbo v1, "com.ali.auth.third.login.LoginLifecycleAdapter"

    invoke-static {v1}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, "loginLifecycleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "com.ali.auth.third.login.LoginLifecycleAdapter"

    const-string/jumbo v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lc8/Xhb;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v1, 0x1

    .line 214
    .end local v0    # "loginLifecycleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadOfflineLogin()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 219
    const-string/jumbo v2, "init"

    const-string/jumbo v3, "register offline login service"

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_0
    const-string/jumbo v2, "com.ali.auth.third.offline.login.LoginLifecycleAdapter"

    invoke-static {v2}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "offlineLoginService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "com.ali.auth.third.offline.login.LoginLifecycleAdapter"

    const-string/jumbo v3, "init"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lc8/Xhb;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Bgb;->supportOfflineLogin:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "offlineLoginService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerRpc(Lc8/ehb;)Z
    .locals 8
    .param p1, "serviceRegistry"    # Lc8/ehb;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    const-string/jumbo v5, "init"

    const-string/jumbo v6, "registerRpc"

    invoke-static {v5, v6}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, "isMtopRpc":Z
    :try_start_0
    const-string/jumbo v5, "com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl"

    invoke-static {v5}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v2, 0x1

    .line 159
    :goto_0
    if-eqz v2, :cond_0

    .line 160
    :try_start_1
    const-string/jumbo v5, "com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "instance":Ljava/lang/Object;
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lc8/thb;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-interface {p1, v5, v1, v6}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    move v3, v4

    .line 169
    .end local v1    # "instance":Ljava/lang/Object;
    :goto_2
    return v3

    .line 162
    :cond_0
    const-string/jumbo v5, "com.ali.auth.third.core.rpc.CommRpcServiceImpl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "instance":Ljava/lang/Object;
    goto :goto_1

    .line 166
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e2":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e2":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private registerStorage(Lc8/ehb;)Z
    .locals 8
    .param p1, "serviceRegistry"    # Lc8/ehb;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    const-string/jumbo v3, "init"

    const-string/jumbo v6, "registerStorage"

    invoke-static {v3, v6}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "isSecurityGuardDetected":Z
    :try_start_0
    const-string/jumbo v3, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    invoke-static {v3}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 127
    const/4 v2, 0x1

    .line 128
    const/4 v3, 0x0

    sput-boolean v3, Lc8/Bgb;->isMini:Z

    .line 129
    sget-object v3, Lc8/Bgb;->SDK_VERSION_STD:Ljava/lang/String;

    sput-object v3, Lc8/Bgb;->sdkVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    if-eqz v2, :cond_0

    .line 134
    :try_start_1
    const-string/jumbo v3, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v7}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "instance":Ljava/lang/Object;
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lc8/uhb;

    aput-object v7, v3, v6

    const/4 v6, 0x0

    invoke-interface {p1, v3, v1, v6}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 139
    const-class v3, Lc8/uhb;

    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uhb;

    sput-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    move v3, v5

    .line 144
    .end local v1    # "instance":Ljava/lang/Object;
    :goto_2
    return v3

    .line 136
    :cond_0
    const-string/jumbo v3, "com.ali.auth.third.core.storage.CommonStorageServiceImpl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v7}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "instance":Ljava/lang/Object;
    goto :goto_1

    .line 141
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e2":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    move v3, v4

    .line 144
    goto :goto_2

    .end local v0    # "e2":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private registerUserTrack(Lc8/ehb;)Z
    .locals 9
    .param p1, "serviceRegistry"    # Lc8/ehb;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    const-string/jumbo v6, "init"

    const-string/jumbo v7, "registerUserTrack"

    invoke-static {v6, v7}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "hasUT":Z
    :try_start_0
    const-string/jumbo v0, "com.ali.auth.third.ut.UserTrackerImpl"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v0, "UT_Class":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lc8/Hhb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    const/4 v2, 0x1

    .line 184
    :goto_0
    if-eqz v2, :cond_0

    .line 185
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v0, v6, v7}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 189
    .local v3, "instance":Ljava/lang/Object;
    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lc8/vhb;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-interface {p1, v6, v3, v7}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 194
    .end local v0    # "UT_Class":Ljava/lang/String;
    .end local v3    # "instance":Ljava/lang/Object;
    :goto_2
    return v4

    .line 187
    .restart local v0    # "UT_Class":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "com.ali.auth.third.core.ut.UserTracer"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lc8/Hhb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .restart local v3    # "instance":Ljava/lang/Object;
    goto :goto_1

    .line 191
    .end local v0    # "UT_Class":Ljava/lang/String;
    .end local v3    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    move v4, v5

    .line 194
    goto :goto_2

    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v0    # "UT_Class":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method protected doFinally()V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lc8/Bgb;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 306
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lc8/Bgb;->isInitOk:Ljava/lang/Boolean;

    .line 293
    instance-of v3, p1, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    invoke-virtual {v3}, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->getSDKMessage()Lc8/Mgb;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 294
    check-cast p1, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    .end local p1    # "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->getSDKMessage()Lc8/Mgb;

    move-result-object v0

    .line 295
    .local v0, "error":Lc8/Mgb;
    iget v1, v0, Lc8/Mgb;->code:I

    .line 296
    .local v1, "errorCode":I
    iget-object v2, v0, Lc8/Mgb;->message:Ljava/lang/String;

    .line 301
    .end local v0    # "error":Lc8/Mgb;
    .local v2, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lc8/Hhb;->initResultCallback:Lc8/wgb;

    invoke-static {v3, v1, v2}, Lc8/Shb;->onFailure(Lc8/vgb;ILjava/lang/String;)V

    .line 302
    return-void

    .line 298
    .end local v1    # "errorCode":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/16 v1, 0x271a

    .line 299
    .restart local v1    # "errorCode":I
    invoke-static {p1}, Lc8/Shb;->toString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "errorMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method public initialize()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 49
    const-string/jumbo v2, "init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sdk version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/zgb;->SDK_VERSION:Lc8/Agb;

    invoke-virtual {v4}, Lc8/Agb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lc8/Hhb;->initializeUTDId()V

    .line 52
    sget-boolean v2, Lc8/Bgb;->syncInitialized:Z

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return v1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 58
    invoke-direct {p0}, Lc8/Hhb;->initializeCoreComponents()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Bgb;->syncInitialized:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "init"

    const-string/jumbo v2, "fail to sync start"

    invoke-static {v1, v2, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0, v0}, Lc8/Hhb;->doWhenException(Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    sget-object v1, Lc8/Bgb;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    invoke-direct {p0}, Lc8/Hhb;->asyncRun()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p0}, Lc8/Hhb;->doFinally()V

    .line 251
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "init"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {p0, v0}, Lc8/Hhb;->doWhenException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {p0}, Lc8/Hhb;->doFinally()V

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lc8/Hhb;->doFinally()V

    throw v1
.end method
