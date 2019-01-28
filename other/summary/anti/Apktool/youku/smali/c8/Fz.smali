.class public Lc8/Fz;
.super Ljava/lang/Object;
.source "ServiceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ez;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_SERVICE:Ljava/lang/String; = "atlas_external_service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lc8/Ez;

    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Lc8/Fz;->prepareServiceBundle(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;

    move-result-object v0

    return-object v0
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 336
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 339
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 358
    .end local p1    # "implicitIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object p1

    .line 344
    .restart local p1    # "implicitIntent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 345
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 346
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 347
    .local v0, "className":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 354
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v2

    .line 356
    goto :goto_0
.end method

.method public static findComponent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 368
    .local v0, "componentName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 371
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 372
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_0

    .line 373
    instance-of v3, v2, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;

    if-eqz v3, :cond_0

    .line 375
    const-string/jumbo v3, "atlas_external_service"

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    :cond_0
    :goto_0
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lc8/aB;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 396
    .end local v0    # "componentName":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 379
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "componentName":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 380
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 382
    instance-of v3, v2, Landroid/taobao/atlas/runtime/newcomponent/AdditionalPackageManager$ExternalResolverInfo;

    if-eqz v3, :cond_3

    .line 384
    const-string/jumbo v3, "atlas_external_service"

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isClassExistInMaindex(Ljava/lang/String;)Z
    .locals 3
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 311
    :try_start_0
    invoke-static {}, Lc8/py;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x1

    .line 318
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static prepareServiceBundle(Landroid/content/Intent;I)Lc8/Ez;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "retryCount"    # I

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/Fz;->prepareServiceBundle(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;

    move-result-object v0

    return-object v0
.end method

.method private static prepareServiceBundle(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;
    .locals 7
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "retryCount"    # I
    .param p2, "result"    # Lc8/Ez;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 256
    if-eqz p0, :cond_5

    .line 257
    invoke-static {p0}, Lc8/Fz;->findComponent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    invoke-static {v6, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    .line 291
    .end local v1    # "componentName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 261
    .restart local v1    # "componentName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    invoke-static {v1}, Lc8/Fz;->isClassExistInMaindex(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-static {v6, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v5, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    goto :goto_0

    .line 269
    :cond_2
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 270
    .local v2, "impl":Lc8/hy;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lc8/hy;->checkValidate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    invoke-static {v6, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    goto :goto_0

    .line 273
    :cond_3
    if-lez p1, :cond_4

    .line 274
    const/4 v4, 0x0

    invoke-static {v4, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    .line 275
    .local v3, "newResult":Lc8/Ez;
    new-instance v4, Lc8/Cz;

    invoke-direct {v4, p1, p0, v3}, Lc8/Cz;-><init>(ILandroid/content/Intent;Lc8/Ez;)V

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lc8/Vy;->checkBundleStateAsync(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 285
    .end local v3    # "newResult":Lc8/Ez;
    :cond_4
    invoke-static {v5, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    .line 286
    .restart local v3    # "newResult":Lc8/Ez;
    goto :goto_0

    .line 291
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "componentName":Ljava/lang/String;
    .end local v2    # "impl":Lc8/hy;
    .end local v3    # "newResult":Lc8/Ez;
    :cond_5
    invoke-static {v5, p2}, Lc8/Fz;->updateResult(ILc8/Ez;)Lc8/Ez;

    move-result-object v3

    goto :goto_0
.end method

.method private static updateResult(ILc8/Ez;)Lc8/Ez;
    .locals 1
    .param p0, "resultCode"    # I
    .param p1, "result"    # Lc8/Ez;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    iget-object v0, p1, Lc8/Ez;->mListener:Lc8/Dz;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p1, Lc8/Ez;->mListener:Lc8/Dz;

    invoke-interface {v0, p0}, Lc8/Dz;->onPrepared(I)V

    .line 298
    :cond_0
    if-nez p1, :cond_1

    .line 299
    new-instance p1, Lc8/Ez;

    .end local p1    # "result":Lc8/Ez;
    invoke-direct {p1}, Lc8/Ez;-><init>()V

    .line 301
    .restart local p1    # "result":Lc8/Ez;
    :cond_1
    iput p0, p1, Lc8/Ez;->resultCode:I

    .line 302
    return-object p1
.end method
