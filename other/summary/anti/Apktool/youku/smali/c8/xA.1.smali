.class public Lc8/xA;
.super Ljava/lang/Object;
.source "KernalBundle.java"


# static fields
.field public static KERNAL_BUNDLE_NAME:Ljava/lang/String;

.field static constructorArgs1:[Ljava/lang/Class;

.field static constructorArgs2:[Ljava/lang/Class;

.field static constructorArgs3:[Ljava/lang/Class;

.field static constructorArgsO:[Ljava/lang/Class;

.field public static kernalBundle:Lc8/xA;

.field public static patchWithApk:Z


# instance fields
.field private FrameworkPropertiesClazz:Ljava/lang/Class;

.field archive:Lc8/BA;

.field bundleDir:Ljava/io/File;

.field private replaceClassLoader:Lc8/wA;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    const-string/jumbo v0, "com.taobao.maindex"

    sput-object v0, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    sput-object v0, Lc8/xA;->kernalBundle:Lc8/xA;

    .line 256
    sput-boolean v2, Lc8/xA;->patchWithApk:Z

    .line 679
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v2

    const-class v1, Ljava/util/zip/ZipFile;

    aput-object v1, v0, v3

    const-class v1, Ldalvik/system/DexFile;

    aput-object v1, v0, v4

    sput-object v0, Lc8/xA;->constructorArgs3:[Ljava/lang/Class;

    .line 680
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v3

    const-class v1, Ldalvik/system/DexFile;

    aput-object v1, v0, v4

    sput-object v0, Lc8/xA;->constructorArgs2:[Ljava/lang/Class;

    .line 681
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v4

    const-class v1, Ldalvik/system/DexFile;

    aput-object v1, v0, v5

    sput-object v0, Lc8/xA;->constructorArgs1:[Ljava/lang/Class;

    .line 683
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ldalvik/system/DexFile;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v3

    sput-object v0, Lc8/xA;->constructorArgsO:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)V
    .locals 8
    .param p1, "bundleDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    .line 358
    :try_start_0
    new-instance v0, Lc8/BA;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/BA;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lc8/xA;->archive:Lc8/BA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    return-void

    .line 359
    :catch_0
    move-exception v6

    .line 360
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {p1}, Lc8/xA;->deleteDirectory(Ljava/io/File;)V

    .line 364
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "install kernal Bundlele fail "

    invoke-direct {v0, v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "updateDir"    # Ljava/io/File;
    .param p2, "dexPatchDir"    # Ljava/io/File;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "process"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v0

    sget-object v1, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/vA;->getDexPatchBundleVersion(Ljava/lang/String;)J

    move-result-wide v4

    .line 371
    .local v4, "dexPatchVersion":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 373
    :try_start_0
    iput-object p2, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    .line 374
    new-instance v0, Lc8/BA;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    const-string/jumbo v3, ""

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/BA;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lc8/xA;->archive:Lc8/BA;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    iput-object p1, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    .line 377
    new-instance v0, Lc8/BA;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vA;->currentVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lc8/xA;->makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/BA;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lc8/xA;->archive:Lc8/BA;

    goto :goto_0

    .line 380
    :cond_0
    iput-object p1, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    .line 381
    new-instance v0, Lc8/BA;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/xA;->bundleDir:Ljava/io/File;

    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vA;->currentVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lc8/xA;->makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/BA;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lc8/xA;->archive:Lc8/BA;

    goto :goto_0
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

.method private static _2forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _3loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static checkLoadKernalDebugPatch(Landroid/app/Application;)Z
    .locals 19
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 295
    const/4 v15, 0x0

    .line 333
    :cond_0
    :goto_0
    return v15

    .line 298
    :cond_1
    const/4 v15, 0x0

    .line 300
    .local v15, "loadKernalPatch":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 301
    .local v8, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    .line 302
    .local v10, "debug":Z
    :goto_1
    if-eqz v10, :cond_0

    .line 303
    new-instance v11, Ljava/io/File;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    const-string/jumbo v2, "debug_storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .local v11, "debugBundleDir":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string/jumbo v1, "patch.zip"

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v18, "patchFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v15, 0x1

    .line 307
    new-instance v9, Lc8/xA;

    invoke-direct {v9}, Lc8/xA;-><init>()V

    .line 308
    .local v9, "bundle":Lc8/xA;
    sget-object v1, Lc8/CA;->dexBooster:Lc8/uA;

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    sget-object v3, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    .line 309
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base.dex"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 308
    invoke-virtual/range {v1 .. v6}, Lc8/uA;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v12

    .line 311
    .local v12, "dexFile":Ldalvik/system/DexFile;
    new-instance v14, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "debug_storage"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-direct {v14, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v14, "internalDebugBundleDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 313
    sget-object v1, Lc8/CA;->dexBooster:Lc8/uA;

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "patch.dex"

    invoke-direct {v4, v14, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 313
    invoke-virtual/range {v1 .. v6}, Lc8/uA;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v17

    .line 315
    .local v17, "patchDexFile":Ldalvik/system/DexFile;
    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v1, 0x2

    new-array v4, v1, [Ldalvik/system/DexFile;

    const/4 v1, 0x0

    aput-object v17, v4, v1

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v9

    move-object/from16 v3, v18

    invoke-virtual/range {v1 .. v6}, Lc8/xA;->installKernalBundle(Ljava/lang/ClassLoader;Ljava/io/File;[Ldalvik/system/DexFile;Ljava/io/File;Z)Z

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lc8/xA;->needReplaceClassLoader(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    new-instance v16, Lc8/wA;

    const-string/jumbo v1, "."

    const-class v2, Lc8/xA;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Lc8/wA;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v16, "loader":Lc8/wA;
    :try_start_1
    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    const-class v2, Lc8/xA;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Lc8/wA;->replacePathClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Lc8/wA;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v16    # "loader":Lc8/wA;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lc8/xA;->prepareRuntimeVariables(Landroid/app/Application;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "android.taobao.atlas.runtime.DelegateResources"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 327
    .local v7, "DelegateResourcesClazz":Ljava/lang/Class;
    const-string/jumbo v1, "addApkpatchResources"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 328
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v7, v2}, Lc8/xA;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    const-string/jumbo v2, "\u5f53\u524d\u5904\u4e8eDEBUG\u8c03\u8bd5\u72b6\u6001\uff0c\u4e0d\u652f\u6301\u52a8\u6001\u66f4\u65b0\uff0c\u6e05\u9664\u6570\u636e\u53ef\u6062\u590d"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 333
    .end local v7    # "DelegateResourcesClazz":Ljava/lang/Class;
    .end local v8    # "app_info":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "bundle":Lc8/xA;
    .end local v10    # "debug":Z
    .end local v11    # "debugBundleDir":Ljava/io/File;
    .end local v12    # "dexFile":Ldalvik/system/DexFile;
    .end local v14    # "internalDebugBundleDir":Ljava/io/File;
    .end local v17    # "patchDexFile":Ldalvik/system/DexFile;
    .end local v18    # "patchFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto/16 :goto_0

    .line 301
    .restart local v8    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 321
    .restart local v9    # "bundle":Lc8/xA;
    .restart local v10    # "debug":Z
    .restart local v11    # "debugBundleDir":Ljava/io/File;
    .restart local v12    # "dexFile":Ldalvik/system/DexFile;
    .restart local v14    # "internalDebugBundleDir":Ljava/io/File;
    .restart local v16    # "loader":Lc8/wA;
    .restart local v17    # "patchDexFile":Ldalvik/system/DexFile;
    .restart local v18    # "patchFile":Ljava/io/File;
    :catch_0
    move-exception v13

    .line 322
    .local v13, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static checkloadKernalBundle(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 9
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "currentProcessName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 260
    new-instance v4, Ljava/io/File;

    sget-object v6, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, "updateDir":Ljava/io/File;
    move-object v0, v4

    .line 262
    .local v0, "dexPatchDir":Ljava/io/File;
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v6

    iget-object v6, v6, Lc8/vA;->DEXPATCH_STORAGE_LOCATION:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 263
    new-instance v0, Ljava/io/File;

    .end local v0    # "dexPatchDir":Ljava/io/File;
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v6

    iget-object v6, v6, Lc8/vA;->DEXPATCH_STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v0    # "dexPatchDir":Ljava/io/File;
    :cond_0
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v6

    iget-object v6, v6, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    new-instance v4, Ljava/io/File;

    .end local v4    # "updateDir":Ljava/io/File;
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v6

    iget-object v6, v6, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v4    # "updateDir":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v6, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v3, "kernalUpdateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v6, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .local v2, "kernalDexPatchDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    :cond_2
    :try_start_0
    new-instance v6, Lc8/xA;

    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v7

    sget-object v8, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc8/vA;->getBaseBundleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v2, v7, p1}, Lc8/xA;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sput-object v6, Lc8/xA;->kernalBundle:Lc8/xA;

    invoke-virtual {v6, p0}, Lc8/xA;->patchKernalDex(Landroid/app/Application;)V

    .line 277
    sget-object v6, Lc8/xA;->kernalBundle:Lc8/xA;

    invoke-virtual {v6, p0}, Lc8/xA;->patchKernalResource(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v5, 0x1

    .line 289
    :cond_3
    :goto_0
    return v5

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    const/4 v6, 0x0

    sput-object v6, Lc8/xA;->kernalBundle:Lc8/xA;

    .line 282
    invoke-static {v3}, Lc8/xA;->deleteDirectory(Ljava/io/File;)V

    .line 283
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 284
    invoke-static {v2}, Lc8/xA;->deleteDirectory(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 342
    new-instance v1, Ljava/io/File;

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v1, "storageDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    .local v0, "kernalDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-static {v0}, Lc8/xA;->deleteDirectory(Ljava/io/File;)V

    .line 347
    :cond_0
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 780
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 781
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 784
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 785
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    aget-object v2, v0, v1

    invoke-static {v2}, Lc8/xA;->deleteDirectory(Ljava/io/File;)V

    .line 784
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 791
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElement"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {p0, p1}, Lc8/xA;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 554
    .local v2, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 556
    .local v3, "original":[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    array-length v5, v3

    array-length v6, p2

    add-int/2addr v5, v6

    .line 555
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 557
    .local v0, "combined":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 558
    aget-object v4, p2, v1

    aput-object v4, v0, v1

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_0
    const/4 v4, 0x0

    array-length v5, p2

    array-length v6, v3

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    invoke-static {v2, p0, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method private static expandFieldList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElement"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-static {p0, p1}, Lc8/xA;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 568
    .local v0, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 569
    .local v1, "original":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 570
    return-void
.end method

.method private static extract(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p0, "zipPath"    # Ljava/lang/String;
    .param p1, "entryPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/io/File;

    .prologue
    .line 489
    const/4 v6, 0x0

    .line 491
    .local v6, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .local v7, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 493
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 495
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 496
    .local v0, "bi":Ljava/io/BufferedInputStream;
    const/16 v8, 0x258

    new-array v4, v8, [B

    .line 497
    .local v4, "readContent":[B
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .line 498
    .local v5, "readCount":I
    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 499
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 500
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    if-eqz v7, :cond_1

    .line 508
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v6, v7

    .line 511
    .end local v0    # "bi":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "readContent":[B
    .end local v5    # "readCount":I
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    return-void

    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v0    # "bi":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "readContent":[B
    .restart local v5    # "readCount":I
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 503
    .end local v0    # "bi":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "readContent":[B
    .end local v5    # "readCount":I
    :catch_1
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    if-eqz v6, :cond_2

    .line 508
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 511
    :catch_2
    move-exception v8

    goto :goto_1

    .line 506
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 507
    :goto_3
    if-eqz v6, :cond_3

    .line 508
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 510
    :cond_3
    :goto_4
    throw v8

    :catch_3
    move-exception v9

    goto :goto_4

    .line 506
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 503
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method private static findDexRawFile(Ljava/lang/Object;)Ljava/io/File;
    .locals 6
    .param p0, "element"    # Ljava/lang/Object;

    .prologue
    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 595
    .local v1, "dexRawFile":Ljava/io/File;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_0

    .line 597
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 598
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 599
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 616
    .end local v1    # "dexRawFile":Ljava/io/File;
    .local v2, "dexRawFile":Ljava/io/File;
    :goto_0
    return-object v2

    .end local v2    # "dexRawFile":Ljava/io/File;
    .restart local v1    # "dexRawFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 604
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 605
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 606
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 609
    :goto_1
    if-nez v3, :cond_1

    .line 611
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 612
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 613
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v2, v1

    .line 616
    .end local v1    # "dexRawFile":Ljava/io/File;
    .restart local v2    # "dexRawFile":Ljava/io/File;
    goto :goto_0

    .end local v2    # "dexRawFile":Ljava/io/File;
    .restart local v1    # "dexRawFile":Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 525
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 528
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    return-object v1

    .line 523
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_1
    new-instance v2, Ljava/lang/NoSuchFieldException;

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

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static varargs getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "element"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Class;

    .prologue
    .line 748
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 750
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "can not create element by args"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKernalPatch()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v0

    sget-object v1, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/vA;->isUpdated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v0

    sget-object v1, Lc8/xA;->KERNAL_BUNDLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/vA;->isDexPatched(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDexElement(Ljava/io/File;[Ldalvik/system/DexFile;)[Ljava/lang/Object;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "dex"    # [Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x19

    .line 687
    array-length v6, p1

    new-array v5, v6, [Ljava/lang/Object;

    .line 688
    .local v5, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_5

    .line 690
    :try_start_0
    const-string/jumbo v6, "dalvik.system.DexPathList$Element"

    invoke-static {v6}, Lc8/xA;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 691
    .local v0, "Element":Ljava/lang/Class;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v9, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v9, :cond_2

    sget v6, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v6, :cond_2

    .line 692
    :cond_0
    sget-object v6, Lc8/xA;->constructorArgsO:[Ljava/lang/Class;

    invoke-static {v0, v6}, Lc8/xA;->getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 693
    .local v2, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, p1, v4

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    .line 688
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 695
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v6, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "apkFile":Ljava/io/File;
    sget-object v6, Lc8/xA;->constructorArgs1:[Ljava/lang/Class;

    invoke-static {v0, v6}, Lc8/xA;->getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 697
    .restart local v2    # "cons":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_3

    .line 698
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    aget-object v8, p1, v4

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 711
    .end local v0    # "Element":Ljava/lang/Class;
    .end local v1    # "apkFile":Ljava/io/File;
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v3

    .line 712
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "make DexElement fail"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 700
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "Element":Ljava/lang/Class;
    .restart local v1    # "apkFile":Ljava/io/File;
    .restart local v2    # "cons":Ljava/lang/reflect/Constructor;
    :cond_3
    :try_start_1
    sget-object v6, Lc8/xA;->constructorArgs2:[Ljava/lang/Class;

    invoke-static {v0, v6}, Lc8/xA;->getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 701
    if-eqz v2, :cond_4

    .line 702
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aget-object v8, p1, v4

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    goto :goto_1

    .line 704
    :cond_4
    sget-object v6, Lc8/xA;->constructorArgs3:[Ljava/lang/Class;

    invoke-static {v0, v6}, Lc8/xA;->getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 705
    if-eqz v2, :cond_1

    .line 706
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, p1, v4

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 715
    .end local v0    # "Element":Ljava/lang/Class;
    .end local v1    # "apkFile":Ljava/io/File;
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;
    :cond_5
    return-object v5
.end method

.method private makeMainDexUniqueTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "maindexTag"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    .end local p2    # "maindexTag":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "maindexTag":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static makeNativeLibraryElement(Ljava/io/File;)Ljava/lang/Object;
    .locals 9
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x19

    .line 721
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v7, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v7, :cond_1

    sget v6, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v6, :cond_1

    .line 723
    :cond_0
    :try_start_0
    const-string/jumbo v6, "dalvik.system.DexPathList$NativeLibraryElement"

    invoke-static {v6}, Lc8/xA;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 724
    .local v1, "NativeLibraryElement":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/File;

    aput-object v7, v5, v6

    .line 725
    .local v5, "oconstructorArgs":[Ljava/lang/Class;
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 726
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 727
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 736
    .end local v1    # "NativeLibraryElement":Ljava/lang/Class;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "oconstructorArgs":[Ljava/lang/Class;
    :goto_0
    return-object v6

    .line 728
    :catch_0
    move-exception v4

    .line 729
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "make nativeElement fail"

    invoke-direct {v6, v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 733
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "dalvik.system.DexPathList$Element"

    invoke-static {v6}, Lc8/xA;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 734
    .local v0, "Element":Ljava/lang/Class;
    sget-object v6, Lc8/xA;->constructorArgs1:[Ljava/lang/Class;

    invoke-static {v0, v6}, Lc8/xA;->getElementConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 735
    .local v2, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_2

    .line 736
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 738
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "make nativeElement fail | error constructor"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 740
    .end local v0    # "Element":Ljava/lang/Class;
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v4

    .line 741
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "make nativeElement fail"

    invoke-direct {v6, v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private quietClose(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static replaceElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "replaceElement"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v4, 0x0

    .line 575
    .local v4, "replaceSuccess":Z
    invoke-static {p0, p1}, Lc8/xA;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 576
    .local v2, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 577
    .local v3, "original":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 578
    aget-object v1, v3, v5

    .line 579
    .local v1, "element":Ljava/lang/Object;
    invoke-static {v1}, Lc8/xA;->findDexRawFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 580
    .local v0, "apkFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 582
    aput-object p2, v3, v5

    .line 583
    const/4 v4, 0x1

    .line 588
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    return v4

    .line 577
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static shouldSyncUpdateInThisProcess(Ljava/lang/String;)Z
    .locals 3
    .param p0, "process"    # Ljava/lang/String;

    .prologue
    .line 768
    .line 769
    move-object v0, p0

    .local v0, "processName":Ljava/lang/String;
    if-eqz p0, :cond_1

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    .line 770
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":safemode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    :cond_0
    const/4 v1, 0x1

    .line 775
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getArchive()Lc8/BA;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lc8/xA;->archive:Lc8/BA;

    return-object v0
.end method

.method public getRevisionDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lc8/xA;->getArchive()Lc8/BA;

    move-result-object v0

    invoke-virtual {v0}, Lc8/BA;->getRevisionDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRevisionZip()Ljava/io/File;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lc8/xA;->getArchive()Lc8/BA;

    move-result-object v0

    invoke-virtual {v0}, Lc8/BA;->getArchiveFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public installKernalBundle(Ljava/lang/ClassLoader;Ljava/io/File;[Ldalvik/system/DexFile;Ljava/io/File;)Z
    .locals 6
    .param p1, "updateClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "archiveFile"    # Ljava/io/File;
    .param p3, "odexFiles"    # [Ldalvik/system/DexFile;
    .param p4, "libraryDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 620
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/xA;->installKernalBundle(Ljava/lang/ClassLoader;Ljava/io/File;[Ldalvik/system/DexFile;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public installKernalBundle(Ljava/lang/ClassLoader;Ljava/io/File;[Ldalvik/system/DexFile;Ljava/io/File;Z)Z
    .locals 9
    .param p1, "updateClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "archiveFile"    # Ljava/io/File;
    .param p3, "odexFiles"    # [Ldalvik/system/DexFile;
    .param p4, "libraryDirectory"    # Ljava/io/File;
    .param p5, "vmSafeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 628
    .line 629
    move-object v3, p1

    .local v3, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string/jumbo v6, "pathList"

    invoke-static {p1, v6}, Lc8/xA;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 630
    .local v5, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "dexPathList":Ljava/lang/Object;
    if-eqz p3, :cond_2

    .line 632
    invoke-static {p2, p3}, Lc8/xA;->makeDexElement(Ljava/io/File;[Ldalvik/system/DexFile;)[Ljava/lang/Object;

    move-result-object v2

    .line 633
    .local v2, "element":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_1

    .line 634
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "makeDexElement failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "dexPathList":Ljava/lang/Object;
    .end local v2    # "element":[Ljava/lang/Object;
    .end local v5    # "pathListField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "install kernal fail"

    invoke-direct {v6, v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 638
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dexPathList":Ljava/lang/Object;
    .restart local v2    # "element":[Ljava/lang/Object;
    .restart local v5    # "pathListField":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "dexElements"

    invoke-static {v0, v6, v2}, Lc8/xA;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    .end local v2    # "element":[Ljava/lang/Object;
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 650
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_4

    .line 651
    const-string/jumbo v6, "nativeLibraryDirectories"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p4, v7, v8

    invoke-static {v0, v6, v7}, Lc8/xA;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    .line 657
    invoke-static {p4}, Lc8/xA;->makeNativeLibraryElement(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v4

    .line 658
    .local v4, "nativeLibraryElement":Ljava/lang/Object;
    const-string/jumbo v6, "nativeLibraryPathElements"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v0, v6, v7}, Lc8/xA;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    .end local v4    # "nativeLibraryElement":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x1

    return v6

    .line 653
    :cond_4
    const-string/jumbo v6, "nativeLibraryDirectories"

    invoke-static {v0, v6, p4}, Lc8/xA;->expandFieldList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isDeubgMode()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 799
    :try_start_0
    sget-object v6, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 800
    .local v1, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    move v0, v4

    .line 801
    .local v0, "DEBUG":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 812
    .end local v0    # "DEBUG":Z
    .end local v1    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    return v4

    .restart local v1    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v0, v5

    .line 800
    goto :goto_0

    .line 804
    .restart local v0    # "DEBUG":Z
    :cond_2
    sget-object v6, Lc8/CA;->baseContext:Landroid/content/Context;

    const-string/jumbo v7, "dynamic_test"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 805
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "dynamic_test_key"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 806
    .local v2, "dynamic_test_flag":Z
    if-nez v2, :cond_0

    move v4, v5

    .line 812
    goto :goto_1

    .line 810
    .end local v0    # "DEBUG":Z
    .end local v1    # "app_info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "dynamic_test_flag":Z
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move v4, v5

    goto :goto_1
.end method

.method public needReplaceClassLoader(Landroid/app/Application;)Z
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 442
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 444
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 446
    .local v1, "needReplace":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ldalvik/system/PathClassLoader;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    const/4 v1, 0x1

    .line 453
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "needReplace":Z
    :goto_0
    return v1

    .line 450
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    .restart local v1    # "needReplace":Z
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 453
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "needReplace":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public patchKernalDex(Landroid/app/Application;)V
    .locals 12
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 393
    iget-object v7, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v7}, Lc8/BA;->getOdexFile()[Ldalvik/system/DexFile;

    move-result-object v0

    .line 394
    .local v0, "dexFile":[Ldalvik/system/DexFile;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v7}, Lc8/BA;->getLibraryDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 395
    :cond_1
    sget-object v7, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iget-object v9, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v9}, Lc8/BA;->getArchiveFile()Ljava/io/File;

    move-result-object v9

    iget-object v10, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v10}, Lc8/BA;->getOdexFile()[Ldalvik/system/DexFile;

    move-result-object v10

    iget-object v11, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v11}, Lc8/BA;->getLibraryDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {p0, v7, v9, v10, v11}, Lc8/xA;->installKernalBundle(Ljava/lang/ClassLoader;Ljava/io/File;[Ldalvik/system/DexFile;Ljava/io/File;)Z

    .line 396
    invoke-virtual {p0, p1}, Lc8/xA;->needReplaceClassLoader(Landroid/app/Application;)Z

    move-result v3

    .line 397
    .local v3, "needReplaceClassLoader":Z
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "dexpatch/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 399
    .local v1, "dexPatch":Z
    if-eqz v1, :cond_5

    .line 400
    array-length v7, v0

    if-le v7, v8, :cond_4

    array-length v7, v0

    add-int/lit8 v4, v7, -0x2

    .line 405
    .local v4, "newFrameworkPropertiesDexIndex":I
    :goto_0
    if-eqz v1, :cond_6

    .line 406
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v7

    invoke-virtual {v7}, Lc8/vA;->currentVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v7

    invoke-virtual {v7}, Lc8/vA;->currentVersionName()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    move v7, v8

    :goto_1
    sput-boolean v7, Lc8/xA;->patchWithApk:Z

    .line 407
    if-nez v3, :cond_7

    .line 408
    iget-object v7, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v7}, Lc8/BA;->getOdexFile()[Ldalvik/system/DexFile;

    move-result-object v7

    aget-object v7, v7, v4

    const-string/jumbo v9, "android.taobao.atlas.framework.FrameworkProperties"

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lc8/xA;->_3loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    .line 416
    :goto_2
    iget-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lc8/xA;->isDeubgMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 417
    const-string/jumbo v7, "KernalBundle"

    const-string/jumbo v8, "main dex is not match, library awo test?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v1    # "dexPatch":Z
    .end local v3    # "needReplaceClassLoader":Z
    .end local v4    # "newFrameworkPropertiesDexIndex":I
    :cond_3
    :goto_3
    return-void

    .line 400
    .restart local v1    # "dexPatch":Z
    .restart local v3    # "needReplaceClassLoader":Z
    :cond_4
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    goto :goto_0

    .line 402
    :cond_5
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "newFrameworkPropertiesDexIndex":I
    goto :goto_0

    .line 406
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 409
    :cond_7
    sget-boolean v7, Lc8/xA;->patchWithApk:Z

    if-eqz v7, :cond_8

    .line 410
    iget-object v7, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v7}, Lc8/BA;->getOdexFile()[Ldalvik/system/DexFile;

    move-result-object v7

    aget-object v7, v7, v4

    const-string/jumbo v9, "android.taobao.atlas.framework.FrameworkProperties"

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lc8/xA;->_3loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    .line 411
    new-instance v7, Lc8/wA;

    const-string/jumbo v9, "."

    const-class v10, Lc8/xA;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lc8/wA;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v7, p0, Lc8/xA;->replaceClassLoader:Lc8/wA;

    goto :goto_2

    .line 413
    :cond_8
    new-instance v7, Lc8/wA;

    const-string/jumbo v9, "."

    const-class v10, Lc8/xA;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lc8/wA;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v7, p0, Lc8/xA;->replaceClassLoader:Lc8/wA;

    .line 414
    iget-object v7, p0, Lc8/xA;->archive:Lc8/BA;

    invoke-virtual {v7}, Lc8/BA;->getOdexFile()[Ldalvik/system/DexFile;

    move-result-object v7

    aget-object v7, v7, v4

    const-string/jumbo v9, "android.taobao.atlas.framework.FrameworkProperties"

    iget-object v10, p0, Lc8/xA;->replaceClassLoader:Lc8/wA;

    invoke-static {v7, v9, v10}, Lc8/xA;->_3loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    goto :goto_2

    .line 420
    :cond_9
    iget-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    const-string/jumbo v9, "version"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 421
    .local v6, "versionField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 422
    iget-object v7, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 423
    .local v5, "version":Ljava/lang/String;
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v7

    invoke-virtual {v7}, Lc8/vA;->currentVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 424
    invoke-virtual {p0}, Lc8/xA;->isDeubgMode()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 425
    const-string/jumbo v7, "KernalBundle"

    const-string/jumbo v8, "main dex is not match, awo test?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_a
    if-eqz v3, :cond_b

    .line 432
    :try_start_0
    sget-object v7, Lc8/CA;->baseContext:Landroid/content/Context;

    const-class v8, Lc8/xA;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    iget-object v9, p0, Lc8/xA;->replaceClassLoader:Lc8/wA;

    invoke-static {v7, v8, v9}, Lc8/wA;->replacePathClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Lc8/wA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_b
    invoke-virtual {p0, p1}, Lc8/xA;->prepareRuntimeVariables(Landroid/app/Application;)V

    goto/16 :goto_3

    .line 427
    :cond_c
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "maindex version is not mismatch"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 433
    :catch_0
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public patchKernalResource(Landroid/app/Application;)V
    .locals 6
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    sget-boolean v1, Lc8/xA;->patchWithApk:Z

    if-nez v1, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "android.taobao.atlas.runtime.DelegateResources"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    .local v0, "DelegateResourcesClazz":Ljava/lang/Class;
    const-string/jumbo v1, "addApkpatchResources"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/xA;->archive:Lc8/BA;

    .line 478
    invoke-virtual {v3}, Lc8/BA;->getArchiveFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lc8/xA;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v0    # "DelegateResourcesClazz":Ljava/lang/Class;
    :cond_0
    return-void
.end method

.method public prepareRuntimeVariables(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 459
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "android.taobao.atlas.runtime.RuntimeVariables"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 460
    .local v0, "RuntimeVariablesClass":Ljava/lang/Class;
    const-string/jumbo v2, "sRawClassLoader"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lc8/xA;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    iget-object v2, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 462
    const-string/jumbo v2, "FrameworkPropertiesClazz"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, p0, Lc8/xA;->FrameworkPropertiesClazz:Ljava/lang/Class;

    invoke-static {v2, v0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    :cond_0
    const-string/jumbo v2, "sCurrentProcessName"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v3, Lc8/CA;->PROCESS:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    const-string/jumbo v2, "androidApplication"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 468
    const-string/jumbo v2, "delegateResources"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v3, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    return-void

    .line 463
    :cond_1
    invoke-virtual {p0}, Lc8/xA;->isDeubgMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "FrameworkPropertiesClazz find error,will be rollback!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0    # "RuntimeVariablesClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
