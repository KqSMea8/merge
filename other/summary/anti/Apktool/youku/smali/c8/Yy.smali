.class public Lc8/Yy;
.super Lcom/ali/mobisecenhance/PathClassLoader;
.source "DelegateClassLoader.java"


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 233
    const-string/jumbo v0, "."

    invoke-direct {p0, v0, p1}, Lcom/ali/mobisecenhance/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 234
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private _4replaced5e73eb25_findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 255
    invoke-static {p1}, Lc8/Vy;->checkBundleStateSyncOnChildThread(Ljava/lang/String;)Z

    .line 259
    :goto_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lc8/Yy;->loadFromInstalledBundles(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 267
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v0

    .line 257
    :cond_0
    invoke-static {p1}, Lc8/Vy;->checkBundleStateSyncOnUIThread(Ljava/lang/String;)Z

    goto :goto_0

    .line 263
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-static {v1}, Lc8/Yy;->isProvider(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const-class v2, Lc8/dy;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "android.taobao.atlas.util.FakeProvider"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {v1}, Lc8/Yy;->isReceiver(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    const-class v2, Lc8/dy;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "android.taobao.atlas.util.FakeReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 270
    :cond_3
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lc8/Yy;->printExceptionInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private _4replaced5e73eb25_loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/ali/mobisecenhance/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 400
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 401
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    return-object v1

    .line 398
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getPackageVersion()I
    .locals 4

    .prologue
    .line 364
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 365
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 371
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v2

    .line 368
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method private static isProvider(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 387
    :try_start_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReceiver(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 376
    :try_start_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadFromInstalledBundles(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 14
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "safe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
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
    const/4 v8, 0x0

    .line 297
    const/4 v5, 0x0

    .line 298
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v9

    invoke-virtual {v9, p0}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "bundleName":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v9

    invoke-virtual {v9, v2}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    check-cast v1, Lc8/hy;

    .line 301
    .local v1, "bundle":Lc8/hy;
    if-eqz v1, :cond_7

    .line 302
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 303
    invoke-virtual {v1}, Lc8/hy;->optDexFile()V

    .line 305
    :cond_0
    invoke-virtual {v1}, Lc8/hy;->startBundle()V

    .line 306
    invoke-virtual {v1}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 308
    .local v4, "classloader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_1

    .line 309
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 310
    if-eqz v5, :cond_1

    move-object v8, v5

    .line 357
    .end local v4    # "classloader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v8

    .restart local v4    # "classloader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v9

    .line 316
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 317
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 318
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 319
    const-string/jumbo v9, "MainThreadFindClass"

    const-string/jumbo v10, "can not findClass %s from %s in UI thread "

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v8

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eqz p1, :cond_7

    .line 323
    new-instance v6, Landroid/content/ComponentName;

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v6, "component":Landroid/content/ComponentName;
    invoke-static {v6}, Lc8/Yy;->isProvider(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 325
    const-class v8, Lc8/dy;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string/jumbo v9, "android.taobao.atlas.util.FakeProvider"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .line 326
    :cond_3
    invoke-static {v6}, Lc8/Yy;->isReceiver(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 327
    const-class v8, Lc8/dy;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string/jumbo v9, "android.taobao.atlas.util.FakeReceiver"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .line 329
    :cond_4
    new-instance v9, Ljava/lang/ClassNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t find class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in BundleClassLoader: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lc8/hy;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v4, :cond_6

    const-string/jumbo v8, "classloader is null"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " packageversion "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 330
    invoke-static {}, Lc8/Yy;->getPackageVersion()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 329
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "classloader not null"

    goto :goto_2

    .line 340
    .end local v4    # "classloader":Ljava/lang/ClassLoader;
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_7
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 341
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Seq;

    .local v0, "b":Lc8/Seq;
    move-object v1, v0

    .line 342
    check-cast v1, Lc8/hy;

    .line 343
    invoke-virtual {v1}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v9

    invoke-virtual {v9}, Lc8/ry;->isDexOpted()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 344
    invoke-virtual {v1}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 346
    .restart local v4    # "classloader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_8

    .line 347
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 348
    if-eqz v5, :cond_8

    move-object v8, v5

    .line 349
    goto/16 :goto_0

    .end local v0    # "b":Lc8/Seq;
    .end local v4    # "classloader":Ljava/lang/ClassLoader;
    :cond_9
    move-object v8, v5

    .line 357
    goto/16 :goto_0

    .restart local v0    # "b":Lc8/Seq;
    .restart local v4    # "classloader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method private printExceptionInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installed bundles: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Seq;

    .line 283
    .local v0, "b":Lc8/Seq;
    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.ut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :goto_1
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    .end local v0    # "b":Lc8/Seq;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addDexPath(Ljava/lang/String;)V
    .locals 7
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lc8/Yy;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "addDexPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/Yy;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 239
    .local v0, "addDexMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 240
    invoke-virtual {p0}, Lc8/Yy;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lc8/Yy;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "addDexMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
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

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lc8/Yy;->_4replaced5e73eb25_findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
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

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lc8/Yy;->_4replaced5e73eb25_loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
