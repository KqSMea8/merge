.class public Lc8/wy;
.super Ljava/lang/Object;
.source "AndroidHack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vy;
    }
.end annotation


# static fields
.field private static _mLoadedApk:Ljava/lang/Object;

.field private static _sActivityThread:Ljava/lang/Object;

.field static sActiveResourcesField:Ljava/lang/reflect/Field;

.field static sAssetsField:Ljava/lang/reflect/Field;

.field static sResourcesManagerClazz:Ljava/lang/Class;

.field static sgetInstanceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    sput-object v1, Lc8/wy;->_sActivityThread:Ljava/lang/Object;

    .line 245
    sput-object v1, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    .line 507
    sput-object v1, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    .line 508
    sput-object v1, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    .line 509
    sput-object v1, Lc8/wy;->sgetInstanceMethod:Ljava/lang/reflect/Method;

    .line 510
    sput-object v1, Lc8/wy;->sAssetsField:Ljava/lang/reflect/Field;

    .line 513
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 514
    const-string/jumbo v1, "android.app.ActivityThread"

    invoke-static {v1}, Lc8/wy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 515
    .local v0, "ActivityThreadClazz":Ljava/lang/Class;
    const-string/jumbo v1, "mActiveResources"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 516
    sput-object v1, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 517
    const-class v1, Landroid/content/res/Resources;

    const-string/jumbo v2, "mAssets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 518
    sput-object v1, Lc8/wy;->sAssetsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 535
    .end local v0    # "ActivityThreadClazz":Ljava/lang/Class;
    :goto_0
    return-void

    .line 519
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 520
    const-string/jumbo v1, "android.app.ResourcesManager"

    invoke-static {v1}, Lc8/wy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 521
    sput-object v1, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const-string/jumbo v2, "mActiveResources"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 522
    sput-object v1, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 523
    sget-object v1, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 524
    sput-object v1, Lc8/wy;->sgetInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 525
    const-class v1, Landroid/content/res/Resources;

    const-string/jumbo v2, "mAssets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 526
    sput-object v1, Lc8/wy;->sAssetsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 528
    :cond_1
    const-string/jumbo v1, "android.app.ResourcesManager"

    invoke-static {v1}, Lc8/wy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 529
    sput-object v1, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const-string/jumbo v2, "mResourceReferences"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 530
    sput-object v1, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 531
    sget-object v1, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 532
    sput-object v1, Lc8/wy;->sgetInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
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

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 242
    sput-object p0, Lc8/wy;->_sActivityThread:Ljava/lang/Object;

    return-object p0
.end method

