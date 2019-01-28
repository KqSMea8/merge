.class public Lc8/Ny;
.super Lc8/Gy;
.source "ActivityManagerDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManagrHook"

.field static receiverInfos:[Landroid/content/pm/ActivityInfo;

.field public static sIntentHaveProessed:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/Ny;->sIntentHaveProessed:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lc8/Gy;-><init>()V

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

.method static synthetic access$000(Lc8/Ny;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/Ny;

    .prologue
    .line 234
    invoke-virtual {p0}, Lc8/Ny;->delegatee()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/Ny;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/Ny;

    .prologue
    .line 234
    invoke-virtual {p0}, Lc8/Ny;->delegatee()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Ny;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/Ny;

    .prologue
    .line 234
    invoke-virtual {p0}, Lc8/Ny;->delegatee()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isstaticReceiver(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    :try_start_0
    sget-object v4, Lc8/Ny;->receiverInfos:[Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    .line 384
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 386
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 387
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    sput-object v4, Lc8/Ny;->receiverInfos:[Landroid/content/pm/ActivityInfo;

    .line 390
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v4, Lc8/Ny;->receiverInfos:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    .line 391
    sget-object v5, Lc8/Ny;->receiverInfos:[Landroid/content/pm/ActivityInfo;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 392
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    return v2

    .line 391
    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    move v2, v3

    .line 397
    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "startService"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 243
    const/4 v14, 0x1

    :try_start_0
    aget-object v10, p3, v14

    check-cast v10, Landroid/content/Intent;

    .line 244
    .local v10, "intent":Landroid/content/Intent;
    sget-object v14, Lc8/Ny;->sIntentHaveProessed:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 245
    sget-object v14, Lc8/Ny;->sIntentHaveProessed:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 376
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v14

    .line 248
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v14, 0x1

    invoke-static {v10, v14}, Lc8/Fz;->prepareServiceBundle(Landroid/content/Intent;I)Lc8/Ez;

    move-result-object v12

    .line 249
    .local v12, "result":Lc8/Ez;
    iget v14, v12, Lc8/Ez;->resultCode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 250
    const-string/jumbo v14, "atlas_external_service"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 251
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v14

    invoke-virtual {v14, v10}, Lc8/Lz;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 376
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "result":Lc8/Ez;
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 253
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "result":Lc8/Ez;
    :cond_2
    :try_start_1
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 255
    :cond_3
    iget v14, v12, Lc8/Ez;->resultCode:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 256
    const/4 v14, 0x0

    goto :goto_0

    .line 258
    :cond_4
    new-instance v14, Lc8/Ky;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v14, v0, v10, v1, v2}, Lc8/Ky;-><init>(Lc8/Ny;Landroid/content/Intent;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Lc8/Ez;->setResultListener(Lc8/Dz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 274
    const/4 v14, 0x0

    goto :goto_0

    .line 277
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "result":Lc8/Ez;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "bindService"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 279
    const/4 v14, 0x2

    :try_start_2
    aget-object v10, p3, v14

    check-cast v10, Landroid/content/Intent;

    .line 280
    .restart local v10    # "intent":Landroid/content/Intent;
    sget-object v14, Lc8/Ny;->sIntentHaveProessed:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 281
    sget-object v14, Lc8/Ny;->sIntentHaveProessed:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 284
    :cond_6
    const/4 v14, 0x1

    invoke-static {v10, v14}, Lc8/Fz;->prepareServiceBundle(Landroid/content/Intent;I)Lc8/Ez;

    move-result-object v12

    .line 285
    .restart local v12    # "result":Lc8/Ez;
    iget v14, v12, Lc8/Ez;->resultCode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 286
    const-string/jumbo v14, "atlas_external_service"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 287
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v17

    const/4 v14, 0x1

    aget-object v14, p3, v14

    check-cast v14, Landroid/os/IBinder;

    const/4 v15, 0x3

    aget-object v15, p3, v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x4

    aget-object v16, p3, v16

    check-cast v16, Landroid/app/IServiceConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v10, v15, v1}, Lc8/Lz;->bindService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 289
    :cond_7
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    .line 291
    :cond_8
    iget v14, v12, Lc8/Ez;->resultCode:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 292
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 294
    :cond_9
    new-instance v14, Lc8/Ly;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v14, v0, v10, v1, v2}, Lc8/Ly;-><init>(Lc8/Ny;Landroid/content/Intent;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v12, v14}, Lc8/Ez;->setResultListener(Lc8/Dz;)V

    .line 310
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    goto/16 :goto_0

    .line 313
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "result":Lc8/Ez;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "stopService"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 314
    const/4 v14, 0x1

    aget-object v10, p3, v14

    check-cast v10, Landroid/content/Intent;

    .line 315
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v14

    invoke-virtual {v14, v10}, Lc8/Lz;->stopService(Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 316
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_0

    .line 318
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "unbindService"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 319
    const/4 v14, 0x0

    aget-object v13, p3, v14

    check-cast v13, Landroid/app/IServiceConnection;

    .line 320
    .local v13, "sd":Landroid/app/IServiceConnection;
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v14

    invoke-virtual {v14, v13}, Lc8/Lz;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 321
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_0

    .line 323
    .end local v13    # "sd":Landroid/app/IServiceConnection;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "broadcastIntent"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 325
    const/4 v14, 0x1

    :try_start_3
    aget-object v10, p3, v14

    check-cast v10, Landroid/content/Intent;

    .line 326
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 327
    sget-object v14, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v14}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 328
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_e

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v5, "bundlesToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 331
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v16, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/Ny;->isstaticReceiver(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 332
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "bundlename":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v15

    invoke-virtual {v15, v4}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v15

    if-nez v15, :cond_d

    .line 334
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .end local v4    # "bundlename":Ljava/lang/String;
    .end local v5    # "bundlesToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 358
    :cond_e
    :try_start_4
    invoke-super/range {p0 .. p3}, Lc8/Gy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    goto/16 :goto_0

    .line 338
    .restart local v5    # "bundlesToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_f
    :try_start_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_10

    .line 339
    new-instance v6, Lc8/My;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2}, Lc8/My;-><init>(Lc8/Ny;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 349
    .local v6, "finishTask":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-static {v14, v6, v6}, Lc8/Vy;->checkBundleArrayStateAsync([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 350
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 352
    .end local v6    # "finishTask":Ljava/lang/Runnable;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc8/Ny;->delegatee()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v14, v1}, Lc8/Ny;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v14

    goto/16 :goto_0

    .line 360
    .end local v5    # "bundlesToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v14

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 362
    :cond_11
    const-string/jumbo v14, "startActivity"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 364
    invoke-static {}, Lc8/wy;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    .line 365
    .local v7, "hookInstrumentation":Landroid/app/Instrumentation;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.lbe.security.service"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 366
    new-instance v14, Landroid/taobao/atlas/runtime/InstrumentationHook;

    .line 367
    invoke-static {}, Lc8/wy;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v15

    sget-object v16, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/taobao/atlas/runtime/InstrumentationHook;-><init>(Landroid/app/Instrumentation;Landroid/content/Context;)V

    .line 366
    invoke-static {v14}, Lc8/wy;->injectInstrumentationHook(Landroid/app/Instrumentation;)V

    goto/16 :goto_1

    .line 369
    .end local v7    # "hookInstrumentation":Landroid/app/Instrumentation;
    :cond_12
    const-string/jumbo v14, "getContentProvider"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 370
    const/4 v14, 0x1

    aget-object v3, p3, v14

    check-cast v3, Ljava/lang/String;

    .line 371
    .local v3, "auth":Ljava/lang/String;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v14

    invoke-virtual {v14, v3}, Lc8/Nz;->resolveContentProvider(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 372
    .local v8, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_1

    .line 373
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v14

    invoke-virtual {v14, v8}, Lc8/Lz;->getContentProvider(Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    .line 312
    .end local v3    # "auth":Ljava/lang/String;
    .end local v8    # "info":Landroid/content/pm/ProviderInfo;
    :catch_2
    move-exception v14

    goto/16 :goto_1

    .line 276
    :catch_3
    move-exception v14

    goto/16 :goto_1
.end method
