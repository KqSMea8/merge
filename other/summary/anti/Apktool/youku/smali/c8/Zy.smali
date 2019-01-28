.class public Lc8/Zy;
.super Ljava/lang/Object;
.source "DelegateResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetManagerProcessor"
.end annotation


# static fields
.field private static sDefaultAssetPathList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sWebviewPath:Ljava/lang/String;


# instance fields
.field private assetPathCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasCreatedAssetsManager:Z

.field private preAssetPathCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 471
    :try_start_0
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 472
    .local v1, "manager":Landroid/content/res/AssetManager;
    invoke-static {v1}, Lc8/Zy;->getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    .local v0, "defaultPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 474
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "path":Ljava/lang/String;
    sget-object v4, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v0    # "defaultPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    sget-object v3, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 481
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    .line 631
    :cond_0
    :goto_1
    const/4 v3, 0x0

    sput-object v3, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    return-void

    .line 480
    .restart local v0    # "defaultPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v3, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 481
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    goto :goto_1

    .line 480
    .end local v0    # "defaultPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 481
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    :cond_2
    throw v3
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object v0, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    .line 486
    iput-object v0, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Zy;->hasCreatedAssetsManager:Z

    .line 489
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    .line 490
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    .line 491
    iget-object v0, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
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

.method private addAssetPathInternal(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "asset"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 784
    if-eqz p3, :cond_0

    .line 786
    sget-object v0, Lc8/xy;->AssetManager_addAssetPathAsSharedLibrary:Lc8/Dy;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 788
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/xy;->AssetManager_addAssetPath:Lc8/Dy;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "asset"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v3, 0x0

    .line 760
    .local v3, "result":Z
    invoke-direct {p0, p1, p2, p3}, Lc8/Zy;->addAssetPathInternal(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I

    move-result v0

    .local v0, "cookie":I
    if-nez v0, :cond_0

    .line 763
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 764
    invoke-direct {p0, p1, p2, p3}, Lc8/Zy;->addAssetPathInternal(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 763
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .end local v2    # "i":I
    :cond_0
    if-nez v0, :cond_2

    .line 771
    invoke-static {}, Lc8/cz;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :goto_1
    if-nez v3, :cond_1

    .line 776
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v1, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "appendAssetPath"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v4

    const-string/jumbo v5, "container_append_assetpath_fail"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4, v5, v1, v6}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 780
    .end local v1    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return v3

    .line 773
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;
    .locals 13
    .param p1, "srcManager"    # Landroid/content/res/AssetManager;
    .param p2, "newAssetPath"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 633
    const-class v10, Landroid/content/res/AssetManager;

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/AssetManager;

    .line 634
    .local v7, "newAssetManager":Landroid/content/res/AssetManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v8, "runtimeAdditionalAssets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lc8/Zy;->getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 636
    .local v2, "currentPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 637
    .local v1, "currentPath":Ljava/lang/String;
    sget-object v11, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    .line 638
    invoke-virtual {v11, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 639
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "webview"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "chrome"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 640
    :cond_1
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    .end local v1    # "currentPath":Ljava/lang/String;
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_4

    .line 646
    sget-object v10, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 648
    :try_start_0
    const-string/jumbo v10, "android.webkit.WebViewFactory"

    invoke-static {v10}, Lc8/Zy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getLoadedPackageInfo"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lc8/Zy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 649
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_3

    .line 650
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v10, Lc8/Zy;->sWebviewPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    sget-object v10, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 657
    const-string/jumbo v10, "DelegateResource"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "special webviewPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v10, Lc8/Zy;->sWebviewPath:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_4
    invoke-static {}, Lc8/cz;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 662
    if-nez p3, :cond_5

    .line 663
    const/4 v10, 0x0

    invoke-direct {p0, v7, p2, v10}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 666
    :cond_5
    iget-object v10, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    if-eqz v10, :cond_6

    .line 667
    iget-object v10, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 668
    iget-object v10, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 669
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v7, v10, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 679
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_6
    iget-object v10, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    if-eqz v10, :cond_9

    .line 680
    iget-object v10, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 681
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 682
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 683
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v10, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 684
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v7, v10, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 652
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :catch_0
    move-exception v9

    .line 653
    .local v9, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 671
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 672
    .local v4, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 673
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 674
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v7, v10, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 689
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_9
    if-eqz p3, :cond_a

    .line 690
    const/4 v10, 0x0

    invoke-direct {p0, v7, p2, v10}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 694
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 695
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    .local v0, "additional":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    if-ge v11, v12, :cond_b

    .line 697
    const/4 v11, 0x0

    invoke-direct {p0, v7, v0, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 699
    :cond_b
    const/4 v11, 0x1

    invoke-direct {p0, v7, v0, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 707
    .end local v0    # "additional":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 708
    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, v7, v10, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 712
    :cond_d
    return-object v7
.end method

.method public static getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v0, "assetPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getStringBlockCount"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 796
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 797
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, p0, v6}, Lc8/Zy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 798
    .local v2, "assetsPathCount":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 800
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getCookieName"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, p0, v7}, Lc8/Zy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    .local v1, "assetsPath":Ljava/lang/String;
    sget-object v6, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lc8/Zy;->sDefaultAssetPathList:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 802
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 805
    .end local v1    # "assetsPath":Ljava/lang/String;
    .end local v2    # "assetsPathCount":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "x":I
    :catch_0
    move-exception v3

    .line 806
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 808
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    return-object v0
.end method

.method private supportAddAssetPathNative()Z
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lc8/xy;->AssetManager_addAssetPathNative:Lc8/Dy;

    if-nez v0, :cond_0

    sget-object v0, Lc8/xy;->AssetManager_addAssetPathNative24:Lc8/Dy;

    if-nez v0, :cond_0

    sget-object v0, Lc8/xy;->AssetManager_addAssetPathNativeSamSung:Lc8/Dy;

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized supportExpandAssetManager()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 717
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/Zy;->hasCreatedAssetsManager:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "sony"

    .line 718
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "semc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "xiaomi"

    .line 719
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mibox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Zy;->hasCreatedAssetsManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    const/4 v0, 0x0

    .line 723
    :cond_1
    monitor-exit p0

    return v0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAssetManagerWithAppend(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/content/res/AssetManager;
    .locals 18
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .param p2, "newAssetPath"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    monitor-enter p1

    .line 563
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    .line 564
    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 568
    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 569
    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lc8/Zy;->appendAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Z

    .line 618
    :cond_0
    :goto_0
    monitor-exit p1

    .line 620
    return-object p1

    .line 572
    :cond_1
    const/4 v9, 0x2

    .line 575
    .local v9, "retryCount":I
    :cond_2
    add-int/lit8 v9, v9, -0x1

    .line 577
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative:Lc8/Dy;

    if-eqz v11, :cond_4

    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative:Lc8/Dy;

    invoke-virtual {v11}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 578
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative:Lc8/Dy;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 586
    .local v3, "cookie":I
    :goto_1
    if-gtz v3, :cond_3

    .line 589
    if-gtz v9, :cond_2

    .line 590
    :cond_3
    if-lez v3, :cond_9

    .line 592
    sget-object v11, Lc8/xy;->AssetManager_mStringBlocks:Lc8/Cy;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 593
    .local v6, "mStringBlocks":[Ljava/lang/Object;
    array-length v10, v6

    .line 596
    .local v10, "seedNum":I
    sget-object v11, Lc8/xy;->AssetManager_getStringBlockCount:Lc8/Dy;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 599
    .local v8, "num":I
    sget-object v11, Lc8/xy;->StringBlock:Lc8/Ay;

    invoke-virtual {v11}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 600
    .local v7, "newStringBlockList":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v8, :cond_8

    .line 601
    if-ge v5, v10, :cond_7

    .line 602
    aget-object v11, v6, v5

    invoke-static {v7, v5, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 600
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 579
    .end local v3    # "cookie":I
    .end local v5    # "i":I
    .end local v6    # "mStringBlocks":[Ljava/lang/Object;
    .end local v7    # "newStringBlockList":Ljava/lang/Object;
    .end local v8    # "num":I
    .end local v10    # "seedNum":I
    :cond_4
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative24:Lc8/Dy;

    if-eqz v11, :cond_5

    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative24:Lc8/Dy;

    invoke-virtual {v11}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 580
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNative24:Lc8/Dy;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "cookie":I
    goto :goto_1

    .line 581
    .end local v3    # "cookie":I
    :cond_5
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNativeSamSung:Lc8/Dy;

    if-eqz v11, :cond_6

    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNativeSamSung:Lc8/Dy;

    invoke-virtual {v11}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 582
    sget-object v11, Lc8/xy;->AssetManager_addAssetPathNativeSamSung:Lc8/Dy;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "cookie":I
    goto/16 :goto_1

    .line 584
    .end local v3    # "cookie":I
    :cond_6
    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "no valid addassetpathnative method"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 618
    .end local v9    # "retryCount":I
    :catchall_0
    move-exception v11

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 604
    .restart local v3    # "cookie":I
    .restart local v5    # "i":I
    .restart local v6    # "mStringBlocks":[Ljava/lang/Object;
    .restart local v7    # "newStringBlockList":Ljava/lang/Object;
    .restart local v8    # "num":I
    .restart local v9    # "retryCount":I
    .restart local v10    # "seedNum":I
    :cond_7
    :try_start_1
    sget-object v11, Lc8/xy;->StringBlock_constructor:Lc8/By;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, Lc8/xy;->AssetManager_getNativeStringBlock:Lc8/Dy;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 605
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    .line 604
    invoke-virtual {v11, v12}, Lc8/By;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v5, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 610
    :cond_8
    sget-object v11, Lc8/xy;->AssetManager_mStringBlocks:Lc8/Cy;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 612
    .end local v5    # "i":I
    .end local v6    # "mStringBlocks":[Ljava/lang/Object;
    .end local v7    # "newStringBlockList":Ljava/lang/Object;
    .end local v8    # "num":I
    .end local v10    # "seedNum":I
    :cond_9
    invoke-static {}, Lc8/cz;->access$300()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 614
    .local v4, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v11, "appendAssetPath"

    move-object/from16 v0, p2

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v11

    const-string/jumbo v12, "container_append_assetpath_fail"

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v11, v12, v4, v13}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private updateAssetPathList(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "newAssetPath"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 737
    if-eqz p2, :cond_0

    .line 738
    iget-object v0, p0, Lc8/Zy;->assetPathCache:Ljava/util/LinkedHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :goto_0
    invoke-static {}, Lc8/cz;->access$400()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 745
    invoke-static {}, Lc8/cz;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lc8/cz;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "maindex arsc inject fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iget-object v0, p0, Lc8/Zy;->preAssetPathCache:Ljava/util/LinkedHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 748
    :cond_1
    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 749
    invoke-static {}, Lc8/cz;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lc8/cz;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "maindex assets inject fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentAssetPath(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Landroid/content/res/AssetManager;
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
    .line 539
    invoke-static {}, Lc8/cz;->access$200()Lc8/Zy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/cz;->access$200()Lc8/Zy;

    invoke-static {p1}, Lc8/Zy;->getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentAssetPathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 6
    .param p1, "target"    # Landroid/content/res/AssetManager;

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    const-string/jumbo v3, ""

    .line 558
    :goto_0
    return-object v3

    .line 549
    :cond_0
    invoke-static {p1}, Lc8/Zy;->getAssetPath(Landroid/content/res/AssetManager;)Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    .local v0, "currentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 551
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "newDelegateResources ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    if-eqz v0, :cond_1

    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 554
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 557
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public updateAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/content/res/AssetManager;
    .locals 7
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .param p2, "newAssetPath"    # Ljava/lang/String;
    .param p3, "assetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 496
    if-nez p3, :cond_1

    .line 497
    invoke-direct {p0}, Lc8/Zy;->supportExpandAssetManager()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lc8/Zy;->updateAssetManagerWithAppend(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    .local v2, "targetManager":Landroid/content/res/AssetManager;
    :goto_0
    invoke-direct {p0, p2, v6}, Lc8/Zy;->updateAssetPathList(Ljava/lang/String;Z)V

    .line 534
    :goto_1
    return-object v2

    .line 500
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 502
    const-string/jumbo v3, "DelegateResources"

    const-string/jumbo v4, "walkround to createNewAssetmanager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p1, p2, v6, v5}, Lc8/Zy;->createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;

    move-result-object v2

    .line 504
    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    goto :goto_0

    .line 506
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :cond_0
    invoke-direct {p0, p1, p2, v6, v5}, Lc8/Zy;->createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;

    move-result-object v2

    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    goto :goto_0

    .line 510
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "newAssets"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v1, "newAssetsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "assets"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/cz;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    :cond_2
    invoke-direct {p0}, Lc8/Zy;->supportExpandAssetManager()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    invoke-static {}, Lc8/cz;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    invoke-direct {p0, p1, p2, p3}, Lc8/Zy;->updateAssetManagerWithAppend(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/content/res/AssetManager;

    move-result-object v2

    .line 517
    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, p2, v6}, Lc8/Zy;->updateAssetPathList(Ljava/lang/String;Z)V

    goto :goto_1

    .line 519
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :cond_3
    invoke-direct {p0, p1, p2, v5, p3}, Lc8/Zy;->createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;

    move-result-object v2

    .line 520
    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, p2, v5}, Lc8/Zy;->updateAssetPathList(Ljava/lang/String;Z)V

    goto :goto_1

    .line 523
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :cond_4
    invoke-static {}, Lc8/cz;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 524
    invoke-direct {p0, p1, p2, v6, p3}, Lc8/Zy;->createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;

    move-result-object v2

    .line 525
    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, p2, v6}, Lc8/Zy;->updateAssetPathList(Ljava/lang/String;Z)V

    goto :goto_1

    .line 527
    .end local v2    # "targetManager":Landroid/content/res/AssetManager;
    :cond_5
    invoke-direct {p0, p1, p2, v5, p3}, Lc8/Zy;->createNewAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Landroid/content/res/AssetManager;

    move-result-object v2

    .line 528
    .restart local v2    # "targetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, p2, v5}, Lc8/Zy;->updateAssetPathList(Ljava/lang/String;Z)V

    goto :goto_1
.end method
