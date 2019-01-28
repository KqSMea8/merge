.class public Lc8/my;
.super Ljava/lang/Object;
.source "BundleInstaller.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ly;
    }
.end annotation


# static fields
.field private static sBundleHandler:Landroid/os/Handler;

.field private static sDelayInstallBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lc8/ly;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static sIdleInstallBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lc8/ly;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBundleSourceFile:[Ljava/io/File;

.field private mBundleSourceInputStream:[Ljava/io/InputStream;

.field private mListener:Lc8/ly;

.field private mLocation:[Ljava/lang/String;

.field private mTmpBundleSourceFile:Ljava/io/File;

.field private mTmpBundleSourceInputStream:Ljava/io/InputStream;

.field private mTransitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc8/my;->sIdleInstallBundles:Ljava/util/List;

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc8/my;->sDelayInstallBundles:Ljava/util/List;

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "bundle_installer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lc8/my;->sBundleHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lc8/my;->sIdleInstallBundles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lc8/my;->sDelayInstallBundles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/MessageQueue$IdleHandler;)Landroid/os/MessageQueue$IdleHandler;
    .locals 0
    .param p0, "x0"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 239
    sput-object p0, Lc8/my;->sIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    return-object p0
.end method

.method static synthetic access$300(Lc8/my;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/my;

    .prologue
    .line 239
    iget-object v0, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/my;)Lc8/ly;
    .locals 1
    .param p0, "x0"    # Lc8/my;

    .prologue
    .line 239
    iget-object v0, p0, Lc8/my;->mListener:Lc8/ly;

    return-object v0
.end method

.method private checkSrc([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "input"    # [Ljava/lang/Object;

    .prologue
    .line 477
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "bundle name can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 481
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can not find raw bundle file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_3
    return-void
.end method

.method public static declared-synchronized createIdleInstallerIfNeed()V
    .locals 3

    .prologue
    .line 261
    const-class v1, Lc8/my;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/my;->sIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lc8/iy;

    invoke-direct {v0}, Lc8/iy;-><init>()V

    sput-object v0, Lc8/my;->sIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 288
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v2, Lc8/my;->sIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit v1

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private deliveryTask(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 513
    new-instance v0, Lc8/ky;

    invoke-direct {v0, p0}, Lc8/ky;-><init>(Lc8/my;)V

    .line 546
    .local v0, "installTask":Ljava/lang/Runnable;
    sget-object v1, Lc8/my;->sBundleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method

.method private findBundleSource(Ljava/lang/String;)V
    .locals 11
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 648
    iput-object v5, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    .line 649
    iput-object v5, p0, Lc8/my;->mTmpBundleSourceFile:Ljava/io/File;

    .line 650
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 651
    .local v3, "dataDir":Ljava/lang/String;
    const-string/jumbo v5, "lib%s.so"

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "."

    const-string/jumbo v8, "_"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "bundleFileName":Ljava/lang/String;
    const-string/jumbo v5, "%s/lib/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v9

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "bundlePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "bundleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    new-instance v0, Ljava/io/File;

    .end local v0    # "bundleFile":Ljava/io/File;
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .restart local v0    # "bundleFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lc8/my;->isBundleFileMatched(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 658
    iput-object v0, p0, Lc8/my;->mTmpBundleSourceFile:Ljava/io/File;

    .line 659
    const-string/jumbo v5, "BundleInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "find valid bundle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 662
    :cond_2
    :try_start_0
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->originalResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_1
    iget-object v5, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 666
    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lib/armeabi/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 667
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_1

    .line 668
    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    goto :goto_0

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private installBundleFromApk(Ljava/lang/String;)Lc8/Seq;
    .locals 5
    .param p1, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lc8/my;->findBundleSource(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lc8/my;->mTmpBundleSourceFile:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lc8/my;->mTmpBundleSourceFile:Ljava/io/File;

    invoke-static {p1, v3}, Lc8/py;->installNewBundle(Ljava/lang/String;Ljava/io/File;)Lc8/hy;

    move-result-object v0

    .line 712
    .local v0, "bundle":Lc8/Seq;
    :goto_0
    return-object v0

    .line 703
    .end local v0    # "bundle":Lc8/Seq;
    :cond_0
    iget-object v3, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 704
    iget-object v3, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    invoke-static {p1, v3}, Lc8/py;->installNewBundle(Ljava/lang/String;Ljava/io/InputStream;)Lc8/hy;

    move-result-object v0

    .restart local v0    # "bundle":Lc8/Seq;
    goto :goto_0

    .line 706
    .end local v0    # "bundle":Lc8/Seq;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "can not find bundle source file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 707
    .local v2, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 708
    .local v1, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "installBundleFromApk"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v3

    const-string/jumbo v4, "container_bundle_mismatch"

    invoke-virtual {v3, v4, v1, v2}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 710
    throw v2
.end method

.method private installBundleInternal(Z)V
    .locals 4
    .param p1, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-object v2, Lc8/my;->sBundleHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 487
    const-string/jumbo v0, "BundleInstaller"

    iget-object v1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Lc8/my;->call()Ljava/lang/Void;

    .line 489
    iget-object v0, p0, Lc8/my;->mListener:Lc8/ly;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lc8/my;->mListener:Lc8/ly;

    invoke-interface {v0}, Lc8/ly;->onFinished()V

    .line 492
    :cond_0
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    .line 510
    :goto_0
    return-void

    .line 494
    :cond_1
    if-eqz p1, :cond_3

    .line 495
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

    if-nez v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lc8/my;->call()Ljava/lang/Void;

    .line 497
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0

    .line 499
    :cond_2
    monitor-enter p0

    .line 500
    :try_start_0
    invoke-direct {p0, p1}, Lc8/my;->deliveryTask(Z)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "call wait:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 503
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    .line 504
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 507
    :cond_3
    invoke-direct {p0, p1}, Lc8/my;->deliveryTask(Z)V

    goto :goto_0
.end method

.method private isBundleFileMatched(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "bundleFileName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 675
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/Xx;->isInternalBundle(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v3

    .line 678
    :cond_1
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v2

    .line 679
    .local v2, "info":Lc8/Yx;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc8/Yx;->getSize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v2}, Lc8/Yx;->getSize()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 680
    const-string/jumbo v4, "BundleInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wanted size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lc8/Yx;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "| realSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_2
    if-nez v2, :cond_4

    invoke-virtual {v2}, Lc8/Yx;->getSize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_4

    .line 685
    :try_start_0
    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v0

    .line 686
    .local v0, "apkZip":Ljava/util/zip/ZipFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lib/armeabi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 687
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_3

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 690
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 695
    .end local v0    # "apkZip":Ljava/util/zip/ZipFile;
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static declared-synchronized resolveInternalBundles()V
    .locals 1

    .prologue
    .line 636
    const-class v0, Lc8/my;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static startDelayInstall(Ljava/lang/String;Lc8/ly;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/ly;

    .prologue
    .line 305
    invoke-static {}, Lc8/my;->createIdleInstallerIfNeed()V

    .line 306
    if-eqz p0, :cond_1

    .line 307
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 308
    .local v0, "impl":Lc8/hy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/hy;->checkValidate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    sget-object v1, Lc8/my;->sDelayInstallBundles:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v0    # "impl":Lc8/hy;
    :cond_1
    return-void
.end method

.method public static startIdleInstall(Ljava/lang/String;Lc8/ly;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/ly;

    .prologue
    .line 293
    invoke-static {}, Lc8/my;->createIdleInstallerIfNeed()V

    .line 294
    if-eqz p0, :cond_1

    .line 295
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 296
    .local v0, "impl":Lc8/hy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/hy;->checkValidate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    sget-object v1, Lc8/my;->sIdleInstallBundles:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v0    # "impl":Lc8/hy;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lc8/my;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x5

    .line 564
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lc8/my;->mTransitive:Z

    if-nez v6, :cond_6

    .line 565
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_b

    .line 566
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lc8/XA;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    .line 567
    iget-object v6, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    array-length v6, v6

    if-le v6, v5, :cond_2

    iget-object v6, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 568
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6}, Lc8/my;->getInstalledBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    .local v2, "bundle":Lc8/Seq;
    if-nez v2, :cond_0

    .line 569
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 572
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lc8/py;->installNewBundle(Ljava/lang/String;Ljava/io/InputStream;)Lc8/hy;

    move-result-object v2

    .line 574
    :cond_0
    if-eqz v2, :cond_1

    .line 575
    check-cast v2, Lc8/hy;

    .end local v2    # "bundle":Lc8/Seq;
    invoke-virtual {v2}, Lc8/hy;->optDexFile()V

    .line 565
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 577
    :cond_2
    iget-object v6, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    array-length v6, v6

    if-le v6, v5, :cond_4

    iget-object v6, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    aget-object v6, v6, v5

    if-eqz v6, :cond_4

    .line 578
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6}, Lc8/my;->getInstalledBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    .restart local v2    # "bundle":Lc8/Seq;
    if-nez v2, :cond_3

    .line 579
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 582
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lc8/py;->installNewBundle(Ljava/lang/String;Ljava/io/File;)Lc8/hy;

    move-result-object v2

    .line 584
    :cond_3
    if-eqz v2, :cond_1

    .line 585
    check-cast v2, Lc8/hy;

    .end local v2    # "bundle":Lc8/Seq;
    invoke-virtual {v2}, Lc8/hy;->optDexFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 564
    .end local v5    # "x":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 588
    .restart local v5    # "x":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6}, Lc8/my;->getInstalledBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/Xx;->isInternalBundle(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 589
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 592
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, v6}, Lc8/my;->installBundleFromApk(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    .line 593
    .restart local v2    # "bundle":Lc8/Seq;
    if-eqz v2, :cond_1

    .line 594
    check-cast v2, Lc8/hy;

    .end local v2    # "bundle":Lc8/Seq;
    invoke-virtual {v2}, Lc8/hy;->optDexFile()V

    goto/16 :goto_1

    .line 599
    :cond_5
    new-instance v6, Landroid/taobao/atlas/runtime/LowDiskException;

    const-string/jumbo v7, "no enough space"

    invoke-direct {v6, v7}, Landroid/taobao/atlas/runtime/LowDiskException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 603
    .end local v5    # "x":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "x":I
    :goto_2
    iget-object v6, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_b

    .line 604
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v6

    iget-object v7, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Yx;->getTotalDependency()Ljava/util/List;

    move-result-object v4

    .line 605
    .local v4, "bundlesForInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "BundleInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 607
    .local v3, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lc8/my;->getInstalledBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    .restart local v2    # "bundle":Lc8/Seq;
    if-nez v2, :cond_9

    .line 608
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 611
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lc8/XA;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-ltz v6, :cond_8

    .line 613
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/Xx;->isInternalBundle(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 614
    invoke-direct {p0, v3}, Lc8/my;->installBundleFromApk(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    .line 615
    if-eqz v2, :cond_7

    .line 616
    check-cast v2, Lc8/hy;

    .end local v2    # "bundle":Lc8/Seq;
    invoke-virtual {v2}, Lc8/hy;->optDexFile()V

    goto :goto_3

    .line 620
    .restart local v2    # "bundle":Lc8/Seq;
    :cond_8
    new-instance v6, Landroid/taobao/atlas/runtime/LowDiskException;

    const-string/jumbo v7, "no enough space"

    invoke-direct {v6, v7}, Landroid/taobao/atlas/runtime/LowDiskException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 623
    :cond_9
    if-eqz v2, :cond_7

    move-object v0, v2

    check-cast v0, Lc8/hy;

    move-object v6, v0

    invoke-virtual {v6}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object v0, v2

    check-cast v0, Lc8/hy;

    move-object v6, v0

    invoke-virtual {v6}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v6

    invoke-virtual {v6}, Lc8/ry;->isDexOpted()Z

    move-result v6

    if-nez v6, :cond_7

    .line 624
    move-object v0, v2

    check-cast v0, Lc8/hy;

    move-object v6, v0

    invoke-virtual {v6}, Lc8/hy;->optDexFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 603
    .end local v2    # "bundle":Lc8/Seq;
    .end local v3    # "bundleName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 630
    .end local v4    # "bundlesForInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const/4 v6, 0x0

    monitor-exit p0

    return-object v6
.end method

.method public getInstalledBundle(Ljava/lang/String;)Lc8/Seq;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    .line 552
    .local v0, "bundle":Lc8/Seq;
    if-nez v0, :cond_0

    .line 553
    invoke-static {p1}, Lc8/py;->restoreFromExistedBundle(Ljava/lang/String;)Lc8/hy;

    move-result-object v0

    .line 555
    :cond_0
    if-nez v0, :cond_2

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    :cond_1
    const-string/jumbo v1, "BundleInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore existed bundle failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2
    return-object v0
.end method

.method public installAsync([Ljava/lang/String;[Ljava/io/File;Lc8/ly;)V
    .locals 6
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "input"    # [Ljava/io/File;
    .param p3, "listener"    # Lc8/ly;

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "method executeOnUIThread is only prepared for UI Thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_0
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 421
    iput-object p3, p0, Lc8/my;->mListener:Lc8/ly;

    .line 422
    iput-object p2, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    .line 423
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 425
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/my;->checkSrc([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installAsync([Ljava/lang/String;[Ljava/io/InputStream;Lc8/ly;)V
    .locals 6
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "input"    # [Ljava/io/InputStream;
    .param p3, "listener"    # Lc8/ly;

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 398
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "method executeOnUIThread is only prepared for UI Thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 401
    iput-object p3, p0, Lc8/my;->mListener:Lc8/ly;

    .line 402
    iput-object p2, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    .line 403
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 405
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/my;->checkSrc([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    iget-object v1, p0, Lc8/my;->mListener:Lc8/ly;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lc8/my;->mListener:Lc8/ly;

    invoke-interface {v1}, Lc8/ly;->onFinished()V

    .line 412
    :cond_1
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installSync([Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/my;->mTransitive:Z

    .line 381
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 383
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installSync([Ljava/lang/String;[Ljava/io/File;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "input"    # [Ljava/io/File;

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 449
    iput-object p2, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    .line 450
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 451
    invoke-direct {p0, p1, p2}, Lc8/my;->checkSrc([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 455
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installSync([Ljava/lang/String;[Ljava/io/InputStream;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "input"    # [Ljava/io/InputStream;

    .prologue
    .line 435
    :try_start_0
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 436
    iput-object p2, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    .line 437
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 438
    invoke-direct {p0, p1, p2}, Lc8/my;->checkSrc([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 442
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/ly;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/my;->mTransitive:Z

    .line 332
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 333
    iput-object p2, p0, Lc8/my;->mListener:Lc8/ly;

    .line 335
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    iget-object v1, p0, Lc8/my;->mListener:Lc8/ly;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lc8/my;->mListener:Lc8/ly;

    invoke-interface {v1}, Lc8/ly;->onFinished()V

    .line 341
    :cond_1
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method public installTransitivelySync([Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0}, Lc8/my;->release()V

    .line 366
    iput-boolean v1, p0, Lc8/my;->mTransitive:Z

    .line 367
    iput-object p1, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 369
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lc8/my;->installBundleInternal(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    invoke-static {p0}, Lc8/ny;->recycle(Lc8/my;)V

    goto :goto_0
.end method

.method release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lc8/my;->mLocation:[Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lc8/my;->mBundleSourceInputStream:[Ljava/io/InputStream;

    .line 320
    iput-object v0, p0, Lc8/my;->mBundleSourceFile:[Ljava/io/File;

    .line 321
    iput-object v0, p0, Lc8/my;->mListener:Lc8/ly;

    .line 322
    iput-object v0, p0, Lc8/my;->mTmpBundleSourceFile:Ljava/io/File;

    .line 323
    iput-object v0, p0, Lc8/my;->mTmpBundleSourceInputStream:Ljava/io/InputStream;

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/my;->mTransitive:Z

    .line 325
    return-void
.end method
