.class public Lc8/tz;
.super Ljava/lang/Object;
.source "PackageManagerDelegate.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManagerProxyhandler"
.end annotation


# instance fields
.field private mPm:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pm"    # Ljava/lang/Object;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lc8/tz;->mPm:Ljava/lang/Object;

    .line 270
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


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v10, 0x18

    const/4 v9, 0x0

    .line 275
    :try_start_0
    iget-object v7, p0, Lc8/tz;->mPm:Ljava/lang/Object;

    invoke-static {p2, v7, p3}, Lc8/tz;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 279
    .local v6, "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "getPackageInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, p3, v9

    if-eqz v7, :cond_2

    aget-object v7, p3, v9

    invoke-static {}, Lc8/uz;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v6

    .line 280
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 281
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 282
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "can not get packageInfo"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 276
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    throw v7

    .line 284
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v7

    invoke-virtual {v7}, Lc8/iB;->currentVersionName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "baselineVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 286
    iput-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v6, v2

    .line 374
    .end local v0    # "baselineVersion":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v6

    .line 290
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "queryIntentActivities"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    aget-object v5, p3, v9

    check-cast v5, Landroid/content/Intent;

    .line 292
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/Nz;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 294
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_3

    .line 295
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-direct {v6, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto :goto_0

    .restart local v6    # "object":Ljava/lang/Object;
    :cond_3
    move-object v6, v3

    .line 297
    goto :goto_0

    .line 301
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "getActivityInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Landroid/content/ComponentName;

    const-class v9, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v7, v9}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 303
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 304
    goto :goto_0

    .line 307
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "resolveIntent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 308
    aget-object v5, p3, v9

    check-cast v5, Landroid/content/Intent;

    .line 309
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/Nz;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 310
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 311
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 314
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "queryIntentServices"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 315
    aget-object v5, p3, v9

    check-cast v5, Landroid/content/Intent;

    .line 316
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/Nz;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 317
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 318
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_7

    .line 319
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-direct {v6, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .restart local v6    # "object":Ljava/lang/Object;
    :cond_7
    move-object v6, v3

    .line 321
    goto/16 :goto_0

    .line 325
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "getServiceInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 326
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Landroid/content/ComponentName;

    const-class v9, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8, v7, v9}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 327
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 328
    goto/16 :goto_0

    .line 331
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    :cond_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "resolveService"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 332
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {v8, v7}, Lc8/Nz;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 333
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 334
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 337
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "getReceiverInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 338
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v8, v7}, Lc8/Nz;->getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 339
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 340
    goto/16 :goto_0

    .line 343
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "queryBroadcastReceivers"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 344
    aget-object v5, p3, v9

    check-cast v5, Landroid/content/Intent;

    .line 345
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/Nz;->queryIntentReceivers(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 346
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    .line 347
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_c

    .line 348
    check-cast v6, Landroid/content/pm/ParceledListSlice;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 350
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_c
    check-cast v6, Ljava/util/List;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 354
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "queryContentProviders"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 355
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lc8/Nz;->queryContentProviders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 356
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v4, :cond_1

    .line 359
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_e

    .line 360
    check-cast v6, Ljava/util/List;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v4

    .line 361
    goto/16 :goto_0

    .restart local v6    # "object":Ljava/lang/Object;
    :cond_e
    move-object v7, v6

    .line 363
    check-cast v7, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 367
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "getProviderInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 368
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v8

    aget-object v7, p3, v9

    check-cast v7, Landroid/content/ComponentName;

    const-class v9, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v8, v7, v9}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 369
    .local v2, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 370
    goto/16 :goto_0
.end method
