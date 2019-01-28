.class public Lc8/dy;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/by;,
        Lc8/cy;
    }
.end annotation


# static fields
.field public static Downgrade_H5:Z

.field public static isDebug:Z

.field private static final mInstance:Lc8/dy;

.field public static sAPKSource:Ljava/lang/String;

.field public static sDisableBundle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundleLifecycleHandler:Lc8/Sy;

.field private frameworkLifecycleHandler:Lc8/gz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Lc8/dy;->Downgrade_H5:Z

    .line 254
    const/4 v0, 0x0

    sput-object v0, Lc8/dy;->sDisableBundle:Ljava/util/Set;

    .line 259
    new-instance v0, Lc8/dy;

    invoke-direct {v0}, Lc8/dy;-><init>()V

    sput-object v0, Lc8/dy;->mInstance:Lc8/dy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method private checkingThread(Z)V
    .locals 4
    .param p1, "strict"    # Z

    .prologue
    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can not install bundle in ui thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method public static getInstance()Lc8/dy;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lc8/dy;->mInstance:Lc8/dy;

    return-object v0
.end method

.method public static isDisableBundle(Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 605
    sget-object v0, Lc8/dy;->sDisableBundle:Ljava/util/Set;

    .line 606
    .local v0, "disableBundle":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 607
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 609
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addBundleListener(Lc8/Teq;)V
    .locals 0
    .param p1, "listener"    # Lc8/Teq;

    .prologue
    .line 520
    invoke-static {p1}, Lc8/py;->addBundleListener(Lc8/Teq;)V

    .line 521
    return-void
.end method

.method public checkDownGradeToH5(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 335
    sget-boolean v1, Lc8/dy;->Downgrade_H5:Z

    if-eqz v1, :cond_2

    .line 336
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&hybrid=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 348
    const-string/jumbo v1, "com.taobao.intent.category.HYBRID_UI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-void

    .line 344
    .restart local v0    # "url":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?hybrid=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public forceStopSelf()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public getBundle(Ljava/lang/String;)Lc8/Seq;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    return-object v0
.end method

.method public getBundleClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    .line 496
    .local v0, "bundle":Lc8/Seq;
    if-eqz v0, :cond_0

    .line 497
    check-cast v0, Lc8/hy;

    .end local v0    # "bundle":Lc8/Seq;
    invoke-virtual {v0}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .restart local v0    # "bundle":Lc8/Seq;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBundleFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    .line 509
    .local v0, "bundle":Lc8/Seq;
    if-eqz v0, :cond_0

    .line 510
    check-cast v0, Lc8/hy;

    .end local v0    # "bundle":Lc8/Seq;
    iget-object v1, v0, Lc8/hy;->archive:Lc8/ry;

    invoke-virtual {v1}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v1

    .line 512
    :goto_0
    return-object v1

    .restart local v0    # "bundle":Lc8/Seq;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Seq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    return-object v0
.end method

.method public getDelegateResources()Landroid/content/res/Resources;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public init(Landroid/app/Application;Z)V
    .locals 10
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/AssertionArrayException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x19

    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "application is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 280
    .local v1, "app_info":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v6, Lc8/dy;->sAPKSource:Ljava/lang/String;

    .line 281
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 282
    sput-object p1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 283
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 284
    sput-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-static {v6}, Lc8/cz;->walkroundActionMenuTextColor(Landroid/content/res/Resources;)V

    .line 285
    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->sInstalledVersionName:Ljava/lang/String;

    sput-object v6, Lc8/py;->containerVersion:Ljava/lang/String;

    .line 286
    const-class v6, Lc8/dy;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 287
    .local v2, "cl":Ljava/lang/ClassLoader;
    sput-object v2, Lc8/py;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 289
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "packageName":Ljava/lang/String;
    new-instance v4, Lc8/Yy;

    invoke-direct {v4, v2}, Lc8/Yy;-><init>(Ljava/lang/ClassLoader;)V

    .line 293
    .local v4, "newClassLoader":Lc8/Yy;
    sput-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    .line 295
    invoke-static {v5, v4}, Lc8/wy;->injectClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 296
    new-instance v6, Landroid/taobao/atlas/runtime/InstrumentationHook;

    invoke-static {}, Lc8/wy;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/taobao/atlas/runtime/InstrumentationHook;-><init>(Landroid/app/Instrumentation;Landroid/content/Context;)V

    invoke-static {v6}, Lc8/wy;->injectInstrumentationHook(Landroid/app/Instrumentation;)V

    .line 298
    new-instance v6, Lc8/Sy;

    invoke-direct {v6}, Lc8/Sy;-><init>()V

    iput-object v6, p0, Lc8/dy;->bundleLifecycleHandler:Lc8/Sy;

    .line 299
    sget-object v6, Lc8/py;->syncBundleListeners:Ljava/util/List;

    iget-object v7, p0, Lc8/dy;->bundleLifecycleHandler:Lc8/Sy;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v6, Lc8/gz;

    invoke-direct {v6}, Lc8/gz;-><init>()V

    iput-object v6, p0, Lc8/dy;->frameworkLifecycleHandler:Lc8/gz;

    .line 301
    sget-object v6, Lc8/py;->frameworkListeners:Ljava/util/List;

    iget-object v7, p0, Lc8/dy;->frameworkLifecycleHandler:Lc8/gz;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :try_start_0
    new-instance v0, Lc8/Ny;

    invoke-direct {v0}, Lc8/Ny;-><init>()V

    .line 307
    .local v0, "activityManagerProxy":Lc8/Ny;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v9, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v9, :cond_2

    sget v6, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v6, :cond_2

    .line 308
    :cond_1
    sget-object v6, Lc8/xy;->ActivityManager_IActivityManagerSingleton:Lc8/Cy;

    sget-object v7, Lc8/xy;->ActivityManager:Lc8/Ay;

    invoke-virtual {v7}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 312
    .local v3, "gDefault":Ljava/lang/Object;
    :goto_0
    sget-object v6, Lc8/xy;->Singleton_mInstance:Lc8/Cy;

    invoke-virtual {v6, v3, v0}, Lc8/Cy;->hijack(Ljava/lang/Object;Lc8/Gy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "activityManagerProxy":Lc8/Ny;
    .end local v3    # "gDefault":Ljava/lang/Object;
    :goto_1
    invoke-static {}, Lc8/wy;->hackH()Landroid/os/Handler;

    .line 315
    return-void

    .line 310
    .restart local v0    # "activityManagerProxy":Lc8/Ny;
    :cond_2
    :try_start_1
    sget-object v6, Lc8/xy;->ActivityManagerNative_gDefault:Lc8/Cy;

    sget-object v7, Lc8/xy;->ActivityManagerNative:Lc8/Ay;

    invoke-virtual {v7}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "gDefault":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "activityManagerProxy":Lc8/Ny;
    .end local v3    # "gDefault":Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public installBundle(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "Atlas"

    const-string/jumbo v1, "empty location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    if-nez v0, :cond_1

    .line 401
    invoke-direct {p0, v3}, Lc8/dy;->checkingThread(Z)V

    .line 402
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    new-array v2, v2, [Ljava/io/File;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/my;->installSync([Ljava/lang/String;[Ljava/io/File;)V

    .line 404
    :cond_1
    return-void
.end method

.method public installBundle(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "Atlas"

    const-string/jumbo v1, "empty location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    if-nez v0, :cond_1

    .line 390
    invoke-direct {p0, v3}, Lc8/dy;->checkingThread(Z)V

    .line 391
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    new-array v2, v2, [Ljava/io/InputStream;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/my;->installSync([Ljava/lang/String;[Ljava/io/InputStream;)V

    .line 393
    :cond_1
    return-void
.end method

.method public installBundleTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V
    .locals 1
    .param p1, "locations"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/ly;

    .prologue
    .line 451
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/my;->installTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V

    .line 452
    return-void
.end method

.method public installBundleWithDependency(Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string/jumbo v0, "Atlas"

    const-string/jumbo v1, "empty location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0, v2}, Lc8/dy;->checkingThread(Z)V

    .line 380
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lc8/my;->installTransitivelySync([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installDelayBundleTransitively(Ljava/lang/String;Lc8/ly;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/ly;

    .prologue
    .line 469
    invoke-static {p1, p2}, Lc8/my;->startDelayInstall(Ljava/lang/String;Lc8/ly;)V

    .line 470
    return-void
.end method

.method public installIdleBundleTransitively(Ljava/lang/String;Lc8/ly;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/ly;

    .prologue
    .line 460
    invoke-static {p1, p2}, Lc8/my;->startIdleInstall(Ljava/lang/String;Lc8/ly;)V

    .line 461
    return-void
.end method

.method public removeBundleListener(Lc8/Teq;)V
    .locals 0
    .param p1, "listener"    # Lc8/Teq;

    .prologue
    .line 528
    invoke-static {p1}, Lc8/py;->removeBundleListener(Lc8/Teq;)V

    .line 529
    return-void
.end method

.method public requestRuntimeDependency(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)V
    .locals 3
    .param p1, "source"    # Ljava/lang/ClassLoader;
    .param p2, "dependency"    # Ljava/lang/ClassLoader;
    .param p3, "resourceDependencyNeed"    # Z

    .prologue
    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PathClassLoader can not have bundle dependency"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 565
    .end local p1    # "source":Ljava/lang/ClassLoader;
    .end local p2    # "dependency":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    return-void

    .line 553
    .restart local p1    # "source":Ljava/lang/ClassLoader;
    .restart local p2    # "dependency":Ljava/lang/ClassLoader;
    :cond_2
    instance-of v1, p1, Lc8/fy;

    if-nez v1, :cond_3

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "source must be bundleclassloader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_3
    instance-of v1, p2, Lc8/fy;

    if-nez v1, :cond_4

    .line 557
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "dependency must be bundleclassloader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_4
    check-cast p2, Lc8/fy;

    .end local p2    # "dependency":Ljava/lang/ClassLoader;
    iget-object v0, p2, Lc8/fy;->location:Ljava/lang/String;

    .line 560
    .local v0, "dependencyLocation":Ljava/lang/String;
    check-cast p1, Lc8/fy;

    .end local p1    # "source":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Lc8/fy;->addRuntimeDependency(Ljava/lang/String;)V

    .line 562
    if-eqz p3, :cond_1

    .line 563
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Oy;->updateBundleActivityResource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestRuntimeDependency(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "source"    # Ljava/lang/ClassLoader;
    .param p2, "dependencyBundle"    # Ljava/lang/String;
    .param p3, "resourceDependencyNeed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 575
    invoke-direct {p0, v2}, Lc8/dy;->checkingThread(Z)V

    .line 576
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 577
    .local v0, "impl":Lc8/hy;
    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lc8/my;->installTransitivelySync([Ljava/lang/String;)V

    .line 580
    :cond_0
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    .end local v0    # "impl":Lc8/hy;
    check-cast v0, Lc8/hy;

    .line 581
    .restart local v0    # "impl":Lc8/hy;
    if-nez v0, :cond_1

    .line 582
    new-instance v1, Lorg/osgi/framework/BundleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed install deppendencyBundle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    invoke-virtual {v0}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lc8/dy;->requestRuntimeDependency(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)V

    .line 586
    return-void
.end method

.method public setBundleSecurityChecker(Lc8/by;)V
    .locals 0
    .param p1, "checker"    # Lc8/by;

    .prologue
    .line 601
    sput-object p1, Landroid/taobao/atlas/runtime/RuntimeVariables;->sBundleVerifier:Lc8/by;

    .line 602
    return-void
.end method

.method public setClassNotFoundInterceptorCallback(Lc8/Wy;)V
    .locals 0
    .param p1, "callback"    # Lc8/Wy;

    .prologue
    .line 536
    invoke-static {p1}, Lc8/py;->setClassNotFoundCallback(Lc8/Wy;)V

    .line 537
    return-void
.end method

.method public setExternalBundleInstallReminder(Lc8/cy;)V
    .locals 0
    .param p1, "reminder"    # Lc8/cy;

    .prologue
    .line 593
    sput-object p1, Landroid/taobao/atlas/runtime/RuntimeVariables;->sReminder:Lc8/cy;

    .line 594
    return-void
.end method

.method public setIntentRedirectListener(Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;

    .prologue
    .line 363
    sput-object p1, Landroid/taobao/atlas/runtime/InstrumentationHook;->sOnIntentRedirectListener:Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;

    .line 364
    return-void
.end method

.method public startup(Landroid/app/Application;Z)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "isUpdated"    # Z

    .prologue
    .line 318
    sget-boolean v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->safeMode:Z

    if-nez v1, :cond_1

    .line 319
    invoke-static {p1}, Lc8/bB;->isDebugMode(Landroid/app/Application;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/OA;->isRootSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    new-instance v2, Lc8/Bz;

    invoke-direct {v2}, Lc8/Bz;-><init>()V

    invoke-virtual {v1, v2}, Lc8/dy;->addBundleListener(Lc8/Teq;)V

    .line 323
    :cond_0
    :try_start_0
    invoke-static {p2}, Lc8/py;->startup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const-string/jumbo v1, "BUNDLES_INSTALLED"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.taobao.taobao.action.BUNDLES_INSTALLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    :cond_1
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public uninstallBundle(Ljava/lang/String;)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    .line 409
    .local v1, "bundle":Lc8/Seq;
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 410
    check-cast v0, Lc8/hy;

    .line 413
    .local v0, "b":Lc8/hy;
    :try_start_0
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v3

    .line 414
    .local v3, "soFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 417
    :cond_0
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uy;->getRevisionDir()Ljava/io/File;

    move-result-object v2

    .line 418
    .local v2, "delDir":Ljava/io/File;
    invoke-interface {v1}, Lc8/Seq;->uninstall()V

    .line 419
    if-eqz v2, :cond_1

    .line 420
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v2    # "delDir":Ljava/io/File;
    .end local v3    # "soFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 426
    .end local v0    # "b":Lc8/hy;
    :cond_2
    new-instance v4, Lorg/osgi/framework/BundleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not uninstall bundle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", because could not find it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    .restart local v0    # "b":Lc8/hy;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
