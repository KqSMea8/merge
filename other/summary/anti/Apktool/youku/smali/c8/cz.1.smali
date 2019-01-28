.class public Lc8/cz;
.super Landroid/content/res/Resources;
.source "DelegateResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/az;,
        Lc8/bz;,
        Lc8/Zy;
    }
.end annotation


# static fields
.field public static final APK_RES:I = 0x1

.field public static final BUNDLE_RES:I

.field private static sAssetManagerProcessor:Lc8/Zy;

.field private static sAssetsPatchDir:Ljava/lang/String;

.field private static sFailedAsssetPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sKernalPathPath:Ljava/lang/String;

.field private static sResourcesFetcher:Lc8/wz;

.field private static sResourcesProcessor:Lc8/bz;

.field private static walkroundStateList:Landroid/content/res/ColorStateList;


# instance fields
.field private bundleResourceWalkRound:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/cz;->sFailedAsssetPath:Ljava/util/ArrayList;

    .line 251
    sput-object v1, Lc8/cz;->sKernalPathPath:Ljava/lang/String;

    .line 252
    sput-object v1, Lc8/cz;->sAssetsPatchDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/cz;->bundleResourceWalkRound:Ljava/util/HashMap;

    .line 266
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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/cz;->sAssetsPatchDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 242
    sput-object p0, Lc8/cz;->sAssetsPatchDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lc8/cz;->findResByAssetIndexDescending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lc8/Zy;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/cz;->sFailedAsssetPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/cz;->sKernalPathPath:Ljava/lang/String;

    return-object v0
.end method