.method public static createNewLoadedApk(Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "activityThread"    # Ljava/lang/Object;

    .prologue
    .line 302
    :try_start_0
    sget-object v14, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v14}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 303
    .local v13, "manager":Landroid/content/pm/PackageManager;
    sget-object v14, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v14}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 304
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_1

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 305
    .local v5, "currentSource":Ljava/lang/String;
    :goto_0
    sget-object v14, Lc8/dy;->sAPKSource:Ljava/lang/String;

    if-eqz v14, :cond_0

    if-eqz v5, :cond_0

    sget-object v14, Lc8/dy;->sAPKSource:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 306
    :cond_0
    const-string/jumbo v14, "AndroidHack"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lc8/dy;->sAPKSource:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " | "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v14

    invoke-virtual {v14}, Lc8/Oy;->clearActivityStack()V

    .line 308
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V

    .line 309
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 310
    const/4 v10, 0x0

    .line 336
    :goto_1
    return-object v10

    .line 304
    .end local v5    # "currentSource":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 313
    .restart local v5    # "currentSource":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x480

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 315
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 318
    .local v12, "mResources":Landroid/content/res/Resources;
    instance-of v14, v12, Lc8/cz;

    if-eqz v14, :cond_3

    .line 319
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "getCompatibilityInfo"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 323
    .local v7, "getCompatibilityInfo":Ljava/lang/reflect/Method;
    :goto_2
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 324
    const-string/jumbo v14, "android.content.res.CompatibilityInfo"

    invoke-static {v14}, Lc8/wy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 325
    .local v1, "ComplatibilityInfoClass":Ljava/lang/Class;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v7, v14, v15}, Lc8/wy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    .local v4, "compatibilityInfo":Ljava/lang/Object;
    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/pm/ApplicationInfo;

    aput-object v15, v3, v14

    const/4 v14, 0x1

    aput-object v1, v3, v14

    .line 328
    .local v3, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v14, Lc8/xy;->ActivityThread:Lc8/Ay;

    invoke-virtual {v14}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "getPackageInfoNoCheck"

    invoke-virtual {v14, v15, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 330
    .local v8, "getPackageInfoNoCheck":Ljava/lang/reflect/Method;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 331
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    move-object/from16 v0, p1

    invoke-static {v8, v0, v14}, Lc8/wy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 333
    .local v10, "loadedApk":Ljava/lang/Object;
    sput-object v10, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "mApplication"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 334
    .local v11, "mApplicationField":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 335
    sget-object v14, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    sget-object v15, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v11, v14, v15}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 337
    .end local v1    # "ComplatibilityInfoClass":Ljava/lang/Class;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "compatibilityInfo":Ljava/lang/Object;
    .end local v5    # "currentSource":Ljava/lang/String;
    .end local v7    # "getCompatibilityInfo":Ljava/lang/reflect/Method;
    .end local v8    # "getPackageInfoNoCheck":Ljava/lang/reflect/Method;
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "loadedApk":Ljava/lang/Object;
    .end local v11    # "mApplicationField":Ljava/lang/reflect/Field;
    .end local v12    # "mResources":Landroid/content/res/Resources;
    .end local v13    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 321
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "currentSource":Ljava/lang/String;
    .restart local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "mResources":Landroid/content/res/Resources;
    .restart local v13    # "manager":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_1
    const-string/jumbo v14, "getCompatibilityInfo"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-static {v12, v14, v15}, Lc8/wy;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7    # "getCompatibilityInfo":Ljava/lang/reflect/Method;
    goto :goto_2
.end method

.method public static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 540
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 543
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    return-object v1

    .line 538
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 553
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

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 346
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 349
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    return-object v1

    .line 344
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 359
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

.method public static getActivityThread()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v1, Lc8/wy;->_sActivityThread:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 249
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

    if-nez v1, :cond_1

    .line 250
    sget-object v1, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lc8/wy;->_sActivityThread:Ljava/lang/Object;

    .line 259
    .local v0, "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    sget-object v1, Lc8/wy;->_sActivityThread:Ljava/lang/Object;

    return-object v1

    .line 252
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 253
    .restart local v0    # "handler":Landroid/os/Handler;
    sget-object v2, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    monitor-enter v2

    .line 254
    :try_start_0
    new-instance v1, Lc8/vy;

    invoke-direct {v1}, Lc8/vy;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    sget-object v1, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 256
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstrumentation()Landroid/app/Instrumentation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 558
    .local v0, "activityThread":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 559
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_0
    sget-object v1, Lc8/xy;->ActivityThread_mInstrumentation:Lc8/Cy;

    invoke-virtual {v1, v0}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    return-object v1
.end method

