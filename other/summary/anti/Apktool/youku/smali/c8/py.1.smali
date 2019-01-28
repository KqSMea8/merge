.class public final Lc8/py;
.super Ljava/lang/Object;
.source "Framework.java"


# static fields
.field public static ATLAS_DEBUG_DIRECTORY:Ljava/lang/String; = null

.field private static BASEDIR:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field static DEBUG_BUNDLES:Z = false

.field public static final DEPRECATED_MARK:Ljava/lang/String; = "deprecated"

.field public static final STORAGE_LOCATION:Ljava/lang/String;

.field static bundleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Teq;",
            ">;"
        }
    .end annotation
.end field

.field private static bundleUpdated:Z

.field static bundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Seq;",
            ">;"
        }
    .end annotation
.end field

.field private static classNotFoundCallback:Lc8/Wy;

.field static containerVersion:Ljava/lang/String;

.field static frameworkListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Weq;",
            ">;"
        }
    .end annotation
.end field

.field static installingBundles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static syncBundleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Teq;",
            ">;"
        }
    .end annotation
.end field

.field static systemClassLoader:Ljava/lang/ClassLoader;

.field public static updateHappend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    const-string/jumbo v4, ""

    sput-object v4, Lc8/py;->containerVersion:Ljava/lang/String;

    .line 281
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lc8/py;->bundles:Ljava/util/Map;

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lc8/py;->bundleListeners:Ljava/util/List;

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lc8/py;->syncBundleListeners:Ljava/util/List;

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lc8/py;->frameworkListeners:Ljava/util/List;

    .line 298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lc8/py;->installingBundles:Ljava/util/HashMap;

    .line 305
    sput-boolean v2, Lc8/py;->bundleUpdated:Z

    .line 306
    sput-boolean v2, Lc8/py;->updateHappend:Z

    .line 307
    sput-boolean v2, Lc8/py;->DEBUG:Z

    .line 310
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 311
    .local v1, "fileDir":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    :cond_0
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 315
    :cond_1
    :try_start_0
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v5, "atlas-debug"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc8/py;->ATLAS_DEBUG_DIRECTORY:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc8/py;->BASEDIR:Ljava/lang/String;

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lc8/py;->BASEDIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    .line 323
    :try_start_1
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 324
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lc8/py;->DEBUG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 317
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/sdcard/Android/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/files/atlas-debug"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc8/py;->ATLAS_DEBUG_DIRECTORY:Ljava/lang/String;

    goto :goto_0

    .line 326
    :catch_1
    move-exception v2

    sput-boolean v3, Lc8/py;->DEBUG:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method static addBundleListener(Lc8/Teq;)V
    .locals 1
    .param p0, "listener"    # Lc8/Teq;

    .prologue
    .line 780
    sget-object v0, Lc8/py;->bundleListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public static addFrameworkListener(Lc8/Weq;)V
    .locals 1
    .param p0, "listener"    # Lc8/Weq;

    .prologue
    .line 772
    sget-object v0, Lc8/py;->frameworkListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method private static createBundleStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 870
    new-instance v3, Ljava/io/File;

    sget-object v4, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 871
    new-instance v3, Ljava/io/File;

    sget-object v4, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :goto_0
    return-object v3

    .line 873
    :cond_0
    const/4 v0, 0x0

    .line 874
    .local v0, "externalStorageDir":Ljava/io/File;
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v4, "storage"

    invoke-static {v3, v4}, Lc8/py;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 875
    .local v1, "externalStorages":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 876
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 877
    .local v2, "tmpDir":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lc8/py;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x1400000

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 878
    move-object v0, v2

    .line 883
    .end local v2    # "tmpDir":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_3

    .line 884
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 876
    .restart local v2    # "tmpDir":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 887
    .end local v2    # "tmpDir":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v4, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 372
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 373
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string/jumbo v2, "delete"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 378
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    aget-object v2, v0, v1

    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 377
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 384
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static declared-synchronized getBundle(Ljava/lang/String;)Lc8/Seq;
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 360
    const-class v1, Lc8/py;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lc8/py;->bundles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Seq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBundles()Ljava/util/List;
    .locals 3
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
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lc8/py;->bundles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    sget-object v2, Lc8/py;->bundles:Ljava/util/Map;

    monitor-enter v2

    .line 354
    :try_start_0
    sget-object v1, Lc8/py;->bundles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    monitor-exit v2

    .line 356
    return-object v0

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getClassNotFoundCallback()Lc8/Wy;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lc8/py;->classNotFoundCallback:Lc8/Wy;

    return-object v0
