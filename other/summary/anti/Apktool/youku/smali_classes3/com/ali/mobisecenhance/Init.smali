.class public Lcom/ali/mobisecenhance/Init;
.super Ljava/lang/Object;
.source "Init.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/RecordLog;


# instance fields
.field private m_baseDir:Ljava/lang/String;

.field private m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

.field private newClassLoader:Ljava/lang/ClassLoader;

.field private old:Landroid/app/Instrumentation;

.field private oldApp:Landroid/app/Application;

.field private oldClassLoader:Ljava/lang/ClassLoader;

.field private oldContext:Landroid/content/Context;

.field private pkgName:Ljava/lang/String;

.field private providers:Ljava/util/List;

.field private tmpInst:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 30
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/Init;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/ali/mobisecenhance/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "app0"    # Ljava/lang/Object;
    .param p2, "ctx0"    # Ljava/lang/Object;
    .param p3, "config"    # Ljava/lang/String;
    .param p4, "oldCL"    # Ljava/lang/Object;
    .param p5, "newCL"    # Ljava/lang/Object;
    .param p6, "baseDir"    # Ljava/lang/String;
    .param p7, "logdir"    # Ljava/lang/String;
    .param p8, "isMainProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    .line 50
    check-cast p2, Landroid/content/Context;

    .end local p2    # "ctx0":Ljava/lang/Object;
    iput-object p2, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    .line 51
    check-cast p1, Landroid/app/Application;

    .end local p1    # "app0":Ljava/lang/Object;
    iput-object p1, p0, Lcom/ali/mobisecenhance/Init;->oldApp:Landroid/app/Application;

    .line 52
    check-cast p4, Ljava/lang/ClassLoader;

    .end local p4    # "oldCL":Ljava/lang/Object;
    iput-object p4, p0, Lcom/ali/mobisecenhance/Init;->oldClassLoader:Ljava/lang/ClassLoader;

    move-object v3, p5

    .line 53
    check-cast v3, Ljava/lang/ClassLoader;

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->newClassLoader:Ljava/lang/ClassLoader;

    .line 54
    iget-object v3, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->pkgName:Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/ali/mobisecenhance/Init;->pkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/mobisecenhance/Init;->oldClassLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/ali/mobisecenhance/Init;->newClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v3, v4, v5}, Lcom/ali/mobisecenhance/Init;->replaceCl(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    .line 57
    sget-object v3, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v4, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v3, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v4, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logdir is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v3, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v4, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baseDir is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p6, p0, Lcom/ali/mobisecenhance/Init;->m_baseDir:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/ali/mobisecenhance/ConfigInfo;->getConfigInfo(Ljava/lang/String;)Lcom/ali/mobisecenhance/ConfigInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 67
    .local v1, "oAT":Landroid/app/ActivityThread;
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->tmpInst:Landroid/app/Instrumentation;

    .line 69
    const-class v3, Landroid/app/ActivityThread;

    const-string v4, "mInstrumentation"

    invoke-static {v3, v1, v4}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation;

    iput-object v3, p0, Lcom/ali/mobisecenhance/Init;->old:Landroid/app/Instrumentation;

    .line 71
    const-class v3, Landroid/app/ActivityThread;

    const-string v4, "mInstrumentation"

    iget-object v5, p0, Lcom/ali/mobisecenhance/Init;->tmpInst:Landroid/app/Instrumentation;

    invoke-static {v3, v1, v4, v5}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v3, "mBoundApplication.providers"

    invoke-static {v1, v3}, Lcom/ali/mobisecenhance/Init;->getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 74
    .local v2, "oldArray":Ljava/util/List;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ali/mobisecenhance/Init;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v5, p0, Lcom/ali/mobisecenhance/Init;->m_baseDir:Ljava/lang/String;

    invoke-static {v3, v4, v5, p7, p8}, Lcom/ali/mobisecenhance/ReflectMap;->loadRflectMap(Landroid/content/Context;Lcom/ali/mobisecenhance/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->realNameMap()Ljava/util/Map;

    move-result-object v0

    .line 81
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p5, Ljava/util/Observer;

    .end local p5    # "newCL":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {p5, v3, v0}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 87
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 88
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 89
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-static {v0}, Lcom/ali/mobisecenhance/Init;->deleteDirectory(Ljava/io/File;)Z

    .line 88
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 97
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fld"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 140
    :goto_0
    return-object v2

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, "pending":Ljava/lang/NoSuchFieldException;
    :goto_1
    if-eqz p0, :cond_2

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_2

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    if-nez v1, :cond_1

    .line 143
    move-object v1, v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 149
    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_2
    throw v1
.end method

.method private getContxtImpl(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p1, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 197
    :goto_0
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 198
    check-cast v0, Landroid/content/ContextWrapper;

    .line 199
    .local v0, "c":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 200
    goto :goto_0

    .line 201
    .end local v0    # "c":Landroid/content/ContextWrapper;
    :cond_0
    return-object p1
.end method

.method private static getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 115
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p0, v0}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "f":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lcom/ali/mobisecenhance/Init;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 128
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private replaceApplication(Landroid/app/Application;)V
    .locals 17
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    .line 326
    .local v8, "oAT":Landroid/app/ActivityThread;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x8

    if-le v12, v13, :cond_1

    .line 329
    :try_start_0
    const-class v12, Landroid/app/ActivityThread;

    const-string v13, "mPackages"

    .line 330
    invoke-static {v12, v8, v13}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 331
    .local v7, "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 333
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 334
    .local v10, "pkg":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    .line 335
    .local v11, "r":Ljava/lang/ref/WeakReference;
    if-nez v11, :cond_3

    const/4 v9, 0x0

    .line 336
    .local v9, "oLoadedApk":Ljava/lang/Object;
    :goto_1
    sget-object v13, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v14, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPackages["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] --> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/mobisecenhance/Init;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 338
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mApplication"

    move-object/from16 v0, p1

    invoke-static {v13, v9, v14, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v9    # "oLoadedApk":Ljava/lang/Object;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v12

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 342
    .end local v7    # "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v4

    .line 343
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v12, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v13, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v14, "fail to replace ActivityThread.mPackages[PKG].mApplication"

    invoke-virtual {v12, v13, v14, v4}, Lcom/ali/mobisecenhance/RecordLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 347
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const-class v12, Landroid/app/ActivityThread;

    const-string v13, "mInitialApplication"

    move-object/from16 v0, p1

    invoke-static {v12, v8, v13, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string v12, "mBoundApplication.info"

    invoke-static {v8, v12}, Lcom/ali/mobisecenhance/Init;->getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 352
    .local v6, "loadedApk":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "mApplication"

    move-object/from16 v0, p1

    invoke-static {v12, v6, v13, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const-class v12, Landroid/app/ActivityThread;

    const-string v13, "mAllApplications"

    invoke-static {v12, v8, v13}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 356
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/Application;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 357
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 358
    .local v1, "a":Landroid/app/Application;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ali/mobisecenhance/Init;->oldApp:Landroid/app/Application;

    if-ne v1, v12, :cond_2

    .line 359
    move-object/from16 v0, p1

    invoke-interface {v2, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 335
    .end local v1    # "a":Landroid/app/Application;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/Application;>;"
    .end local v5    # "i":I
    .end local v6    # "loadedApk":Ljava/lang/Object;
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v7    # "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Ljava/lang/ref/WeakReference;
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_1

    .line 341
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Ljava/lang/ref/WeakReference;
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 362
    .end local v7    # "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/Application;>;"
    .restart local v5    # "i":I
    .restart local v6    # "loadedApk":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private replaceCl(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/ClassLoader;
    .param p3, "newCL"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    const-string v11, "android.app.ApplicationLoaders"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 208
    .local v1, "cApplicationLoaders":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getDefault"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 209
    .local v5, "mAppLoaders_getDefault":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 210
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v5, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 211
    .local v9, "oApplicationLoaders":Ljava/lang/Object;
    const-string v11, "mLoaders"

    invoke-static {v1, v9, v11}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 212
    .local v6, "mLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 213
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    sget-object v13, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v14, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loader: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " -> "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v11, v0, :cond_0

    .line 215
    sget-object v11, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v13, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v14, " YES, that is we want!"

    invoke-virtual {v11, v13, v14}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v1    # "cApplicationLoaders":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .end local v5    # "mAppLoaders_getDefault":Ljava/lang/reflect/Method;
    .end local v6    # "mLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .end local v9    # "oApplicationLoaders":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 220
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v11, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v12, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v13, "fail to replace ApplicationLoaders.mLoaders[PKG]"

    invoke-virtual {v11, v12, v13, v4}, Lcom/ali/mobisecenhance/RecordLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 223
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    .line 227
    .local v8, "oAT":Landroid/app/ActivityThread;
    :try_start_1
    const-class v11, Landroid/app/ActivityThread;

    const-string v12, "mPackages"

    invoke-static {v11, v8, v12}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 228
    .local v7, "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    .line 229
    .local v10, "oLoadedApk":Ljava/lang/Object;
    if-eqz v10, :cond_2

    .line 230
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mClassLoader"

    move-object/from16 v0, p3

    invoke-static {v11, v10, v12, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    .end local v7    # "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v10    # "oLoadedApk":Ljava/lang/Object;
    :cond_2
    :goto_1
    :try_start_2
    const-class v11, Landroid/app/Application;

    const-string v12, "mLoadedApk"

    move-object/from16 v0, p0

    invoke-static {v11, v0, v12}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 236
    .restart local v10    # "oLoadedApk":Ljava/lang/Object;
    if-eqz v10, :cond_3

    .line 237
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mClassLoader"

    move-object/from16 v0, p3

    invoke-static {v11, v10, v12, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .end local v10    # "oLoadedApk":Ljava/lang/Object;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ali/mobisecenhance/Init;->getContxtImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 243
    .local v2, "ctxImpl":Landroid/content/Context;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mPackageInfo"

    invoke-static {v11, v2, v12}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 244
    .restart local v10    # "oLoadedApk":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 245
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mClassLoader"

    move-object/from16 v0, p3

    invoke-static {v11, v10, v12, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 248
    return-void

    .line 239
    .end local v2    # "ctxImpl":Landroid/content/Context;
    .end local v10    # "oLoadedApk":Ljava/lang/Object;
    :catch_1
    move-exception v11

    goto :goto_2

    .line 232
    :catch_2
    move-exception v11

    goto :goto_1
.end method

.method private replaceInstrumentation(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;
    .locals 11
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Landroid/app/Instrumentation;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_2

    .line 157
    const/4 v4, 0x0

    .line 160
    .local v4, "reConstruct":Z
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    const-string v8, "mBoundApplication.instrumentationName"

    invoke-static {v7, v8}, Lcom/ali/mobisecenhance/Init;->getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 161
    .local v2, "instrumentComp":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 162
    .local v5, "sigs":[Landroid/content/pm/Signature;
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ali/mobisecenhance/Init;->pkgName:Ljava/lang/String;

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 163
    .local v6, "sigs2":[Landroid/content/pm/Signature;
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    const/4 v4, 0x1

    .line 170
    .end local v2    # "instrumentComp":Landroid/content/ComponentName;
    .end local v5    # "sigs":[Landroid/content/pm/Signature;
    .end local v6    # "sigs2":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 171
    :try_start_2
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->newClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation;

    .line 172
    .local v3, "newInstrumentation":Landroid/app/Instrumentation;
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NEW instrumentation is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", of CL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-class v7, Landroid/app/Instrumentation;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v1, v8, v7

    .line 175
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 174
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "newInstrumentation":Landroid/app/Instrumentation;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v9, "fail to compare the signature of our apk and the instrumentation apk"

    invoke-virtual {v7, v8, v9, v0}, Lcom/ali/mobisecenhance/RecordLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 190
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "reConstruct":Z
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v9, "fail to replace Instrumentation"

    invoke-virtual {v7, v8, v9, v0}, Lcom/ali/mobisecenhance/RecordLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    move-object v3, p1

    .line 193
    :cond_3
    :goto_3
    return-object v3

    .line 178
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "newInstrumentation":Landroid/app/Instrumentation;
    .restart local v4    # "reConstruct":Z
    :cond_4
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 184
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "newInstrumentation":Landroid/app/Instrumentation;
    :cond_5
    :try_start_4
    const-string v7, "we.have.trouble.to.work.with.none.standard.instrumentation.object"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    :goto_4
    :try_start_5
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 185
    :catch_2
    move-exception v7

    goto :goto_4
.end method

.method private static rethrow(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 102
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .restart local p0    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 105
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 106
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 107
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 109
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private run0()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 274
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    .line 275
    .local v4, "oAT":Landroid/app/ActivityThread;
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->old:Landroid/app/Instrumentation;

    invoke-direct {p0, v7}, Lcom/ali/mobisecenhance/Init;->replaceInstrumentation(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 276
    .local v0, "instrumentation":Landroid/app/Instrumentation;
    const-class v7, Landroid/app/ActivityThread;

    const-string v8, "mInstrumentation"

    invoke-static {v7, v4, v8, v0}, Lcom/ali/mobisecenhance/Init;->setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init Application "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/ali/mobisecenhance/Init;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v10, v10, Lcom/ali/mobisecenhance/ConfigInfo;->applicationName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->newClassLoader:Ljava/lang/ClassLoader;

    iget-object v8, p0, Lcom/ali/mobisecenhance/Init;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v8, v8, Lcom/ali/mobisecenhance/ConfigInfo;->applicationName:Ljava/lang/String;

    iget-object v9, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    .line 281
    .local v2, "n":Landroid/app/Application;
    invoke-direct {p0, v2}, Lcom/ali/mobisecenhance/Init;->setOuterContext(Landroid/app/Application;)V

    .line 283
    invoke-direct {p0, v2}, Lcom/ali/mobisecenhance/Init;->replaceApplication(Landroid/app/Application;)V

    .line 285
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-le v7, v8, :cond_3

    .line 286
    const-string v7, "mBoundApplication.providers"

    invoke-static {v4, v7}, Lcom/ali/mobisecenhance/Init;->getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 287
    .local v5, "oldArray":Ljava/util/List;
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 289
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "o":Ljava/lang/Object;
    instance-of v8, v3, Landroid/content/pm/ProviderInfo;

    if-eqz v8, :cond_1

    move-object v6, v3

    .line 292
    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 293
    .local v6, "pinfo":Landroid/content/pm/ProviderInfo;
    sget-object v8, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pinfo.authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v8, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, "com.youku.phone.commonbundle.hack.provider.authorities"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 298
    .end local v6    # "pinfo":Landroid/content/pm/ProviderInfo;
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lcom/ali/mobisecenhance/Init;->providers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 302
    const-class v7, Landroid/app/ActivityThread;

    const-string v8, "installContentProviders"

    new-array v9, v14, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v13

    const-class v10, Ljava/util/List;

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 303
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 305
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "real provider install size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-array v7, v14, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    aput-object v8, v7, v13

    aput-object v5, v7, v12

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "oldArray":Ljava/util/List;
    :cond_3
    const-class v7, Landroid/app/ActivityThread;

    const-string v8, "mInstrumentation"

    invoke-static {v7, v4, v8}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "instrumentation":Landroid/app/Instrumentation;
    check-cast v0, Landroid/app/Instrumentation;

    .line 312
    .restart local v0    # "instrumentation":Landroid/app/Instrumentation;
    const-string v7, "mBoundApplication.instrumentationArgs"

    invoke-static {v4, v7}, Lcom/ali/mobisecenhance/Init;->getInstanceByFieldExpr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 314
    sget-object v7, Lcom/ali/mobisecenhance/Init;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    const-string v9, "call onCreate() "

    invoke-virtual {v7, v8, v9}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-class v7, Landroid/app/ActivityThread;

    const-string v8, "mInstrumentation"

    invoke-static {v7, v4, v8}, Lcom/ali/mobisecenhance/Init;->getInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "instrumentation":Landroid/app/Instrumentation;
    check-cast v0, Landroid/app/Instrumentation;

    .line 316
    .restart local v0    # "instrumentation":Landroid/app/Instrumentation;
    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 320
    return-void
.end method

.method private static setInstanceField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lcom/ali/mobisecenhance/Init;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 122
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method private setOuterContext(Landroid/app/Application;)V
    .locals 7
    .param p1, "n"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.app.ContextImpl"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 264
    .local v0, "clazzContextImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 265
    const-string v2, "setOuterContext"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 267
    .local v1, "setCnx":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 268
    iget-object v2, p0, Lcom/ali/mobisecenhance/Init;->oldContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v1    # "setCnx":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/ali/mobisecenhance/Init;->run0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ali/mobisecenhance/Init;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
