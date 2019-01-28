.class public Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;
.super Ljava/lang/Object;
.source "BridgeAppWrapper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private init:Ljava/lang/Runnable;

.field private isMainProcess:Z

.field private final log:Lcom/ali/mobisecenhance/ld/RecordLog;

.field private m_application:Landroid/app/Application;

.field private m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private m_context:Landroid/content/Context;

.field private m_crashHandler:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

.field private m_raw_config:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_crashHandler:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->isMainProcess:Z

    .line 39
    check-cast p1, Landroid/app/Application;

    .end local p1    # "app":Ljava/lang/Object;
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_application:Landroid/app/Application;

    .line 40
    return-void
.end method

.method private attemptUpLoad()V
    .locals 6

    .prologue
    .line 200
    new-instance v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    sget-object v4, Lcom/ali/mobisecenhance/ld/AppInit;->uploadDirPath:Ljava/lang/String;

    sget-object v5, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;-><init>(Landroid/content/Context;ZLcom/ali/mobisecenhance/ld/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v0, "up":Lcom/ali/mobisecenhance/ld/tools/StatusUpload;
    invoke-virtual {v0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->doUpload()V

    .line 206
    return-void
.end method

.method private beginHardWork(Landroid/content/Context;Ldalvik/system/DexFile;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexfile"    # Ldalvik/system/DexFile;

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 79
    .local v10, "start":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 80
    .local v8, "old":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v8, v1, v2}, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->createNew(Ljava/lang/ClassLoader;Landroid/content/Context;Ldalvik/system/DexFile;)Lcom/ali/mobisecenhance/ld/MappingClassLoader;

    move-result-object v7

    .line 82
    .local v7, "mappingClassLoader":Lcom/ali/mobisecenhance/ld/MappingClassLoader;
    :try_start_0
    const-string v9, "com.ali.mobisecenhance.Init"

    invoke-virtual {v7, v9}, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 83
    .local v4, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v9, v12

    const/4 v12, 0x3

    const-class v13, Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x4

    const-class v13, Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x5

    const-class v13, Ljava/lang/String;

    aput-object v13, v9, v12

    const/4 v12, 0x6

    const-class v13, Ljava/lang/String;

    aput-object v13, v9, v12

    const/4 v12, 0x7

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v9, v12

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 85
    .local v5, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 86
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_application:Landroid/app/Application;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object p1, v9, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_raw_config:Ljava/lang/String;

    aput-object v13, v9, v12

    const/4 v12, 0x3

    aput-object v8, v9, v12

    const/4 v12, 0x4

    aput-object v7, v9, v12

    const/4 v12, 0x5

    sget-object v13, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    aput-object v13, v9, v12

    const/4 v12, 0x6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "logRecord"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->isMainProcess:Z

    .line 87
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v9, v12

    .line 86
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->init:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v4    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    const-string v13, "b.attachBaseContext() takes %.2f ms"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v6

    .line 89
    .local v6, "ex":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkMainProcess(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->isMainProcess:Z

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->isMainProcess:Z

    goto :goto_0
.end method

.method private createNew(Ljava/lang/ClassLoader;Landroid/content/Context;Ldalvik/system/DexFile;)Lcom/ali/mobisecenhance/ld/MappingClassLoader;
    .locals 30
    .param p1, "old"    # Ljava/lang/ClassLoader;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dexfile"    # Ldalvik/system/DexFile;

    .prologue
    .line 123
    const/16 v17, 0x0

    .line 126
    .local v17, "path":Ljava/lang/String;
    :try_start_0
    const-string v20, "android.app.ApplicationLoaders"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 127
    .local v4, "cApplicationLoaders":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v20, "getDefault"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 128
    .local v10, "mAppLoaders_getDefault":Ljava/lang/reflect/Method;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 129
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 130
    .local v14, "oApplicationLoaders":Ljava/lang/Object;
    const-string v20, "mLoaders"

    move-object/from16 v0, v20

    invoke-static {v4, v14, v0}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->getInstanceFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 132
    .local v11, "mLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 133
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 134
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v4    # "cApplicationLoaders":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .end local v10    # "mAppLoaders_getDefault":Ljava/lang/reflect/Method;
    .end local v11    # "mLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .end local v14    # "oApplicationLoaders":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 138
    .local v7, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fail to replace ApplicationLoaders.mLoaders[path] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    if-nez v17, :cond_3

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 142
    if-nez v17, :cond_3

    .line 143
    const/4 v12, 0x0

    .line 195
    :cond_2
    :goto_1
    return-object v12

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "path in pplicationLoaders.mLoaders[path] is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 150
    .local v18, "start":J
    new-instance v12, Lcom/ali/mobisecenhance/ld/MappingClassLoader;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lcom/ali/mobisecenhance/ld/MappingClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 152
    .local v12, "n":Lcom/ali/mobisecenhance/ld/MappingClassLoader;
    if-eqz p3, :cond_4

    .line 153
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/ali/mobisecenhance/ld/util/Util;->addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V

    .line 156
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "b.new PathClassLoader() takes %.2f ms"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-class v20, Ldalvik/system/PathClassLoader;

    const-class v21, Ljava/lang/ClassLoader;

    invoke-static/range {v20 .. v21}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->allFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 161
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v21

    if-nez v21, :cond_5

    .line 162
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, "name":Ljava/lang/String;
    const-string v21, "mDexs"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "pathList"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 166
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 169
    .local v9, "fv":Ljava/lang/Object;
    invoke-virtual {v8, v12, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 170
    .end local v9    # "fv":Ljava/lang/Object;
    :catch_1
    move-exception v5

    .line 171
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fail to copy field "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v13    # "name":Ljava/lang/String;
    :cond_6
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 178
    :try_start_2
    const-class v20, Ldalvik/system/DexClassLoader;

    const-string v21, "pathList"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v12, v1}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->getInstanceFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 179
    .local v16, "oPathListR":Ljava/lang/Object;
    const-class v20, Ldalvik/system/DexClassLoader;

    const-string v21, "pathList"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->getInstanceFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 180
    .local v15, "oPathListC":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-class v21, Ljava/lang/Object;

    invoke-static/range {v20 .. v21}, Lcom/ali/mobisecenhance/ld/util/ReflectUtil;->allFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 181
    .restart local v8    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v21

    if-nez v21, :cond_7

    .line 182
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 183
    .restart local v13    # "name":Ljava/lang/String;
    const-string v21, "dexElements"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "definingContext"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 186
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v8, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 190
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "oPathListC":Ljava/lang/Object;
    .end local v16    # "oPathListR":Ljava/lang/Object;
    :catch_2
    move-exception v5

    .line 191
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fail to set definingContext "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 47
    :try_start_0
    const-string v5, "android.app.ActivityThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "currentActivityThread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, "currentActivityThreadm":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "currentActivityThreado":Ljava/lang/Object;
    const-string v5, "getProcessName"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 53
    .local v4, "getProcessName_m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "currentActivityThreadm":Ljava/lang/reflect/Method;
    .end local v2    # "currentActivityThreado":Ljava/lang/Object;
    .end local v4    # "getProcessName_m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 55
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 60
    goto :goto_0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;Ljava/lang/String;Ldalvik/system/DexFile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "raw_config"    # Ljava/lang/String;
    .param p3, "dexfile"    # Ldalvik/system/DexFile;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_raw_config:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_raw_config:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/ConfigInfo;->getConfigInfo(Ljava/lang/String;)Lcom/ali/mobisecenhance/ld/ConfigInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 101
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    invoke-virtual {v3}, Lcom/ali/mobisecenhance/ld/ConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Lcom/ali/mobisecenhance/ld/AppInit;->init(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/ali/mobisecenhance/ld/AppInit;->loadLibrary()V

    .line 107
    new-instance v1, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    sget-object v2, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_context:Landroid/content/Context;

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/ConfigInfo;)V

    iput-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_crashHandler:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .line 108
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_crashHandler:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-virtual {v1}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->openCrashMonitor()V

    .line 110
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "mProcessName":Ljava/lang/String;
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProcessName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->checkMainProcess(Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1, p3}, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->beginHardWork(Landroid/content/Context;Ldalvik/system/DexFile;)V

    .line 117
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 211
    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Wrapper onCreate"

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->isMainProcess:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_config_info:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    iget-boolean v2, v2, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isUpload:Z

    if-eqz v2, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->attemptUpLoad()V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->m_crashHandler:Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-virtual {v2}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->closeCrashMonitor()V

    .line 218
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 219
    .local v1, "mypid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "logfile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->init:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->init:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 224
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ali/mobisecenhance/ld/BridgeAppWrapper;->init:Ljava/lang/Runnable;

    .line 226
    :cond_2
    return-void
.end method