.end method

.method public static getCurProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 891
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 892
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 894
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public static getInstalledBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "bundleUniqueId"    # Ljava/lang/String;

    .prologue
    .line 821
    new-instance v3, Ljava/io/File;

    sget-object v5, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .local v3, "internalBundleStorage":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lc8/py;->isKernalBundle(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "meta"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 823
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v5, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .local v0, "bundleDir":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lc8/py;->getInstalledBundleInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 825
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_4

    .line 842
    .end local v0    # "bundleDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 829
    :cond_2
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v6, "storage"

    invoke-static {v5, v6}, Lc8/py;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 830
    .local v1, "externalStorages":[Ljava/io/File;
    if-eqz v1, :cond_4

    array-length v5, v1

    if-lez v5, :cond_4

    .line 831
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v4, v1, v5

    .line 832
    .local v4, "tmpDir":Ljava/io/File;
    if-eqz v4, :cond_3

    invoke-static {v4}, Lc8/py;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 833
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 834
    .restart local v0    # "bundleDir":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lc8/py;->getInstalledBundleInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 835
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 831
    .end local v0    # "bundleDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 842
    .end local v1    # "externalStorages":[Ljava/io/File;
    .end local v4    # "tmpDir":Ljava/io/File;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getInstalledBundleInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "bundleUniqueId"    # Ljava/lang/String;
    .param p2, "bundleDir"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 846
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    invoke-static {p0}, Lc8/py;->isKernalBundle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iB;->currentVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/py;->makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "com_taobao_maindex.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 849
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 854
    :cond_1
    :try_start_0
    new-instance v0, Lc8/ry;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    .line 855
    .local v0, "archive":Lc8/ry;
    if-eqz v0, :cond_2

    .line 856
    invoke-virtual {v0}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v6

    .line 857
    .restart local v6    # "file":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "archive":Lc8/ry;
    .end local v6    # "file":Ljava/io/File;
    :cond_2
    move-object v6, v7

    .line 866
    goto :goto_0

    .line 862
    :catch_0
    move-exception v1

    move-object v6, v7

    goto :goto_0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 901
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 902
    .local v2, "version":I
    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 903
    invoke-static {p0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 917
    :goto_0
    return-object v3

    .line 907
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 909
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "canonicalExternal":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 912
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v0    # "canonicalExternal":Ljava/lang/String;
    .end local v1    # "canonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 917
    :cond_1
    const-string/jumbo v3, "unknown"

    goto :goto_0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lc8/py;->systemClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static installNewBundle(Ljava/lang/String;Ljava/io/File;)Lc8/hy;
    .locals 13
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v2, 0x0

    .line 451
    .local v2, "bundleDir":Ljava/io/File;
    :try_start_0
    invoke-static {p0}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 452
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-static {p0}, Lc8/py;->createBundleStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 457
    :cond_0
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 459
    invoke-static {p0}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cached":Lc8/hy;
    if-eqz v0, :cond_2

    .line 484
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 486
    if-eqz v2, :cond_1

    .line 487
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 467
    .end local v0    # "cached":Lc8/hy;
    :cond_1
    :goto_0
    return-object v0

    .line 462
    .restart local v0    # "cached":Lc8/hy;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "BundleInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "real install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v12

    .line 466
    .local v12, "info":Lc8/Yx;
    new-instance v1, Lc8/hy;

    const/4 v4, 0x0

    invoke-virtual {v12}, Lc8/Yx;->getUnique_tag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lc8/hy;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;ZJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .local v1, "bundle":Lc8/hy;
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 486
    if-eqz v2, :cond_3

    .line 487
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    :cond_3
    move-object v0, v1

    .line 467
    goto :goto_0

    .line 468
    .end local v0    # "cached":Lc8/hy;
    .end local v1    # "bundle":Lc8/hy;
    .end local v12    # "info":Lc8/Yx;
    :catch_0
    move-exception v10

    .line 469
    .local v10, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lorg/osgi/framework/BundleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to install bundle."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    if-eqz v2, :cond_4

    sget-boolean v3, Lc8/py;->updateHappend:Z

    if-nez v3, :cond_4

    .line 471
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 473
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lc8/XA;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    sget v3, Landroid/taobao/atlas/runtime/LowDiskException;->thredshold:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 474
    new-instance v3, Landroid/taobao/atlas/runtime/LowDiskException;

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Landroid/taobao/atlas/runtime/LowDiskException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 486
    if-eqz v2, :cond_5

    .line 487
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    :cond_5
    throw v3

    .line 476
    .restart local v10    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_3
    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v4, "Failed to install bundle."

    invoke-direct {v3, v4, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 477
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 478
    .local v10, "e":Lorg/osgi/framework/BundleException;
    new-instance v11, Lorg/osgi/framework/BundleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to install bundle."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    .local v11, "e1":Lorg/osgi/framework/BundleException;
    if-eqz v2, :cond_7

    sget-boolean v3, Lc8/py;->updateHappend:Z

    if-nez v3, :cond_7

    .line 480
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 482
    :cond_7
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static installNewBundle(Ljava/lang/String;Ljava/io/InputStream;)Lc8/hy;
    .locals 13
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, "bundleDir":Ljava/io/File;
    :try_start_0
    invoke-static {p0}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 399
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {p0}, Lc8/py;->createBundleStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 404
    :cond_0
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 406
    invoke-static {p0}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cached":Lc8/hy;
    if-eqz v0, :cond_2

    .line 430
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 432
    if-eqz v2, :cond_1

    .line 433
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 413
    .end local v0    # "cached":Lc8/hy;
    :cond_1
    :goto_0
    return-object v0

    .line 411
    .restart local v0    # "cached":Lc8/hy;
    :cond_2
    :try_start_1
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v12

    .line 412
    .local v12, "info":Lc8/Yx;
    new-instance v1, Lc8/hy;

    const/4 v5, 0x0

    invoke-virtual {v12}, Lc8/Yx;->getUnique_tag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lc8/hy;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;ZJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    .local v1, "bundle":Lc8/hy;
    sget-object v3, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 432
    if-eqz v2, :cond_3

    .line 433
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    :cond_3
    move-object v0, v1

    .line 413
    goto :goto_0

    .line 414
    .end local v0    # "cached":Lc8/hy;
    .end local v1    # "bundle":Lc8/hy;
    .end local v12    # "info":Lc8/Yx;
    :catch_0
    move-exception v10

    .line 415
    .local v10, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lorg/osgi/framework/BundleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to install bundle."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    if-eqz v2, :cond_4

    sget-boolean v3, Lc8/py;->updateHappend:Z

    if-nez v3, :cond_4

    .line 417
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 419
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lc8/XA;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    sget v3, Landroid/taobao/atlas/runtime/LowDiskException;->thredshold:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 420
    new-instance v3, Landroid/taobao/atlas/runtime/LowDiskException;

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Landroid/taobao/atlas/runtime/LowDiskException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/py;->installingBundles:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p0}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    .line 432
    if-eqz v2, :cond_5

    .line 433
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/TA;->unLock(Ljava/io/File;)V

    :cond_5
    throw v3

    .line 422
    .restart local v10    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_3
    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v4, "Failed to install bundle."

    invoke-direct {v3, v4, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 423
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 424
    .local v10, "e":Lorg/osgi/framework/BundleException;
    new-instance v11, Lorg/osgi/framework/BundleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to install bundle."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/XA;->getAvailableDisk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3, v10}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .local v11, "e1":Lorg/osgi/framework/BundleException;
    if-eqz v2, :cond_7

    sget-boolean v3, Lc8/py;->updateHappend:Z

    if-nez v3, :cond_7

    .line 426
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 428
    :cond_7
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static isDeubgMode()Z
    .locals 1

    .prologue
    .line 929
    sget-boolean v0, Lc8/py;->DEBUG:Z

    return v0
.end method

.method static isKernalBundle(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 738
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "com.taobao.maindex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUpdated()Z
    .locals 1

    .prologue
    .line 925
    sget-boolean v0, Lc8/py;->bundleUpdated:Z

    return v0
.end method

.method private static makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appVersion"    # Ljava/lang/String;
    .param p1, "maindexTag"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    .end local p1    # "maindexTag":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "maindexTag":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static notifyBundleListeners(ILc8/Seq;)V
    .locals 6
    .param p0, "state"    # I
    .param p1, "bundle"    # Lc8/Seq;

    .prologue
    .line 748
    sget-object v4, Lc8/py;->syncBundleListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lc8/py;->bundleListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    :cond_0
    return-void

    .line 752
    :cond_1
    new-instance v1, Lorg/osgi/framework/BundleEvent;

    invoke-direct {v1, p0, p1}, Lorg/osgi/framework/BundleEvent;-><init>(ILc8/Seq;)V

    .line 755
    .local v1, "event":Lorg/osgi/framework/BundleEvent;
    sget-object v4, Lc8/py;->syncBundleListeners:Ljava/util/List;

    sget-object v5, Lc8/py;->syncBundleListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lc8/Teq;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lc8/Teq;

    .line 757
    .local v3, "syncs":[Lc8/Teq;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 758
    aget-object v4, v3, v2

    invoke-interface {v4, v1}, Lc8/Teq;->bundleChanged(Lorg/osgi/framework/BundleEvent;)V

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    :cond_2
    sget-object v4, Lc8/py;->bundleListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 765
    sget-object v4, Lc8/py;->bundleListeners:Ljava/util/List;

    sget-object v5, Lc8/py;->bundleListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lc8/Teq;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/Teq;

    .line 766
    .local v0, "asyncs":[Lc8/Teq;
    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 767
    aget-object v4, v0, v2

    invoke-interface {v4, v1}, Lc8/Teq;->bundleChanged(Lorg/osgi/framework/BundleEvent;)V

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static notifyFrameworkListeners(ILc8/Seq;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "state"    # I
    .param p1, "bundle"    # Lc8/Seq;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 796
    sget-object v4, Lc8/py;->frameworkListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    :cond_0
    return-void

    .line 800
    :cond_1
    new-instance v0, Lc8/Veq;

    invoke-direct {v0, p0}, Lc8/Veq;-><init>(I)V

    .line 802
    .local v0, "event":Lc8/Veq;
    sget-object v4, Lc8/py;->frameworkListeners:Ljava/util/List;

    sget-object v5, Lc8/py;->frameworkListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lc8/Weq;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lc8/Weq;

    .line 804
    .local v3, "listeners":[Lc8/Weq;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 805
    aget-object v2, v3, v1

    .line 807
    .local v2, "listener":Lc8/Weq;
    invoke-interface {v2, v0}, Lc8/Weq;->frameworkEvent(Lc8/Veq;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static removeBundleListener(Lc8/Teq;)V
    .locals 1
    .param p0, "listener"    # Lc8/Teq;

    .prologue
    .line 784
    sget-object v0, Lc8/py;->bundleListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 785
    return-void
.end method

.method public static removeFrameworkListener(Lc8/Weq;)V
    .locals 1
    .param p0, "listener"    # Lc8/Weq;

    .prologue
    .line 776
    sget-object v0, Lc8/py;->frameworkListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 777
    return-void
.end method

.method public static restoreFromExistedBundle(Ljava/lang/String;)Lc8/hy;
    .locals 25
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 493
    const/16 v16, 0x0

    .line 494
    .local v16, "lockSuccess":Z
    const/4 v5, 0x0

    .line 495
    .local v5, "bundle":Lc8/hy;
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lc8/Yx;->getUnique_tag()Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, "bundleUniqueTag":Ljava/lang/String;
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/iB;->getDexPatchBundleVersion(Ljava/lang/String;)J

    move-result-wide v12

    .line 497
    .local v12, "dexPatchVersion":J
    const/4 v7, 0x0

    .line 498
    .local v7, "bundleDir":Ljava/io/File;
    const/4 v10, 0x0

    .line 500
    .local v10, "dexPatchDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    sget-object v20, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v15, "internalTmpDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "meta"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 502
    new-instance v7, Ljava/io/File;

    .end local v7    # "bundleDir":Ljava/io/File;
    sget-object v20, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .restart local v7    # "bundleDir":Ljava/io/File;
    :cond_0
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_1

    .line 517
    new-instance v20, Ljava/io/File;

    sget-object v21, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "dexpatch/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 518
    new-instance v10, Ljava/io/File;

    .end local v10    # "dexPatchDir":Ljava/io/File;
    sget-object v20, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .restart local v10    # "dexPatchDir":Ljava/io/File;
    :cond_1
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 532
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 533
    .local v17, "temp":[Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 534
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v18, v17, v20

    .line 535
    .local v18, "tmp":Ljava/lang/String;
    const-string/jumbo v22, "Framework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "content: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 504
    .end local v17    # "temp":[Ljava/lang/String;
    .end local v18    # "tmp":Ljava/lang/String;
    :cond_2
    sget-object v20, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v21, "storage"

    invoke-static/range {v20 .. v21}, Lc8/py;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v14

    .line 505
    .local v14, "externalStorages":[Ljava/io/File;
    if-eqz v14, :cond_0

    array-length v0, v14

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 506
    array-length v0, v14

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v19, v14, v20

    .line 507
    .local v19, "tmpDir":Ljava/io/File;
    if-eqz v19, :cond_3

    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 508
    invoke-static/range {v19 .. v19}, Lc8/py;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 509
    new-instance v7, Ljava/io/File;

    .end local v7    # "bundleDir":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 510
    .restart local v7    # "bundleDir":Ljava/io/File;
    goto/16 :goto_0

    .line 506
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 520
    .end local v14    # "externalStorages":[Ljava/io/File;
    .end local v19    # "tmpDir":Ljava/io/File;
    :cond_4
    sget-object v20, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v21, "storage"

    invoke-static/range {v20 .. v21}, Lc8/py;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v14

    .line 521
    .restart local v14    # "externalStorages":[Ljava/io/File;
    if-eqz v14, :cond_1

    array-length v0, v14

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 522
    array-length v0, v14

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v19, v14, v20

    .line 523
    .restart local v19    # "tmpDir":Ljava/io/File;
    if-eqz v19, :cond_5

    invoke-static/range {v19 .. v19}, Lc8/py;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "dexpatch/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 524
    new-instance v7, Ljava/io/File;

    .end local v7    # "bundleDir":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 525
    .restart local v7    # "bundleDir":Ljava/io/File;
    goto/16 :goto_1

    .line 522
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 539
    .end local v14    # "externalStorages":[Ljava/io/File;
    .end local v19    # "tmpDir":Ljava/io/File;
    :cond_6
    const-string/jumbo v20, "Framework"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "restoreExisted: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "| "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "| "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eqz v7, :cond_7

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_8

    :cond_7
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 542
    invoke-static {}, Lc8/py;->getCurProcessName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 543
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v9, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v20, "Bundle"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v20

    const-string/jumbo v21, "dd_bundle_mismatch"

    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is not existed"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 546
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lc8/iB;->rollbackHardly()V

    .line 547
    new-instance v20, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v21, Lc8/oy;

    invoke-direct/range {v21 .. v21}, Lc8/oy;-><init>()V

    const-wide/16 v22, 0x3e8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    .end local v9    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    sget-object v20, Lc8/py;->installingBundles:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_a

    :cond_9
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 557
    :cond_a
    :try_start_0
    invoke-static/range {p0 .. p0}, Lc8/UA;->ReadLock(Ljava/lang/String;)Z

    move-result v16

    .line 558
    new-instance v4, Lc8/gy;

    invoke-direct {v4}, Lc8/gy;-><init>()V

    .line 559
    .local v4, "bcontext":Lc8/gy;
    iput-object v8, v4, Lc8/gy;->bundle_tag:Ljava/lang/String;

    .line 560
    move-object/from16 v0, p0

    iput-object v0, v4, Lc8/gy;->location:Ljava/lang/String;

    .line 561
    iput-object v7, v4, Lc8/gy;->bundleDir:Ljava/io/File;

    .line 562
    iput-object v10, v4, Lc8/gy;->dexPatchDir:Ljava/io/File;

    .line 563
    new-instance v6, Lc8/hy;

    invoke-direct {v6, v4}, Lc8/hy;-><init>(Lc8/gy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local v5    # "bundle":Lc8/hy;
    .local v6, "bundle":Lc8/hy;
    if-eqz v6, :cond_b

    .line 565
    :try_start_1
    invoke-virtual {v6}, Lc8/hy;->optDexFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    :cond_b
    if-eqz v16, :cond_f

    .line 577
    :try_start_2
    invoke-static/range {p0 .. p0}, Lc8/UA;->ReadUnLock(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 582
    .end local v4    # "bcontext":Lc8/gy;
    .end local v6    # "bundle":Lc8/hy;
    .restart local v5    # "bundle":Lc8/hy;
    :cond_c
    :goto_5
    return-object v5

    .line 578
    .end local v5    # "bundle":Lc8/hy;
    .restart local v4    # "bcontext":Lc8/gy;
    .restart local v6    # "bundle":Lc8/hy;
    :catch_0
    move-exception v20

    move-object v5, v6

    .end local v6    # "bundle":Lc8/hy;
    .restart local v5    # "bundle":Lc8/hy;
    goto :goto_5

    .line 567
    .end local v4    # "bcontext":Lc8/gy;
    :catch_1
    move-exception v11

    .line 568
    .local v11, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    instance-of v0, v11, Landroid/taobao/atlas/framework/bundlestorage/BundleArchive$MisMatchException;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 569
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 570
    const/4 v5, 0x0

    .line 573
    :cond_d
    const-string/jumbo v20, "Framework"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "restore bundle failed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    if-eqz v16, :cond_c

    .line 577
    :try_start_4
    invoke-static/range {p0 .. p0}, Lc8/UA;->ReadUnLock(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 578
    :catch_2
    move-exception v20

    goto :goto_5

    .line 575
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_7
    if-eqz v16, :cond_e

    .line 577
    :try_start_5
    invoke-static/range {p0 .. p0}, Lc8/UA;->ReadUnLock(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 578
    :cond_e
    :goto_8
    throw v20

    :catch_3
    move-exception v21

    goto :goto_8

    .line 575
    .end local v5    # "bundle":Lc8/hy;
    .restart local v4    # "bcontext":Lc8/gy;
    .restart local v6    # "bundle":Lc8/hy;
    :catchall_1
    move-exception v20

    move-object v5, v6

    .end local v6    # "bundle":Lc8/hy;
    .restart local v5    # "bundle":Lc8/hy;
    goto :goto_7

    .line 567
    .end local v5    # "bundle":Lc8/hy;
    .restart local v6    # "bundle":Lc8/hy;
    :catch_4
    move-exception v11

    move-object v5, v6

    .end local v6    # "bundle":Lc8/hy;
    .restart local v5    # "bundle":Lc8/hy;
    goto :goto_6

    .end local v5    # "bundle":Lc8/hy;
    .restart local v6    # "bundle":Lc8/hy;
    :cond_f
    move-object v5, v6

    .end local v6    # "bundle":Lc8/hy;
    .restart local v5    # "bundle":Lc8/hy;
    goto :goto_5
.end method

.method public static rollback()V
    .locals 1

    .prologue
    .line 731
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iB;->rollback()V

    .line 732
    return-void
.end method

.method public static setClassNotFoundCallback(Lc8/Wy;)V
    .locals 0
    .param p0, "classNotFoundCallback"    # Lc8/Wy;

    .prologue
    .line 816
    sput-object p0, Lc8/py;->classNotFoundCallback:Lc8/Wy;

    .line 817
    return-void
.end method

.method static startup(Z)V
    .locals 2
    .param p0, "updated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xx;->getBundleInfo()Landroid/taobao/atlas/bundleInfo/BundleListing;

    .line 343
    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lc8/py;->notifyFrameworkListeners(ILc8/Seq;Ljava/lang/Throwable;)V

    .line 344
    const/4 v0, 0x1

    invoke-static {v0, v1, v1}, Lc8/py;->notifyFrameworkListeners(ILc8/Seq;Ljava/lang/Throwable;)V

    .line 345
    return-void
.end method

.method public static update(Z[Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[JLjava/lang/String;Z)V
    .locals 23
    .param p0, "upgrade"    # Z
    .param p1, "locations"    # [Ljava/lang/String;
    .param p2, "files"    # [Ljava/io/File;
    .param p3, "newBundleTag"    # [Ljava/lang/String;
    .param p4, "dexPatchVersions"    # [J
    .param p5, "newBaselineVersion"    # Ljava/lang/String;
    .param p6, "lowInternalDisk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 587
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p2

    array-length v5, v0

    if-eq v3, v5, :cond_1

    .line 588
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "locations and files must not be null and must be same length"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :cond_1
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v21, "updateBundles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/io/File;

    sget-object v3, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v22, "updateStorageDir":Ljava/io/File;
    if-eqz p6, :cond_3

    .line 594
    const/16 v22, 0x0

    .line 595
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v5, "storage"

    invoke-static {v3, v5}, Lc8/py;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v17

    .line 596
    .local v17, "externalStorages":[Ljava/io/File;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_3

    .line 597
    move-object/from16 v0, v17

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v16, v17, v3

    .line 598
    .local v16, "externalStorage":Ljava/io/File;
    if-eqz v16, :cond_2

    invoke-static/range {v16 .. v16}, Lc8/py;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x3200000

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 599
    move-object/from16 v22, v16

    .line 597
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v16    # "externalStorage":Ljava/io/File;
    .end local v17    # "externalStorages":[Ljava/io/File;
    :cond_3
    if-nez v22, :cond_4

    .line 605
    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v5, "no enough space"

    invoke-direct {v3, v5}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 607
    :cond_4
    const/4 v3, 0x1

    sput-boolean v3, Lc8/py;->updateHappend:Z

    .line 608
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_19

    .line 610
    if-eqz p0, :cond_5

    aget-object v3, p3, v18

    const-string/jumbo v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 612
    :cond_5
    if-nez p0, :cond_7

    aget-wide v6, p4, v18

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_7

    .line 613
    aget-object v3, p1, v18

    const-string/jumbo v5, "-1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_6
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 617
    :cond_7
    aget-object v3, p1, v18

    if-eqz v3, :cond_6

    aget-object v3, p2, v18

    if-eqz v3, :cond_6

    .line 621
    const/4 v12, 0x0

    .line 623
    .local v12, "bundleDir":Ljava/io/File;
    :try_start_0
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/py;->isKernalBundle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 624
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getRawClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string/jumbo v5, "android.taobao.atlas.startup.patch.KernalBundle"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 626
    .local v2, "KernalBundleClass":Ljava/lang/Class;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v3, "com.taobao.maindex"

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    .end local v12    # "bundleDir":Ljava/io/File;
    .local v4, "bundleDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 628
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 630
    :cond_8
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 631
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/File;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/io/File;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 632
    .local v14, "cons":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 633
    if-eqz p0, :cond_a

    .line 634
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aget-object v6, p2, v18

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v6, p3, v18

    move-object/from16 v0, p5

    invoke-static {v0, v6}, Lc8/py;->makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .end local v2    # "KernalBundleClass":Ljava/lang/Class;
    .end local v14    # "cons":Ljava/lang/reflect/Constructor;
    :goto_3
    if-eqz p0, :cond_16

    .line 687
    aget-object v3, p1, v18

    aget-object v5, p3, v18

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    :goto_4
    if-eqz v4, :cond_9

    .line 697
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 699
    :cond_9
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 636
    .restart local v2    # "KernalBundleClass":Ljava/lang/Class;
    .restart local v14    # "cons":Ljava/lang/reflect/Constructor;
    :cond_a
    const/4 v3, 0x4

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    aget-object v6, p2, v18

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x3

    aget-wide v6, p4, v18

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 691
    .end local v2    # "KernalBundleClass":Ljava/lang/Class;
    .end local v14    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v15

    .line 692
    .local v15, "e":Ljava/lang/Exception;
    :goto_5
    if-eqz p0, :cond_17

    .line 693
    :try_start_3
    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v5, "failed to installOrUpdate bundles "

    invoke-direct {v3, v5, v15}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 696
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v4, :cond_b

    .line 697
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 699
    :cond_b
    aget-object v5, p1, v18

    invoke-static {v5}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    throw v3

    .line 638
    .end local v4    # "bundleDir":Ljava/io/File;
    .restart local v12    # "bundleDir":Ljava/io/File;
    :cond_c
    :try_start_4
    new-instance v4, Ljava/io/File;

    aget-object v3, p1, v18

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 639
    .end local v12    # "bundleDir":Ljava/io/File;
    .restart local v4    # "bundleDir":Ljava/io/File;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 640
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 643
    :cond_d
    if-eqz p0, :cond_15

    .line 644
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v3

    aget-object v5, p1, v18

    invoke-virtual {v3, v5}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v19

    .line 645
    .local v19, "info":Lc8/Yx;
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Lc8/Yx;->getUnique_tag()Ljava/lang/String;

    move-result-object v3

    aget-object v5, p3, v18

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 646
    const-string/jumbo v3, "Framework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " unitTag is same as before,it maybe a mistake"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 648
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " unitTag is same as before,it maybe a mistake"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 696
    :cond_e
    if-eqz v4, :cond_f

    .line 697
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 699
    :cond_f
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    :cond_10
    :try_start_6
    aget-object v3, p2, v18

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "inherit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 653
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p1, v18

    aput-object v6, v3, v5

    invoke-static {v3}, Lc8/Vy;->checkBundleStateSync([Ljava/lang/String;)V

    .line 654
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 656
    aget-object v3, p1, v18

    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v5

    aget-object v6, p1, v18

    invoke-virtual {v5, v6}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Yx;->getUnique_tag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lc8/py;->getInstalledBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 657
    .local v13, "bundleFile":Ljava/io/File;
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    .line 658
    :cond_11
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "can not find source bundle : new bundle is inherit"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_12
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 663
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 668
    .local v20, "oldBundleDir":Ljava/io/File;
    :goto_7
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p3, v18

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lc8/OA;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_3

    .line 666
    .end local v20    # "oldBundleDir":Ljava/io/File;
    :cond_13
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v3

    check-cast v3, Lc8/hy;

    invoke-virtual {v3}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uy;->getRevisionDir()Ljava/io/File;

    move-result-object v20

    .restart local v20    # "oldBundleDir":Ljava/io/File;
    goto :goto_7

    .line 670
    .end local v13    # "bundleFile":Ljava/io/File;
    .end local v20    # "oldBundleDir":Ljava/io/File;
    :cond_14
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 672
    new-instance v3, Lc8/hy;

    aget-object v5, p1, v18

    const/4 v6, 0x0

    aget-object v7, p2, v18

    aget-object v8, p3, v18

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    invoke-direct/range {v3 .. v11}, Lc8/hy;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;ZJ)V

    goto/16 :goto_3

    .line 676
    .end local v19    # "info":Lc8/Yx;
    :cond_15
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteLock(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 678
    new-instance v3, Lc8/hy;

    aget-object v5, p1, v18

    const/4 v6, 0x0

    aget-object v7, p2, v18

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v10, p4, v18

    invoke-direct/range {v3 .. v11}, Lc8/hy;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;ZJ)V

    goto/16 :goto_3

    .line 689
    :cond_16
    aget-object v3, p1, v18

    aget-wide v6, p4, v18

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 696
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_17
    if-eqz v4, :cond_18

    .line 697
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 699
    :cond_18
    aget-object v3, p1, v18

    invoke-static {v3}, Lc8/UA;->WriteUnLock(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 702
    .end local v4    # "bundleDir":Ljava/io/File;
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_19
    if-eqz p0, :cond_1c

    .line 703
    const/4 v3, 0x1

    sput-boolean v3, Lc8/py;->bundleUpdated:Z

    .line 705
    :try_start_7
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v5

    if-eqz p6, :cond_1b

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_8
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v3}, Lc8/iB;->saveBaselineInfo(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 709
    const-string/jumbo v3, "installedVersionWhenUpdated"

    sget-object v5, Lc8/py;->containerVersion:Ljava/lang/String;

    invoke-static {v3, v5}, Lc8/bB;->appendLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const-string/jumbo v3, "VersionWhenUpdated"

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v5}, Lc8/bB;->getPackageInfo(Landroid/app/Application;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3, v5}, Lc8/bB;->appendLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    invoke-static {}, Landroid/taobao/atlas/runtime/InstrumentationHook;->notifyAppUpdated()V

    .line 721
    :cond_1a
    :goto_9
    return-void

    .line 705
    :cond_1b
    :try_start_8
    const-string/jumbo v3, ""
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    .line 707
    :catch_1
    move-exception v3

    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v5, "save baseline info fail"

    invoke-direct {v3, v5}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :cond_1c
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 715
    :try_start_9
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v5

    if-eqz p6, :cond_1d

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_a
    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v3}, Lc8/iB;->saveDexPathInfo(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_9

    .line 717
    :catch_2
    move-exception v3

    new-instance v3, Lorg/osgi/framework/BundleException;

    const-string/jumbo v5, "save dexpatch info fail"

    invoke-direct {v3, v5}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 715
    :cond_1d
    :try_start_a
    const-string/jumbo v3, ""
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_a

    .line 696
    .restart local v12    # "bundleDir":Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v4, v12

    .end local v12    # "bundleDir":Ljava/io/File;
    .restart local v4    # "bundleDir":Ljava/io/File;
    goto/16 :goto_6

    .line 691
    .end local v4    # "bundleDir":Ljava/io/File;
    .restart local v12    # "bundleDir":Ljava/io/File;
    :catch_3
    move-exception v15

    move-object v4, v12

    .end local v12    # "bundleDir":Ljava/io/File;
    .restart local v4    # "bundleDir":Ljava/io/File;
    goto/16 :goto_5
.end method
