.class public Lc8/Sy;
.super Ljava/lang/Object;
.source "BundleLifecycleHandler.java"

# interfaces
.implements Lc8/Xeq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private installed(Lc8/Seq;)V
    .locals 0
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 277
    return-void
.end method

.method private isLewaOS()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 359
    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Lc8/Sy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 360
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 361
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ro.lewa.version"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lc8/Sy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lc8/aB;->isNotEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 364
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 364
    goto :goto_0
.end method

.method private loaded(Lc8/Seq;)V
    .locals 4
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 265
    move-object v0, p1

    check-cast v0, Lc8/hy;

    .line 268
    .local v0, "b":Lc8/hy;
    :try_start_0
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uy;->getDebugPatchFilePath()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {v2, v3}, Lc8/cz;->addBundleResources(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static newApplication(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/app/Application;
    .locals 10
    .param p0, "applicationClassName"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/runtime/ApplicationInitException;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 323
    .local v1, "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 324
    new-instance v6, Landroid/taobao/atlas/runtime/ApplicationInitException;

    const-string/jumbo v7, "can not find class: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/taobao/atlas/runtime/ApplicationInitException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 330
    .end local v1    # "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Landroid/taobao/atlas/runtime/ApplicationInitException;

    invoke-direct {v6, v2}, Landroid/taobao/atlas/runtime/ApplicationInitException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 326
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 327
    .local v0, "app":Landroid/app/Application;
    sget-object v6, Lc8/xy;->Application_attach:Lc8/Dy;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 329
    return-object v0

    .line 332
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 333
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    new-instance v6, Landroid/taobao/atlas/runtime/ApplicationInitException;

    invoke-direct {v6, v3}, Landroid/taobao/atlas/runtime/ApplicationInitException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 334
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 335
    .local v4, "e3":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Landroid/taobao/atlas/runtime/ApplicationInitException;

    invoke-direct {v6, v4}, Landroid/taobao/atlas/runtime/ApplicationInitException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 336
    .end local v4    # "e3":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    .line 337
    .local v5, "e4":Ljava/lang/InstantiationException;
    new-instance v6, Landroid/taobao/atlas/runtime/ApplicationInitException;

    invoke-direct {v6, v5}, Landroid/taobao/atlas/runtime/ApplicationInitException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private started(Lc8/Seq;)V
    .locals 12
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 287
    move-object v2, p1

    check-cast v2, Lc8/hy;

    .line 288
    .local v2, "b":Lc8/hy;
    invoke-virtual {v2}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    check-cast v5, Lc8/fy;

    invoke-virtual {v5}, Lc8/fy;->validateClasses()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    :cond_0
    const-string/jumbo v5, "BundleLifeCycle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateClass fail,bundle can\'t be started :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateClass fail,bundle can\'t be started :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v5

    invoke-virtual {v2}, Lc8/hy;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v4

    .line 297
    .local v4, "info":Lc8/Yx;
    if-eqz v4, :cond_2

    .line 298
    invoke-virtual {v4}, Lc8/Yx;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "appClassName":Ljava/lang/String;
    invoke-static {v1}, Lc8/aB;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 301
    :try_start_0
    const-string/jumbo v5, "BundleLifeCycle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v2}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v5}, Lc8/Sy;->newApplication(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/app/Application;

    move-result-object v0

    .line 303
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 304
    const-string/jumbo v5, "BundleLifeCycle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start finish"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    check-cast p1, Lc8/hy;

    .end local p1    # "bundle":Lc8/Seq;
    invoke-virtual {p1}, Lc8/hy;->setActive()V
    :try_end_0
    .catch Landroid/taobao/atlas/runtime/ApplicationInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "appClassName":Ljava/lang/String;
    .end local v4    # "info":Lc8/Yx;
    :cond_2
    :goto_0
    return-void

    .line 306
    .restart local v1    # "appClassName":Ljava/lang/String;
    .restart local v4    # "info":Lc8/Yx;
    :catch_0
    move-exception v3

    .line 307
    .local v3, "e":Landroid/taobao/atlas/runtime/ApplicationInitException;
    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ry;->isDexOpted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 310
    :cond_3
    const-string/jumbo v6, "BundleLifeCycle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "started application crash | "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 314
    .end local v3    # "e":Landroid/taobao/atlas/runtime/ApplicationInitException;
    .restart local p1    # "bundle":Lc8/Seq;
    :cond_5
    check-cast p1, Lc8/hy;

    .end local p1    # "bundle":Lc8/Seq;
    invoke-virtual {p1}, Lc8/hy;->setActive()V

    .line 315
    const-string/jumbo v5, "BundleLifeCycle"

    const-string/jumbo v6, "started with no application"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopped(Lc8/Seq;)V
    .locals 0
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 342
    return-void
.end method

.method private uninstalled(Lc8/Seq;)V
    .locals 0
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 284
    return-void
.end method

.method private updated(Lc8/Seq;)V
    .locals 0
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 281
    return-void
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/osgi/framework/BundleEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 236
    :sswitch_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->loaded(Lc8/Seq;)V

    goto :goto_0

    .line 240
    :sswitch_1
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->installed(Lc8/Seq;)V

    goto :goto_0

    .line 243
    :sswitch_2
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->updated(Lc8/Seq;)V

    goto :goto_0

    .line 246
    :sswitch_3
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->uninstalled(Lc8/Seq;)V

    goto :goto_0

    .line 249
    :sswitch_4
    invoke-direct {p0}, Lc8/Sy;->isLewaOS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 253
    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->started(Lc8/Seq;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->started(Lc8/Seq;)V

    goto :goto_0

    .line 259
    :sswitch_5
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Sy;->stopped(Lc8/Seq;)V

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x4 -> :sswitch_5
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleLowMemory()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method
