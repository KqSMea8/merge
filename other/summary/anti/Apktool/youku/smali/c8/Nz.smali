.class public Lc8/Nz;
.super Ljava/lang/Object;
.source "AdditionalPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;
    }
.end annotation


# static fields
.field private static retryCount:I

.field private static sBundlePackagemanager:Lc8/Nz;


# instance fields
.field private mExternalActivity:Lc8/Mz;

.field private mExternalProviders:Lc8/Mz;

.field private mExternalReceivers:Lc8/Mz;

.field private mExternalServices:Lc8/Mz;

.field private final mProvidersByAuthority:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiverIntentFilters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x2

    sput v0, Lc8/Nz;->retryCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lc8/Nz;->mReceiverIntentFilters:Ljava/util/HashMap;

    .line 251
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lc8/Nz;->mProvidersByAuthority:Ljava/util/HashMap;

    .line 261
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v7

    const-string/jumbo v8, "com.taobao.maindex"

    invoke-virtual {v7, v8}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    :cond_0
    :try_start_0
    sget v7, Lc8/Nz;->retryCount:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lc8/Nz;->retryCount:I

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, "needRetry":Z
    invoke-static {}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getRawClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string/jumbo v8, "android.taobao.atlas.startup.patch.KernalBundle"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    .local v0, "KernalBundleClass":Ljava/lang/Class;
    const-string/jumbo v7, "kernalBundle"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 269
    .local v4, "kernalBundleField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "kernalBundle":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 271
    const-string/jumbo v7, "getRevisionZip"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 272
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 273
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v3, v7}, Lc8/Nz;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 274
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/Nz;->parseBundle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "KernalBundleClass":Ljava/lang/Class;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "kernalBundle":Ljava/lang/Object;
    .end local v4    # "kernalBundleField":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    sget v7, Lc8/Nz;->retryCount:I

    if-lez v7, :cond_2

    if-nez v6, :cond_0

    .line 284
    .end local v6    # "needRetry":Z
    :cond_2
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v6, 0x1

    .line 280
    .restart local v6    # "needRetry":Z
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

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

