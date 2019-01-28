.class public Lc8/zpb;
.super Ljava/lang/Object;
.source "WXIExternalModuleGetter.java"

# interfaces
.implements Lc8/qag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    .locals 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lc8/MXf;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 19
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    if-eqz v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 20
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v5, "intent":Landroid/content/Intent;
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 23
    .local v4, "infos":Ljava/util/List;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 24
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 25
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_0

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 27
    :try_start_0
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lc8/Yy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 28
    .local v2, "e":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qag;

    .line 29
    .local v0, "bundleService":Lc8/qag;
    invoke-interface {v0, p1, p2}, Lc8/qag;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 31
    .local v1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    :try_start_1
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v12}, Lc8/dy;->requestRuntimeDependency(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .end local v0    # "bundleService":Lc8/qag;
    .end local v1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    .end local v2    # "e":Ljava/lang/Class;
    .end local v4    # "infos":Ljava/util/List;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v1

    .line 32
    .restart local v0    # "bundleService":Lc8/qag;
    .restart local v1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    .restart local v2    # "e":Ljava/lang/Class;
    .restart local v4    # "infos":Ljava/util/List;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 33
    .local v3, "exp":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 37
    .end local v0    # "bundleService":Lc8/qag;
    .end local v1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    .end local v2    # "e":Ljava/lang/Class;
    .end local v3    # "exp":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 38
    .local v7, "var7":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v9

    .line 39
    goto :goto_0

    .end local v4    # "infos":Ljava/util/List;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "var7":Ljava/lang/Throwable;
    :cond_0
    move-object v1, v9

    .line 44
    goto :goto_0
.end method
