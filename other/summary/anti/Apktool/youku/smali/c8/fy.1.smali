.class public final Lc8/fy;
.super Lcom/ali/mobisecenhance/BaseDexClassLoader;
.source "BundleClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ey;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final archive:Lc8/ry;

.field bundle:Lc8/hy;

.field public classLoadListener:Lc8/ey;

.field dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field location:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/fy;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lc8/hy;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "bundle"    # Lc8/hy;
    .param p3, "nativeLibPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .local p2, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 267
    const-string/jumbo v3, "."

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {p0, v3, v5, p3, v4}, Lcom/ali/mobisecenhance/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 241
    iput-object v5, p0, Lc8/fy;->dependencies:Ljava/util/List;

    .line 251
    iput-object v5, p0, Lc8/fy;->location:Ljava/lang/String;

    .line 268
    const-string/jumbo v3, "BundleClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nativeLibPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    .line 271
    :try_start_0
    const-string/jumbo v3, "com.android.internal.os.PathClassLoaderFactory"

    invoke-static {v3}, Lc8/fy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 272
    .local v0, "PatchClassLoaderFactory":Ljava/lang/Class;
    const-string/jumbo v3, "createClassloaderNamespace"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/ClassLoader;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 274
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 275
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lc8/fy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "PatchClassLoaderFactory":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iput-object p1, p0, Lc8/fy;->bundle:Lc8/hy;

    .line 283
    iget-object v3, p1, Lc8/hy;->archive:Lc8/ry;

    iput-object v3, p0, Lc8/fy;->archive:Lc8/ry;

    .line 284
    iget-object v3, p1, Lc8/hy;->location:Ljava/lang/String;

    iput-object v3, p0, Lc8/fy;->location:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lc8/fy;->dependencies:Ljava/util/List;

    .line 287
    return-void

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static _3findLoadedClass(Lc8/fy;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Lc8/fy;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private _4replaced128b2c7c_findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 12

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lc8/fy;->findOwnClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 365
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 367
    iget-object v5, p0, Lc8/fy;->classLoadListener:Lc8/ey;

    if-eqz v5, :cond_0

    .line 368
    iget-object v5, p0, Lc8/fy;->classLoadListener:Lc8/ey;

    invoke-interface {v5, v0}, Lc8/ey;->onClassLoaded(Ljava/lang/Class;)V

    :cond_0
    move-object v1, v0

    .line 390
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 374
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_0
    sget-object v5, Lc8/py;->systemClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 375
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 376
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 382
    :cond_2
    iget-object v5, p0, Lc8/fy;->dependencies:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 383
    iget-object v5, p0, Lc8/fy;->dependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "dependencyBundle":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v4

    check-cast v4, Lc8/hy;

    .line 386
    .local v4, "impl":Lc8/hy;
    if-eqz v4, :cond_4

    .line 387
    invoke-virtual {v4}, Lc8/hy;->startBundle()V

    .line 388
    invoke-virtual {v4}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    check-cast v5, Lc8/fy;

    invoke-virtual {v5, p1}, Lc8/fy;->loadOwnClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 390
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 393
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-string/jumbo v5, "BundleClassLoader"

    const-string/jumbo v7, "%s is not success installed by %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/fy;->location:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 395
    .end local v4    # "impl":Lc8/hy;
    :catch_1
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v2    # "dependencyBundle":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in BundleClassLoader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/fy;->bundle:Lc8/hy;

    invoke-virtual {v7}, Lc8/hy;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkEE([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "req"    # [Ljava/lang/String;
    .param p2, "having"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 312
    array-length v2, p1

    if-nez v2, :cond_1

    .line 318
    :cond_0
    return-void

    .line 315
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 316
    .local v0, "havingEEs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 317
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_2
    new-instance v2, Lorg/osgi/framework/BundleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Platform does not provide EEs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findDelegatedClass(Lc8/fy;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "delegation"    # Lc8/fy;
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    invoke-static {p0, p1}, Lc8/fy;->_3findLoadedClass(Lc8/fy;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc8/fy;->findOwnClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findImportedResources(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    sget-object v0, Lc8/fy;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private findOwnClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    iget-object v2, p0, Lc8/fy;->archive:Lc8/ry;

    invoke-virtual {v2, p1, p0}, Lc8/ry;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;

    if-eqz v2, :cond_0

    .line 417
    check-cast v1, Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;

    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    .line 420
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findOwnResources(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Lc8/fy;->archive:Lc8/ry;

    invoke-virtual {v1, p1}, Lc8/ry;->getResources(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    sget-object v1, Lc8/fy;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private static packageOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 601
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 602
    .local v0, "pos":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static pseudoClassname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 612
    invoke-static {p0}, Lc8/fy;->stripTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readProperty(Ljava/util/jar/Attributes;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "attrs"    # Ljava/util/jar/Attributes;
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "values":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 566
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lc8/fy;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 570
    if-nez p0, :cond_1

    .line 571
    new-array v1, v4, [Ljava/lang/String;

    .line 581
    :cond_0
    :goto_0
    return-object v1

    .line 573
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-nez v3, :cond_2

    .line 575
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    aput-object p0, v1, v4

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 578
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 579
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static stripTrailing(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 591
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "filename":Ljava/lang/String;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public addRuntimeDependency(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lc8/fy;->dependencies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fy;->dependencies:Ljava/util/List;

    .line 530
    :cond_0
    iget-object v0, p0, Lc8/fy;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v0

    iget-object v1, p0, Lc8/fy;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Yx;->addRuntimeDependency(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lc8/fy;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_1
    return-void
.end method

.method cleanup(Z)V
    .locals 0
    .param p1, "full"    # Z

    .prologue
    .line 344
    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lc8/fy;->_4replaced128b2c7c_findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lc8/fy;->archive:Lc8/ry;

    invoke-virtual {v3, v1}, Lc8/ry;->findLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 513
    .local v2, "soFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 514
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 523
    :goto_0
    return-object v3

    .line 518
    :cond_0
    :try_start_0
    sget-object v3, Lc8/xy;->ClassLoader_findLibrary:Lc8/Dy;

    sget-object v4, Lc8/py;->systemClassLoader:Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 446
    invoke-static {p1}, Lc8/fy;->stripTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lc8/fy;->findOwnResources(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 449
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 456
    :cond_0
    :goto_0
    return-object v2

    .line 452
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v3}, Lc8/fy;->findImportedResources(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    goto :goto_0

    .line 454
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 468
    invoke-static {p1}, Lc8/fy;->stripTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lc8/fy;->findOwnResources(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 470
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-direct {p0, v0, v2}, Lc8/fy;->findImportedResources(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public getBundle()Lc8/hy;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lc8/fy;->bundle:Lc8/hy;

    return-object v0
.end method

.method public loadOwnClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0, p1}, Lc8/fy;->_3findLoadedClass(Lc8/fy;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lc8/fy;->findOwnClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BundleClassLoader[Bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/fy;->bundle:Lc8/hy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateClasses()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v4, p0, Lc8/fy;->archive:Lc8/ry;

    if-nez v4, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v3

    .line 293
    :cond_1
    iget-object v4, p0, Lc8/fy;->archive:Lc8/ry;

    invoke-virtual {v4}, Lc8/ry;->isDexOpted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 294
    const-string/jumbo v4, "BundleClassLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dexopt is failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/fy;->location:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v4

    iget-object v5, p0, Lc8/fy;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Yx;->getTotalDependency()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 300
    .local v2, "dependencyBundle":Lc8/hy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ry;->isDexOpted()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 304
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v2    # "dependencyBundle":Lc8/hy;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method