.method public static addApkpatchResources(Ljava/lang/String;)V
    .locals 3
    .param p0, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Lc8/xy;->defineAndVerify()Z

    .line 387
    sput-object p0, Lc8/cz;->sKernalPathPath:Ljava/lang/String;

    .line 388
    const-class v1, Lc8/cz;

    monitor-enter v1

    .line 389
    :try_start_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lc8/cz;->updateResources(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 390
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addBundleResources(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "assetPath"    # Ljava/lang/String;
    .param p1, "debugPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    const-class v1, Lc8/cz;

    monitor-enter v1

    .line 373
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lc8/cz;->findResByAssetIndexDescending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lc8/cz;->updateResources(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 377
    :cond_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lc8/cz;->updateResources(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 378
    if-eqz p1, :cond_1

    invoke-static {}, Lc8/cz;->findResByAssetIndexDescending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lc8/cz;->updateResources(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 382
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static checkAsset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p0, :cond_0

    sget-object v0, Lc8/cz;->sFailedAsssetPath:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findResByAssetIndexDescending()Z
    .locals 2

    .prologue
    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getBackupResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 14
    .param p1, "assetsPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v4, v9

    .line 363
    :cond_0
    :goto_0
    return-object v4

    .line 337
    :cond_1
    :try_start_0
    iget-object v8, p0, Lc8/cz;->bundleResourceWalkRound:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 338
    .local v4, "res":Landroid/content/res/Resources;
    if-nez v4, :cond_0

    .line 339
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    iget-object v8, p0, Lc8/cz;->bundleResourceWalkRound:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/content/res/Resources;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 341
    const-class v8, Landroid/content/res/AssetManager;

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetManager;

    .line 342
    .local v3, "newAssetManager":Landroid/content/res/AssetManager;
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v10, "storage/res_backup"

    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v7, "walkroundDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 344
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 346
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ".backup.zip"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v6, "walkroundBackupAsset":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    .line 348
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 349
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 351
    :cond_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v6}, Lc8/OA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 353
    :cond_5
    sget-object v8, Lc8/xy;->AssetManager_addAssetPath:Lc8/Dy;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v3, v10}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Lc8/cz;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {p0}, Lc8/cz;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v5, v3, v8, v10}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v4    # "res":Landroid/content/res/Resources;
    .local v5, "res":Landroid/content/res/Resources;
    :try_start_2
    iget-object v8, p0, Lc8/cz;->bundleResourceWalkRound:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v5

    .line 357
    .end local v3    # "newAssetManager":Landroid/content/res/AssetManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "walkroundBackupAsset":Ljava/io/File;
    .end local v7    # "walkroundDir":Ljava/io/File;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_6
    :try_start_3
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 360
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v9

    .line 363
    goto/16 :goto_0

    .line 357
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "newAssetManager":Landroid/content/res/AssetManager;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "walkroundBackupAsset":Ljava/io/File;
    .restart local v7    # "walkroundDir":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v4    # "res":Landroid/content/res/Resources;
    goto :goto_1
.end method

.method public static getCurrentAssetPath(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    sget-object v0, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    if-eqz v0, :cond_0

    .line 402
    invoke-static {p0}, Lc8/Zy;->getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 1
    .param p0, "manager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 394
    sget-object v0, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    invoke-virtual {v0, p0}, Lc8/Zy;->getCurrentAssetPathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getResourceProcessor()Lc8/bz;
    .locals 2

    .prologue
    .line 432
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.content.res.MiuiResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Lc8/az;

    invoke-direct {v0}, Lc8/az;-><init>()V

    .line 435
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/bz;

    invoke-direct {v0}, Lc8/bz;-><init>()V

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 367
    sput-object v0, Lc8/cz;->sKernalPathPath:Ljava/lang/String;

    .line 368
    sput-object v0, Lc8/cz;->sAssetsPatchDir:Ljava/lang/String;

    .line 369
    return-void
.end method

.method private static updateResources(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "assertType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    sget-object v1, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Lc8/Zy;

    invoke-direct {v1}, Lc8/Zy;-><init>()V

    sput-object v1, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    .line 419
    :cond_0
    sget-object v1, Lc8/cz;->sAssetManagerProcessor:Lc8/Zy;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lc8/Zy;->updateAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 421
    .local v0, "updatedAssetManager":Landroid/content/res/AssetManager;
    sget-object v1, Lc8/cz;->sResourcesProcessor:Lc8/bz;

    if-nez v1, :cond_1

    .line 422
    invoke-static {}, Lc8/cz;->getResourceProcessor()Lc8/bz;

    move-result-object v1

    sput-object v1, Lc8/cz;->sResourcesProcessor:Lc8/bz;

    .line 424
    :cond_1
    sget-object v1, Lc8/cz;->sResourcesProcessor:Lc8/bz;

    invoke-virtual {v1, v0}, Lc8/bz;->updateResources(Landroid/content/res/AssetManager;)V

    .line 426
    sget-object v1, Lc8/cz;->sResourcesFetcher:Lc8/wz;

    if-nez v1, :cond_2

    .line 427
    new-instance v1, Lc8/wz;

    invoke-direct {v1}, Lc8/wz;-><init>()V

    sput-object v1, Lc8/cz;->sResourcesFetcher:Lc8/wz;

    .line 429
    :cond_2
    return-void
.end method

.method public static walkroundActionMenuTextColor(Landroid/content/res/Resources;)V
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 851
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_1

    .line 853
    sget-object v3, Lc8/cz;->walkroundStateList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    .line 854
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Lc8/cz;->walkroundStateList:Landroid/content/res/ColorStateList;

    .line 856
    :cond_0
    const-string/jumbo v3, "mColorStateListCache"

    invoke-static {p0, v3}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 857
    .local v2, "mColorStateListCacheField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 858
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 859
    .local v1, "mColorStateListCache":Landroid/util/LongSparseArray;
    const-wide v4, -0x80feff7eL

    new-instance v3, Ljava/lang/ref/WeakReference;

    sget-object v6, Lc8/cz;->walkroundStateList:Landroid/content/res/ColorStateList;

    invoke-direct {v3, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v1    # "mColorStateListCache":Landroid/util/LongSparseArray;
    .end local v2    # "mColorStateListCacheField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, "result":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 310
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 314
    :goto_0
    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 315
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 316
    .local v6, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v6, v7}, Lc8/cz;->getValue(ILandroid/util/TypedValue;Z)V

    .line 318
    :try_start_1
    const-class v7, Landroid/content/res/AssetManager;

    const-string/jumbo v8, "getCookieName"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {p0}, Lc8/cz;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v6, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/cz;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "assetsPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/cz;->getBackupResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 320
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v4, :cond_0

    .line 321
    invoke-virtual {v4, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 329
    .end local v0    # "assetsPath":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v6    # "value":Landroid/util/TypedValue;
    :goto_1
    return-object v1

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v2

    goto :goto_0

    .line 324
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "value":Landroid/util/TypedValue;
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    throw v3

    .end local v6    # "value":Landroid/util/TypedValue;
    :cond_1
    move-object v1, v5

    .line 329
    goto :goto_1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, "id":I
    if-eqz v0, :cond_1

    .line 449
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return v0

    .line 446
    .restart local v0    # "id":I
    :cond_1
    sget-object v1, Lc8/cz;->sResourcesFetcher:Lc8/wz;

    if-eqz v1, :cond_0

    .line 447
    sget-object v1, Lc8/cz;->sResourcesFetcher:Lc8/wz;

    invoke-virtual {v1, p1, p2, p3}, Lc8/wz;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 14
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 270
    const/4 v6, 0x0

    .line 271
    .local v6, "result":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 273
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 277
    :goto_0
    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    .line 278
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 279
    .local v7, "value":Landroid/util/TypedValue;
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    .line 280
    const-string/jumbo v11, "DelegateResources"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "compare:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    if-ne p0, v8, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p1, v7, v9}, Lc8/cz;->getValue(ILandroid/util/TypedValue;Z)V

    .line 282
    const-string/jumbo v8, "DelegateResources"

    const-string/jumbo v11, "ID: %s|cookie: %s|string: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    iget v10, v7, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v9

    const/4 v9, 0x2

    iget-object v10, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    aput-object v10, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_1
    const-class v8, Landroid/content/res/AssetManager;

    const-string/jumbo v9, "getCookieName"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {p0}, Lc8/cz;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v7, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lc8/cz;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "assetsPath":Ljava/lang/String;
    const-string/jumbo v8, "DelegateResources"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "target Path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 287
    const-string/jumbo v8, "DelegateResources"

    const-string/jumbo v9, "target Path is not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    invoke-direct {p0, v0}, Lc8/cz;->getBackupResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 290
    .local v5, "res":Landroid/content/res/Resources;
    if-eqz v5, :cond_2

    .line 291
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 292
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_2

    .line 293
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v1, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "walkroundgetLayout"

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v8

    const-string/jumbo v9, "walkround_getlayout"

    invoke-virtual {v8, v9, v1, v3}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .end local v0    # "assetsPath":Ljava/lang/String;
    .end local v1    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "value":Landroid/util/TypedValue;
    :goto_2
    return-object v4

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v2

    goto/16 :goto_0

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v7    # "value":Landroid/util/TypedValue;
    :cond_1
    move v8, v10

    .line 280
    goto/16 :goto_1

    :catch_1
    move-exception v8

    .line 301
    :cond_2
    throw v3

    .end local v7    # "value":Landroid/util/TypedValue;
    :cond_3
    move-object v4, v6

    .line 303
    goto :goto_2
.end method