.method public static declared-synchronized getInstance()Lc8/Nz;
    .locals 2

    .prologue
    .line 254
    const-class v1, Lc8/Nz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Nz;->sBundlePackagemanager:Lc8/Nz;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lc8/Nz;

    invoke-direct {v0}, Lc8/Nz;-><init>()V

    sput-object v0, Lc8/Nz;->sBundlePackagemanager:Lc8/Nz;

    .line 257
    :cond_0
    sget-object v0, Lc8/Nz;->sBundlePackagemanager:Lc8/Nz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseBundle(Ljava/lang/String;)V
    .locals 33
    .param p1, "zipPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 296
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x14

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_1

    .line 297
    sget-object v29, Lc8/xy;->PackageParser_constructor:Lc8/By;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object p1, v30, v31

    invoke-virtual/range {v29 .. v30}, Lc8/By;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 302
    .local v17, "pkgParser":Ljava/lang/Object;
    :goto_0
    :try_start_0
    const-class v29, Landroid/content/res/AssetManager;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/AssetManager;

    .line 303
    .local v7, "assmgr":Landroid/content/res/AssetManager;
    sget-object v29, Lc8/xy;->AssetManager_addAssetPath:Lc8/Dy;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget-object v32, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v32 .. v32}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v29, Lc8/xy;->AssetManager_addAssetPath:Lc8/Dy;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object p1, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 305
    .local v8, "cookie":I
    new-instance v24, Landroid/content/res/Resources;

    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    sget-object v30, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v7, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 306
    .local v24, "res":Landroid/content/res/Resources;
    const-string/jumbo v29, "AndroidManifest.xml"

    move-object/from16 v0, v29

    invoke-virtual {v7, v8, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 307
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lc8/Nz;->parsePackage(Ljava/lang/Object;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 312
    .local v15, "packageObj":Ljava/lang/Object;
    if-nez v15, :cond_2

    .line 440
    .end local v7    # "assmgr":Landroid/content/res/AssetManager;
    .end local v8    # "cookie":I
    .end local v15    # "packageObj":Ljava/lang/Object;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .line 299
    .end local v17    # "pkgParser":Ljava/lang/Object;
    :cond_1
    sget-object v29, Lc8/xy;->PackageParser_constructor:Lc8/By;

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lc8/By;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "pkgParser":Ljava/lang/Object;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v9

    .line 309
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v8    # "cookie":I
    .restart local v15    # "packageObj":Ljava/lang/Object;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v29, Lc8/xy;->PackageParser$Package_packageName:Lc8/Cy;

    sget-object v30, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v30 .. v30}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    sget-object v29, Lc8/xy;->PackageParser$Package_applicationInfo:Lc8/Cy;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 317
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 318
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 319
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 320
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 321
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 322
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 323
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 324
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 325
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 326
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 327
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 328
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 329
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 330
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 331
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v29, v0

    move/from16 v0, v29

    iput-boolean v0, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 332
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 333
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 335
    new-instance v6, Lc8/Mz;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-direct {v6, v0}, Lc8/Mz;-><init>(I)V

    .line 336
    .local v6, "activityResolver":Lc8/Mz;
    new-instance v28, Lc8/Mz;

    const/16 v29, 0x2

    invoke-direct/range {v28 .. v29}, Lc8/Mz;-><init>(I)V

    .line 337
    .local v28, "serviceResolver":Lc8/Mz;
    new-instance v23, Lc8/Mz;

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lc8/Mz;-><init>(I)V

    .line 338
    .local v23, "receiverResolver":Lc8/Mz;
    new-instance v21, Lc8/Mz;

    const/16 v29, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lc8/Mz;-><init>(I)V

    .line 341
    .local v21, "providerResolver":Lc8/Mz;
    sget-object v29, Lc8/xy;->PackageParser$Package_activities:Lc8/Cy;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 342
    .local v5, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v29, Lc8/xy;->PackageParser$Package_services:Lc8/Cy;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 343
    .local v27, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v29, Lc8/xy;->PackageParser$Package_providers:Lc8/Cy;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 344
    .local v20, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v29, Lc8/xy;->PackageParser$Package_receivers:Lc8/Cy;

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 350
    .local v22, "receiverList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v5, :cond_6

    .line 351
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 353
    .local v3, "activity":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    const-string/jumbo v31, "info"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 354
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 355
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 357
    :cond_3
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v29

    :goto_3
    move-object/from16 v0, v29

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 358
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 359
    invoke-virtual {v6, v3}, Lc8/Mz;->addComponent(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 360
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v9

    .line 361
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 357
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    :try_start_2
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 364
    .end local v3    # "activity":Ljava/lang/Object;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, v6, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    if-lez v29, :cond_6

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lc8/Nz;->setNewActivityResolver(Lc8/Mz;)V

    .line 372
    :cond_6
    if-eqz v27, :cond_9

    .line 373
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 375
    .local v25, "service":Ljava/lang/Object;
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    const-string/jumbo v31, "info"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ServiceInfo;

    .line 376
    .local v26, "serviceInfo":Landroid/content/pm/ServiceInfo;
    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 377
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_7

    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v29

    :goto_5
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 378
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/Mz;->addComponent(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 379
    .end local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v9

    .line 380
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 377
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_7
    :try_start_4
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 383
    .end local v25    # "service":Ljava/lang/Object;
    .end local v26    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/Nz;->setNewServiceResolver(Lc8/Mz;)V

    .line 389
    :cond_9
    if-eqz v20, :cond_f

    .line 390
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_a
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 393
    .local v18, "provider":Ljava/lang/Object;
    :try_start_5
    sget-object v29, Lc8/xy;->PackageParser$Provider_info:Lc8/Cy;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ProviderInfo;

    .line 394
    .local v19, "providerInfo":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v29

    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 395
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/Mz;->addComponent(Ljava/lang/Object;)V

    .line 396
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 397
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v31, ";"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 398
    .local v14, "names":[Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 399
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8
    array-length v0, v14

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_a

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Nz;->mProvidersByAuthority:Ljava/util/HashMap;

    move-object/from16 v29, v0

    aget-object v31, v14, v13

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Nz;->mProvidersByAuthority:Ljava/util/HashMap;

    move-object/from16 v29, v0

    aget-object v31, v14, v13

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_d

    .line 403
    aget-object v29, v14, v13

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 399
    :cond_b
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 394
    .end local v13    # "j":I
    .end local v14    # "names":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    goto :goto_7

    .line 405
    .restart local v13    # "j":I
    .restart local v14    # "names":[Ljava/lang/String;
    :cond_d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v31, ";"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v31, v14, v13

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    .line 410
    .end local v13    # "j":I
    .end local v14    # "names":[Ljava/lang/String;
    .end local v19    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :catch_3
    move-exception v9

    .line 411
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 414
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v18    # "provider":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/Nz;->setNewProviderResolver(Lc8/Mz;)V

    .line 420
    :cond_f
    if-eqz v22, :cond_0

    .line 421
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_10
    :goto_a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 423
    .restart local v3    # "activity":Ljava/lang/Object;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    const-string/jumbo v31, "info"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 424
    .restart local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lc8/Mz;->addComponent(Ljava/lang/Object;)V

    .line 425
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_11

    sget-object v29, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v29

    :goto_b
    move-object/from16 v0, v29

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 426
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v29

    const-string/jumbo v31, "intents"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 427
    .local v12, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-eqz v12, :cond_10

    .line 428
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_c
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter;

    .line 429
    .local v10, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Nz;->mReceiverIntentFilters:Ljava/util/HashMap;

    move-object/from16 v31, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    .line 432
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    :catch_4
    move-exception v9

    .line 433
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 425
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_11
    :try_start_7
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_b

    .line 436
    .end local v3    # "activity":Ljava/lang/Object;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_12
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    if-lez v29, :cond_0

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/Nz;->setNewReceiverResolver(Lc8/Mz;)V

    goto/16 :goto_1
.end method

.method private static parsePackage(Ljava/lang/Object;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljava/lang/Object;
    .locals 9
    .param p0, "packageParserObj"    # Ljava/lang/Object;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x1

    .line 444
    new-array v3, v4, [Ljava/lang/String;

    .line 446
    .local v3, "outError":[Ljava/lang/String;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 447
    sget-object v4, Lc8/xy;->PackageParser:Lc8/Ay;

    const-string/jumbo v5, "parseBaseApk"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/content/res/XmlResourceParser;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    .line 448
    .local v0, "PackageParser_parsePackage":Lc8/Dy;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-virtual {v0, p0, v4}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 466
    .end local v0    # "PackageParser_parsePackage":Lc8/Dy;
    :goto_0
    return-object v4

    .line 449
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_1

    .line 450
    sget-object v4, Lc8/xy;->PackageParser:Lc8/Ay;

    const-string/jumbo v5, "parseBaseApk"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/XmlResourceParser;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    .line 451
    .restart local v0    # "PackageParser_parsePackage":Lc8/Dy;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {v0, p0, v4}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 454
    .end local v0    # "PackageParser_parsePackage":Lc8/Dy;
    :cond_1
    :try_start_1
    sget-object v4, Lc8/xy;->PackageParser:Lc8/Ay;

    const-string/jumbo v5, "parsePackage"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/XmlResourceParser;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    .line 455
    .restart local v0    # "PackageParser_parsePackage":Lc8/Dy;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {v0, p0, v4}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 457
    .end local v0    # "PackageParser_parsePackage":Lc8/Dy;
    :catch_0
    move-exception v4

    :try_start_2
    sget-object v4, Lc8/xy;->PackageParser:Lc8/Ay;

    const-string/jumbo v5, "parsePackage"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/XmlResourceParser;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    .line 458
    .restart local v0    # "PackageParser_parsePackage":Lc8/Dy;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-virtual {v0, p0, v4}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 461
    .end local v0    # "PackageParser_parsePackage":Lc8/Dy;
    :catch_1
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 463
    .local v1, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 464
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 466
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private queryIntentResolveInfo(Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/ComponentInfo;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, "infoClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 487
    if-nez p1, :cond_0

    move-object v4, v6

    .line 537
    :goto_0
    return-object v4

    .line 491
    :cond_0
    const-class v5, Landroid/content/pm/ActivityInfo;

    if-ne p2, v5, :cond_2

    .line 492
    iget-object v3, p0, Lc8/Nz;->mExternalActivity:Lc8/Mz;

    .line 496
    .local v3, "resolver":Lc8/Mz;
    :goto_1
    if-eqz v3, :cond_8

    .line 497
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 498
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 499
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v5, v7, :cond_1

    .line 500
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 506
    :cond_1
    if-eqz v0, :cond_5

    .line 507
    iget-object v5, v3, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 508
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 510
    :try_start_0
    new-instance v4, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;

    invoke-direct {v4}, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;-><init>()V

    .line 511
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lc8/Nz;->mExternalActivity:Lc8/Mz;

    if-ne v3, v5, :cond_3

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v7, "info"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    move-object v4, v6

    goto :goto_0

    .line 494
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "resolver":Lc8/Mz;
    :cond_2
    iget-object v3, p0, Lc8/Nz;->mExternalServices:Lc8/Mz;

    .restart local v3    # "resolver":Lc8/Mz;
    goto :goto_1

    .line 514
    .restart local v0    # "comp":Landroid/content/ComponentName;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v7, "info"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ServiceInfo;

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object v4, v6

    .line 521
    goto :goto_0

    .line 525
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v4, v6

    .line 526
    goto/16 :goto_0

    .line 528
    :cond_6
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 529
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {v3, p1, v5, v8}, Lc8/Mz;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 530
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 531
    new-instance v4, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v5}, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    :cond_7
    move-object v4, v6

    .line 533
    goto/16 :goto_0

    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    move-object v4, v6

    .line 537
    goto/16 :goto_0
.end method


# virtual methods
.method public getAdditionIntentFilter()Landroid/content/IntentFilter;
    .locals 9

    .prologue
    .line 683
    iget-object v6, p0, Lc8/Nz;->mReceiverIntentFilters:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    .line 684
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 686
    .local v1, "allAdditionalFilter":Landroid/content/IntentFilter;
    :try_start_0
    const-class v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "mActions"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 687
    .local v5, "mActionsField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 688
    iget-object v6, p0, Lc8/Nz;->mReceiverIntentFilters:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 689
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 690
    .local v4, "mActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 691
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "mActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "mActionsField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 697
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    .end local v1    # "allAdditionalFilter":Landroid/content/IntentFilter;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;
    .locals 6
    .param p1, "comonent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/ComponentInfo;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 578
    .local p2, "ComponentInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 579
    .local v3, "resolver":Lc8/Mz;
    const-class v4, Landroid/content/pm/ActivityInfo;

    if-ne p2, v4, :cond_1

    .line 580
    iget-object v3, p0, Lc8/Nz;->mExternalActivity:Lc8/Mz;

    .line 586
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 587
    iget-object v4, v3, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 588
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 590
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ComponentInfo;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 599
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 581
    :cond_1
    const-class v4, Landroid/content/pm/ServiceInfo;

    if-ne p2, v4, :cond_2

    .line 582
    iget-object v3, p0, Lc8/Nz;->mExternalServices:Lc8/Mz;

    goto :goto_0

    .line 583
    :cond_2
    const-class v4, Landroid/content/pm/ProviderInfo;

    if-ne p2, v4, :cond_0

    .line 584
    iget-object v3, p0, Lc8/Nz;->mExternalProviders:Lc8/Mz;

    goto :goto_0

    .line 592
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 599
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 594
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 603
    iget-object v3, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    iget-object v3, v3, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 604
    iget-object v3, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    iget-object v3, v3, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 605
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 607
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "info"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 609
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 616
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 611
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public queryContentProviders(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 661
    iget-object v5, p0, Lc8/Nz;->mExternalProviders:Lc8/Mz;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/Nz;->mExternalProviders:Lc8/Mz;

    iget-object v5, v5, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 662
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :try_start_0
    iget-object v5, p0, Lc8/Nz;->mExternalProviders:Lc8/Mz;

    iget-object v5, v5, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 665
    .local v3, "provider":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v7, "info"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 666
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 667
    if-eqz v1, :cond_0

    .line 668
    if-eqz p1, :cond_1

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v1    # "info":Landroid/content/pm/ProviderInfo;
    .end local v3    # "provider":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v4

    .line 679
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_2
    :goto_2
    return-object v2

    .line 666
    .restart local v1    # "info":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3    # "provider":Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "info":Landroid/content/pm/ProviderInfo;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v3    # "provider":Ljava/lang/Object;
    :cond_4
    move-object v2, v4

    .line 679
    goto :goto_2
.end method

.method public queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v2

    const-class v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, p1, v3}, Lc8/Nz;->queryIntentResolveInfo(Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 559
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 561
    .local v1, "rf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v1    # "rf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryIntentReceivers(Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 620
    if-nez p1, :cond_0

    move-object v2, v5

    .line 656
    :goto_0
    return-object v2

    .line 623
    :cond_0
    iget-object v4, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    if-eqz v4, :cond_5

    .line 624
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 625
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 626
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v4, v6, :cond_1

    .line 627
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 628
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 629
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 633
    :cond_1
    if-eqz v0, :cond_3

    .line 634
    iget-object v4, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    iget-object v4, v4, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 635
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 637
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 639
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iput-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v4

    move-object v2, v5

    goto :goto_0

    :cond_2
    move-object v2, v5

    .line 645
    goto :goto_0

    .line 649
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v2, v5

    .line 650
    goto :goto_0

    .line 652
    :cond_4
    iget-object v4, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 653
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 652
    invoke-virtual {v4, p1, v5, v6}, Lc8/Mz;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_5
    move-object v2, v5

    .line 656
    goto/16 :goto_0
.end method

.method public queryIntentService(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v2

    const-class v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, p1, v3}, Lc8/Nz;->queryIntentResolveInfo(Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 569
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    .local v1, "rf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v1    # "rf":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v4, p0, Lc8/Nz;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 543
    .local v3, "provider":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 544
    new-instance v2, Landroid/content/pm/ProviderInfo;

    sget-object v4, Lc8/xy;->PackageParser$Provider_info:Lc8/Cy;

    invoke-virtual {v4, v3}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 546
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "metaData"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 547
    .local v1, "metaDataField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "metaDataField":Ljava/lang/reflect/Field;
    .end local v2    # "pi":Landroid/content/pm/ProviderInfo;
    :goto_0
    return-object v2

    .line 548
    .restart local v2    # "pi":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setNewActivityResolver(Lc8/Mz;)V
    .locals 0
    .param p1, "resolver"    # Lc8/Mz;

    .prologue
    .line 471
    iput-object p1, p0, Lc8/Nz;->mExternalActivity:Lc8/Mz;

    .line 472
    return-void
.end method

.method setNewProviderResolver(Lc8/Mz;)V
    .locals 0
    .param p1, "resolver"    # Lc8/Mz;

    .prologue
    .line 483
    iput-object p1, p0, Lc8/Nz;->mExternalProviders:Lc8/Mz;

    .line 484
    return-void
.end method

.method setNewReceiverResolver(Lc8/Mz;)V
    .locals 0
    .param p1, "resolver"    # Lc8/Mz;

    .prologue
    .line 479
    iput-object p1, p0, Lc8/Nz;->mExternalReceivers:Lc8/Mz;

    .line 480
    return-void
.end method

.method setNewServiceResolver(Lc8/Mz;)V
    .locals 0
    .param p1, "resolver"    # Lc8/Mz;

    .prologue
    .line 475
    iput-object p1, p0, Lc8/Nz;->mExternalServices:Lc8/Mz;

    .line 476
    return-void
.end method
