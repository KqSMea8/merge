.class public Landroid/taobao/atlas/startup/AtlasBridgeApplication;
.super Landroid/app/Application;
.source "StubApplication.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

.field private m_appWrapper:Ljava/lang/Object;

.field private m_attachBaseContext:Ljava/lang/reflect/Method;

.field private m_baseDir:Ljava/lang/String;

.field private m_crashHandler:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

.field private m_onCreate:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 13
    const-class v0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;-><init>()V

    iput-object v0, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    .line 16
    iput-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_crashHandler:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .line 17
    iput-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_appWrapper:Ljava/lang/Object;

    .line 18
    iput-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_attachBaseContext:Ljava/lang/reflect/Method;

    .line 19
    iput-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_onCreate:Ljava/lang/reflect/Method;

    .line 20
    iput-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 32
    const-string v7, "BOOT_TIME_OBF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->getConfig()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->getConfigInfo(Ljava/lang/String;)Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    move-result-object v1

    .line 36
    .local v1, "configs":Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "ali-s"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    .line 37
    new-instance v7, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    iget-object v8, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->getConfig()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, p1, v1, v9}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;Ljava/lang/String;)V

    iput-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_crashHandler:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .line 38
    const/4 v3, 0x0

    .line 43
    .local v3, "dexfile":Ldalvik/system/DexFile;
    :try_start_0
    iget-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    iget-object v8, v1, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->timeStamp:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/ali/mobisecenhance/ld/startup/Update;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    iget-object v8, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "miniLogRecord"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    iget-object v8, v1, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->addDexName:Ljava/lang/String;

    invoke-static {p1, v7, v8}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addDexFileToClassLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile;

    move-result-object v3

    .line 47
    invoke-virtual {p0}, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "com.ali.mobisecenhance.ld.BridgeAppWrapper"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "brigeAppWrapper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 49
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 50
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_appWrapper:Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    .line 52
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attachBaseContext"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 53
    iput-object v5, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_attachBaseContext:Ljava/lang/reflect/Method;

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "onCreate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    iput-object v5, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_onCreate:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    .end local v0    # "brigeAppWrapper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_crashHandler:Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "miniLogRecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->recordException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 67
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 60
    .restart local v0    # "brigeAppWrapper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_attachBaseContext:Ljava/lang/reflect/Method;

    iget-object v7, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_appWrapper:Ljava/lang/Object;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->getConfig()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected getConfig()Ljava/lang/String;
    .locals 1

    const-string v0, "android.taobao.atlas.startup.AtlasBridgeApplication,3.2.9,false,true,1513754879070,classes3.dex"

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_onCreate:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_appWrapper:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/taobao/atlas/startup/AtlasBridgeApplication;->m_baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "miniLogRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
