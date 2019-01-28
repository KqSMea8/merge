.class public Lc8/gz;
.super Ljava/lang/Object;
.source "FrameworkLifecycleHandler.java"

# interfaces
.implements Lc8/Weq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private started()V
    .locals 6

    .prologue
    .line 296
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v2, Lc8/Jy;

    invoke-direct {v2}, Lc8/Jy;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 297
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v2, Lc8/dz;

    invoke-direct {v2, p0}, Lc8/dz;-><init>(Lc8/gz;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 326
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string/jumbo v1, "autoStartBundles"

    invoke-static {v1}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getFrameworkProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "autoStartBundle":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 329
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lc8/fz;

    invoke-direct {v2, p0, v0}, Lc8/fz;-><init>(Lc8/gz;Ljava/lang/String;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    .end local v0    # "autoStartBundle":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private starting()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 255
    sget-boolean v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->safeMode:Z

    if-eqz v9, :cond_0

    .line 293
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v9

    const-string/jumbo v10, "com.taobao.maindex"

    invoke-virtual {v9, v10}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 260
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    .line 263
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    const/4 v6, 0x0

    .line 266
    .local v6, "metaData":Landroid/os/Bundle;
    :try_start_0
    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 268
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v6, :cond_4

    .line 274
    const-string/jumbo v9, "application"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "strApps":Ljava/lang/String;
    invoke-static {v7}, Lc8/aB;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 276
    const-string/jumbo v9, ","

    invoke-static {v7, v9}, Lc8/aB;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "appClassNames":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v9, v2

    if-nez v9, :cond_3

    .line 278
    :cond_2
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .end local v2    # "appClassNames":[Ljava/lang/String;
    aput-object v7, v2, v8

    .line 280
    .restart local v2    # "appClassNames":[Ljava/lang/String;
    :cond_3
    array-length v9, v2

    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v1, v2, v8

    .line 283
    .local v1, "appClassName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/py;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 282
    invoke-static {v1, v10}, Lc8/Sy;->newApplication(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/app/Application;

    move-result-object v0

    .line 284
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .end local v0    # "app":Landroid/app/Application;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 269
    .end local v1    # "appClassName":Ljava/lang/String;
    .end local v2    # "appClassNames":[Ljava/lang/String;
    .end local v7    # "strApps":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 270
    .local v5, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v5    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appClassName":Ljava/lang/String;
    .restart local v2    # "appClassNames":[Ljava/lang/String;
    .restart local v7    # "strApps":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 286
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 292
    .end local v1    # "appClassName":Ljava/lang/String;
    .end local v2    # "appClassNames":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "strApps":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0
.end method


# virtual methods
.method public frameworkEvent(Lc8/Veq;)V
    .locals 1
    .param p1, "event"    # Lc8/Veq;

    .prologue
    .line 240
    invoke-virtual {p1}, Lc8/Veq;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lc8/gz;->starting()V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-direct {p0}, Lc8/gz;->started()V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