.method public static getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "activityThread"    # Ljava/lang/Object;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v2, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 282
    sget-object v2, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    .line 291
    :goto_0
    return-object v2

    .line 284
    :cond_0
    sget-object v2, Lc8/xy;->ActivityThread_mPackages:Lc8/Cy;

    invoke-virtual {v2, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 285
    .local v0, "mPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 286
    .local v1, "rf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lc8/wy;->_mLoadedApk:Ljava/lang/Object;

    .line 288
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 291
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hackH()Landroid/os/Handler;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    .line 264
    .local v2, "activityThread":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 265
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_0
    :try_start_0
    const-string/jumbo v6, "android.app.ActivityThread$H"

    invoke-static {v6}, Lc8/Ey;->into(Ljava/lang/String;)Lc8/Ay;

    move-result-object v1

    .line 269
    .local v1, "H":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<Ljava/lang/Object;>;"
    sget-object v6, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v7, "mH"

    invoke-virtual {v6, v7}, Lc8/Ay;->field(Ljava/lang/String;)Lc8/Cy;

    move-result-object v6

    invoke-virtual {v1}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/Cy;->ofType(Ljava/lang/Class;)Lc8/Cy;

    move-result-object v0

    .line 270
    .local v0, "ActivityThread_mH":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v0, v2}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 271
    .local v5, "handler":Landroid/os/Handler;
    const-class v6, Landroid/os/Handler;

    const-string/jumbo v7, "mCallback"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 272
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    new-instance v6, Lc8/Qy;

    invoke-direct {v6, v2, v5}, Lc8/Qy;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-static {v4, v5, v6}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0    # "ActivityThread_mH":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "H":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<Ljava/lang/Object;>;"
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "handler":Landroid/os/Handler;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    invoke-virtual {v3}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "activityThread":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 372
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2, v0, p0}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 377
    .local v1, "loadedApk":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 378
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2, v0}, Lc8/wy;->createNewLoadedApk(Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    :cond_1
    if-nez v1, :cond_2

    .line 381
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Failed to get ActivityThread.mLoadedApk"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_2
    sget-object v2, Lc8/xy;->LoadedApk_mClassLoader:Lc8/Cy;

    invoke-virtual {v2, v1, p1}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public static injectInstrumentationHook(Landroid/app/Instrumentation;)V
    .locals 3
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 567
    .local v0, "activityThread":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 568
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_0
    sget-object v1, Lc8/xy;->ActivityThread_mInstrumentation:Lc8/Cy;

    invoke-virtual {v1, v0, p0}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public static injectResources(Landroid/app/Application;Landroid/content/res/Resources;)V
    .locals 36
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v5

    .line 412
    .local v5, "activityThread":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 413
    new-instance v31, Ljava/lang/Exception;

    const-string/jumbo v32, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct/range {v31 .. v32}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v31

    .line 416
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v5, v1}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 417
    .local v9, "loadedApk":Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 418
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lc8/wy;->createNewLoadedApk(Landroid/app/Application;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 419
    if-nez v9, :cond_1

    .line 420
    new-instance v31, Ljava/lang/RuntimeException;

    const-string/jumbo v32, " Failed to get ActivityThread.mLoadedApk"

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 422
    :cond_1
    sget-object v31, Lc8/xy;->LoadedApk_mClassLoader:Lc8/Cy;

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ClassLoader;

    .line 423
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    instance-of v0, v6, Lc8/Yy;

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 424
    sget-object v31, Lc8/xy;->LoadedApk_mClassLoader:Lc8/Cy;

    sget-object v32, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    sget-object v31, Lc8/xy;->LoadedApk_mResources:Lc8/Cy;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    sget-object v31, Lc8/xy;->ContextImpl_mResources:Lc8/Cy;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    sget-object v31, Lc8/xy;->ContextImpl_mTheme:Lc8/Cy;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 438
    :try_start_0
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x12

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_7

    .line 439
    sget-object v31, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 440
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<*Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    .line 449
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<*Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .local v19, "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/ref/WeakReference;

    .line 450
    .local v28, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/res/Resources;

    .line 451
    .local v20, "res":Landroid/content/res/Resources;
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x18

    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 452
    if-eqz v20, :cond_4

    .line 453
    sget-object v31, Lc8/wy;->sAssetsField:Ljava/lang/reflect/Field;

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    :cond_4
    :goto_1
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x13

    move/from16 v0, v31

    move/from16 v1, v33

    if-le v0, v1, :cond_5

    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v33, 0x18

    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    .line 468
    :try_start_1
    const-class v31, Landroid/content/res/Resources;

    const-string/jumbo v33, "mTypedArrayPool"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v27

    .line 469
    .local v27, "typedArrayPoolField":Ljava/lang/reflect/Field;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 470
    .local v16, "origTypedArrayPool":Ljava/lang/Object;
    const-string/jumbo v31, "mPool"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 471
    .local v17, "poolField":Ljava/lang/reflect/Field;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sget-object v35, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v35, v33, v34

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v26

    .line 472
    .local v26, "typedArrayConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v31, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 473
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v18, v0

    .line 474
    .local v18, "poolSize":I
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v33, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v31, v33

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 475
    .local v14, "newTypedArrayPool":Ljava/lang/Object;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    .end local v14    # "newTypedArrayPool":Ljava/lang/Object;
    .end local v16    # "origTypedArrayPool":Ljava/lang/Object;
    .end local v17    # "poolField":Ljava/lang/reflect/Field;
    .end local v18    # "poolSize":I
    .end local v26    # "typedArrayConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v27    # "typedArrayPoolField":Ljava/lang/reflect/Field;
    :cond_5
    :goto_2
    if-eqz v20, :cond_6

    .line 480
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 483
    :cond_6
    const-string/jumbo v31, "android.support.v7.widget.TintContextWrapper"

    invoke-static/range {v31 .. v31}, Lc8/wy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 484
    .local v3, "TintContextWrapper":Ljava/lang/Class;
    const-string/jumbo v31, "sCache"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    .line 485
    .local v25, "tintWrapperField":Ljava/lang/reflect/Field;
    const/16 v31, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 486
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 488
    .local v23, "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    if-eqz v23, :cond_3

    .line 489
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_3

    .line 490
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/ref/WeakReference;

    .line 491
    .local v29, "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v29, :cond_b

    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v30

    .line 492
    .local v30, "wrapper":Ljava/lang/Object;
    :goto_4
    const-string/jumbo v31, "mResources"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 493
    .local v11, "mTintResourcesField":Ljava/lang/reflect/Field;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 494
    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 495
    .local v15, "obj":Ljava/lang/Object;
    const-string/jumbo v31, "mResources"

    move-object/from16 v0, v31

    invoke-static {v15, v0}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 496
    .local v10, "mResourceField":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-static {v10, v15, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 441
    .end local v3    # "TintContextWrapper":Ljava/lang/Class;
    .end local v10    # "mResourceField":Ljava/lang/reflect/Field;
    .end local v11    # "mTintResourcesField":Ljava/lang/reflect/Field;
    .end local v13    # "n":I
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v23    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v25    # "tintWrapperField":Ljava/lang/reflect/Field;
    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v29    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v30    # "wrapper":Ljava/lang/Object;
    :cond_7
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x18

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 442
    sget-object v31, Lc8/wy;->sgetInstanceMethod:Ljava/lang/reflect/Method;

    sget-object v32, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v33}, Lc8/wy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 443
    .local v24, "sResourcesManager":Ljava/lang/Object;
    sget-object v31, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 444
    .local v4, "activeResources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<*Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    .line 445
    .restart local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    goto/16 :goto_0

    .line 446
    .end local v4    # "activeResources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<*Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v24    # "sResourcesManager":Ljava/lang/Object;
    :cond_8
    sget-object v31, Lc8/wy;->sgetInstanceMethod:Ljava/lang/reflect/Method;

    sget-object v32, Lc8/wy;->sResourcesManagerClazz:Ljava/lang/Class;

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v33}, Lc8/wy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 447
    .restart local v24    # "sResourcesManager":Ljava/lang/Object;
    sget-object v31, Lc8/wy;->sActiveResourcesField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;

    .restart local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    goto/16 :goto_0

    .line 456
    .end local v24    # "sResourcesManager":Ljava/lang/Object;
    .restart local v20    # "res":Landroid/content/res/Resources;
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_9
    if-eqz v20, :cond_4

    .line 457
    const-class v31, Landroid/content/res/Resources;

    const-string/jumbo v33, "mResourcesImpl"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 458
    .local v22, "resourcesImplField":Ljava/lang/reflect/Field;
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 459
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 460
    .local v21, "resourceImpl":Ljava/lang/Object;
    const-string/jumbo v31, "mAssets"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 461
    .local v8, "implAssets":Ljava/lang/reflect/Field;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-static {v8, v0, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 501
    .end local v8    # "implAssets":Ljava/lang/reflect/Field;
    .end local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v21    # "resourceImpl":Ljava/lang/Object;
    .end local v22    # "resourcesImplField":Ljava/lang/reflect/Field;
    .end local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catch_0
    move-exception v7

    .line 502
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 505
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_a
    return-void

    .line 491
    .restart local v3    # "TintContextWrapper":Ljava/lang/Class;
    .restart local v13    # "n":I
    .restart local v19    # "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .restart local v20    # "res":Landroid/content/res/Resources;
    .restart local v23    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v25    # "tintWrapperField":Ljava/lang/reflect/Field;
    .restart local v28    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .restart local v29    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :cond_b
    const/16 v30, 0x0

    goto/16 :goto_4

    .end local v3    # "TintContextWrapper":Ljava/lang/Class;
    .end local v13    # "n":I
    .end local v23    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v25    # "tintWrapperField":Ljava/lang/reflect/Field;
    .end local v29    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :catch_1
    move-exception v31

    goto/16 :goto_2
.end method
