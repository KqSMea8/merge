.class public Lc8/Vx;
.super Ljava/lang/Object;
.source "BridgeApplicationDelegate.java"


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mBoundApplication_provider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProcessname:Ljava/lang/String;

.field private mInstalledVersionCode:J

.field private mInstalledVersionName:Ljava/lang/String;

.field private mIsUpdated:Z

.field private mLastUpdateTime:J

.field private mRawApplication:Landroid/app/Application;

.field private mRealApplication:Landroid/app/Application;

.field private mRealApplicationName:Ljava/lang/String;

.field private mdexLoadBooster:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZLjava/lang/Object;)V
    .locals 18
    .param p1, "rawApplication"    # Landroid/app/Application;
    .param p2, "processname"    # Ljava/lang/String;
    .param p3, "installedVersion"    # Ljava/lang/String;
    .param p4, "versioncode"    # J
    .param p6, "lastupdatetime"    # J
    .param p8, "apkPath"    # Ljava/lang/String;
    .param p9, "isUpdated"    # Z
    .param p10, "dexLoadBooster"    # Ljava/lang/Object;

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-gt v13, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "com.ali.mobisecenhance"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 270
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string/jumbo v14, "pathList"

    invoke-static {v13, v14}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 271
    .local v11, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 272
    .local v5, "dexPathList":Ljava/lang/Object;
    const-string/jumbo v13, "dexElements"

    invoke-static {v5, v13}, Lc8/wy;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 273
    .local v8, "elementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 274
    .local v7, "elements":[Ljava/lang/Object;
    const-string/jumbo v13, "BridgeApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "get Elements :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    array-length v13, v7

    if-lez v13, :cond_2

    .line 277
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "dexFile"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 278
    .local v4, "dexFileField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 279
    array-length v13, v7

    add-int/lit8 v12, v13, -0x1

    .local v12, "x":I
    :goto_0
    if-ltz v12, :cond_2

    .line 280
    aget-object v13, v7, v12

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldalvik/system/DexFile;

    .line 281
    .local v3, "dexFile":Ldalvik/system/DexFile;
    invoke-virtual {v3}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "com.taobao.maindex"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 283
    const/4 v10, 0x0

    .line 284
    .local v10, "findDexToDelete":Z
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 285
    .local v9, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 286
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, "/"

    const-string/jumbo v15, "."

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "com.ali.mobisecenhance.ld.util"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 287
    const/4 v10, 0x1

    .line 291
    :cond_1
    if-eqz v10, :cond_3

    .line 292
    const-string/jumbo v13, "BridgeApplication"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "delete dexfile :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    aget-object v13, v7, v12

    const/4 v14, 0x0

    invoke-static {v4, v13, v14}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .end local v4    # "dexFileField":Ljava/lang/reflect/Field;
    .end local v5    # "dexPathList":Ljava/lang/Object;
    .end local v7    # "elements":[Ljava/lang/Object;
    .end local v8    # "elementsField":Ljava/lang/reflect/Field;
    .end local v9    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "findDexToDelete":Z
    .end local v11    # "pathListField":Ljava/lang/reflect/Field;
    .end local v12    # "x":I
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    .line 305
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Vx;->mCurrentProcessname:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Vx;->mInstalledVersionName:Ljava/lang/String;

    .line 307
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Vx;->mInstalledVersionCode:J

    .line 308
    move-wide/from16 v0, p6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Vx;->mLastUpdateTime:J

    .line 309
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Vx;->mIsUpdated:Z

    .line 310
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Vx;->mApkPath:Ljava/lang/String;

    .line 311
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Vx;->mdexLoadBooster:Ljava/lang/Object;

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lc8/uz;->delegatepackageManager(Landroid/content/Context;)V

    .line 313
    return-void

    .line 279
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v4    # "dexFileField":Ljava/lang/reflect/Field;
    .restart local v5    # "dexPathList":Ljava/lang/Object;
    .restart local v7    # "elements":[Ljava/lang/Object;
    .restart local v8    # "elementsField":Ljava/lang/reflect/Field;
    .restart local v11    # "pathListField":Ljava/lang/reflect/Field;
    .restart local v12    # "x":I
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 299
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .end local v4    # "dexFileField":Ljava/lang/reflect/Field;
    .end local v5    # "dexPathList":Ljava/lang/Object;
    .end local v7    # "elements":[Ljava/lang/Object;
    .end local v8    # "elementsField":Ljava/lang/reflect/Field;
    .end local v11    # "pathListField":Ljava/lang/reflect/Field;
    .end local v12    # "x":I
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
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


# virtual methods
.method public attachBaseContext()V
    .locals 14

    .prologue
    .line 316
    invoke-static {}, Lc8/xy;->defineAndVerify()Z

    .line 317
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 318
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->originalResources:Landroid/content/res/Resources;

    .line 319
    iget-object v9, p0, Lc8/Vx;->mCurrentProcessname:Ljava/lang/String;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    .line 320
    iget-wide v10, p0, Lc8/Vx;->mInstalledVersionCode:J

    sput-wide v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->sInstalledVersionCode:J

    .line 321
    iget-wide v10, p0, Lc8/Vx;->mLastUpdateTime:J

    sput-wide v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->sAppLastUpdateTime:J

    .line 322
    iget-object v9, p0, Lc8/Vx;->mApkPath:Ljava/lang/String;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sApkPath:Ljava/lang/String;

    .line 323
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    .line 324
    iget-object v9, p0, Lc8/Vx;->mdexLoadBooster:Ljava/lang/Object;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    .line 325
    const-string/jumbo v9, "BridgeApplication"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "length ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v10, "vivo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-eq v9, v10, :cond_1

    .line 346
    :cond_0
    :try_start_0
    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "setVerificationEnabled"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/Vx;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_1
    :goto_0
    iget-object v9, p0, Lc8/Vx;->mInstalledVersionName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 354
    iget-object v9, p0, Lc8/Vx;->mInstalledVersionName:Ljava/lang/String;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sInstalledVersionName:Ljava/lang/String;

    .line 356
    :cond_2
    invoke-static {}, Lc8/QA;->forceStopAppWhenCrashed()V

    .line 357
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v10, Lc8/ZA;

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 359
    :try_start_1
    const-string/jumbo v9, "preLaunch"

    invoke-static {v9}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getFrameworkProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 360
    .local v8, "preLaunchStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 361
    invoke-static {v8}, Lc8/Vx;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Ry;

    .line 362
    .local v5, "launcher":Lc8/Ry;
    if-eqz v5, :cond_3

    .line 363
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v5, v9}, Lc8/Ry;->initBeforeAtlas(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .end local v5    # "launcher":Lc8/Ry;
    :cond_3
    :try_start_2
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    .line 375
    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 377
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "REAL_APPLICATION"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    .line 378
    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "multidex_enable"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 383
    .local v7, "multidexEnable":Z
    if-eqz v7, :cond_4

    .line 384
    iget-object v9, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-static {v9}, Lc8/Zf;->install(Landroid/content/Context;)V

    .line 387
    :cond_4
    iget-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "android.app.Application"

    :goto_1
    iput-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    .line 388
    iget-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 389
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    .line 391
    :cond_5
    iget-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    sput-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->sRealApplicationName:Ljava/lang/String;

    .line 394
    :try_start_3
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v9

    iget-object v10, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    iget-boolean v11, p0, Lc8/Vx;->mIsUpdated:Z

    invoke-virtual {v9, v10, v11}, Lc8/dy;->init(Landroid/app/Application;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 400
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".BuildConfig"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/Vx;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 401
    .local v0, "BuildConfig":Ljava/lang/Class;
    const-string/jumbo v9, "launchTime"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 402
    .local v4, "launchTimeField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v0, v9}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 409
    .end local v0    # "BuildConfig":Ljava/lang/Class;
    .end local v4    # "launchTimeField":Ljava/lang/reflect/Field;
    :goto_2
    :try_start_5
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 410
    .local v1, "activityThread":Ljava/lang/Object;
    sget-object v9, Lc8/xy;->ActivityThread_mBoundApplication:Lc8/Cy;

    invoke-virtual {v9, v1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 411
    .local v6, "mBoundApplication":Ljava/lang/Object;
    sget-object v9, Lc8/xy;->ActivityThread$AppBindData_providers:Lc8/Cy;

    invoke-virtual {v9, v6}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iput-object v9, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    .line 412
    iget-object v9, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 413
    sget-object v9, Lc8/xy;->ActivityThread$AppBindData_providers:Lc8/Cy;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 417
    :cond_6
    return-void

    .line 347
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "mBoundApplication":Ljava/lang/Object;
    .end local v7    # "multidexEnable":Z
    .end local v8    # "preLaunchStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 348
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 367
    .restart local v3    # "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 379
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v8    # "preLaunchStr":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 380
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 387
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "multidexEnable":Z
    :cond_7
    iget-object v9, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    goto/16 :goto_1

    .line 395
    :catch_3
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "atlas initialization fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 415
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 416
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_2
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v6

    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6, v7}, Lc8/Lz;->startRegisterReceivers(Landroid/content/Context;)V

    .line 424
    iget-object v6, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iget-object v7, p0, Lc8/Vx;->mRealApplicationName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    iput-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    .line 426
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "activityThread":Ljava/lang/Object;
    sget-object v6, Lc8/xy;->ContextImpl_setOuterContext:Lc8/Dy;

    iget-object v7, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v6, Lc8/xy;->ContextImpl_mPackageInfo:Lc8/Cy;

    iget-object v7, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 431
    .local v5, "mPackageInfo":Ljava/lang/Object;
    sget-object v6, Lc8/xy;->LoadedApk_mApplication:Lc8/Cy;

    iget-object v7, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v6, v5, v7}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    sget-object v6, Lc8/xy;->ActivityThread_mInitialApplication:Lc8/Cy;

    iget-object v7, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v6, v0, v7}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    sget-object v6, Lc8/xy;->ActivityThread_mAllApplications:Lc8/Cy;

    invoke-virtual {v6, v0}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 436
    .local v1, "allApplications":Ljava/util/List;, "Ljava/util/List<Landroid/app/Application;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 437
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    if-ne v6, v7, :cond_0

    .line 439
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    invoke-interface {v1, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    sput-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 447
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    new-instance v7, Lc8/Ux;

    invoke-direct {v7, p0}, Lc8/Ux;-><init>(Lc8/Vx;)V

    invoke-virtual {v6, v7}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 476
    sget-object v6, Lc8/xy;->Application_attach:Lc8/Dy;

    iget-object v7, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Vx;->mRawApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v6, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 479
    sget-object v6, Lc8/xy;->ActivityThread_mBoundApplication:Lc8/Cy;

    invoke-virtual {v6, v0}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 480
    .local v4, "mBoundApplication":Ljava/lang/Object;
    sget-object v6, Lc8/xy;->ActivityThread$AppBindData_providers:Lc8/Cy;

    iget-object v7, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    invoke-virtual {v6, v4, v7}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    sget-object v6, Lc8/xy;->ActivityThread_installContentProviders:Lc8/Dy;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lc8/Vx;->mBoundApplication_provider:Ljava/util/List;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v4    # "mBoundApplication":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    instance-of v6, v6, Lc8/eB;

    if-eqz v6, :cond_3

    .line 489
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    check-cast v6, Lc8/eB;

    invoke-static {v6}, Lc8/hB;->setExternalMonitor(Lc8/eB;)V

    .line 492
    :cond_3
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    instance-of v6, v6, Lc8/cB;

    if-eqz v6, :cond_4

    .line 493
    invoke-static {}, Lc8/fB;->getInstance()Lc8/fB;

    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    check-cast v6, Lc8/cB;

    invoke-static {v6}, Lc8/fB;->setExternalAlarmer(Lc8/cB;)V

    .line 496
    :cond_4
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v6

    iget-object v7, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    iget-boolean v8, p0, Lc8/Vx;->mIsUpdated:Z

    invoke-virtual {v6, v7, v8}, Lc8/dy;->startup(Landroid/app/Application;Z)V

    .line 498
    iget-object v6, p0, Lc8/Vx;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->onCreate()V

    .line 499
    return-void

    .line 484
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v1    # "allApplications":Ljava/util/List;, "Ljava/util/List<Landroid/app/Application;>;"
    .end local v3    # "i":I
    .end local v5    # "mPackageInfo":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
