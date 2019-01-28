.class public Lc8/WVo;
.super Lc8/aVf;
.source "ExternalLoaderModuleFactory.java"


# instance fields
.field private final mClzGetter:Lc8/qag;

.field private final mMethods:[Ljava/lang/String;

.field private mModuleClass:Ljava/lang/Class;

.field private mModuleMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DWf;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "methods"    # [Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lc8/zpb;

    invoke-direct {v0}, Lc8/zpb;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lc8/WVo;-><init>(Ljava/lang/String;[Ljava/lang/String;Lc8/qag;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lc8/qag;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "methods"    # [Ljava/lang/String;
    .param p3, "clzGetter"    # Lc8/qag;

    .prologue
    .line 45
    const-class v0, Lc8/EXo;

    invoke-direct {p0, v0}, Lc8/aVf;-><init>(Ljava/lang/Class;)V

    .line 46
    iput-object p3, p0, Lc8/WVo;->mClzGetter:Lc8/qag;

    .line 47
    iput-object p1, p0, Lc8/WVo;->mType:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lc8/WVo;->mMethods:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method private generateMethodMap()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const-string/jumbo v7, "ExternalLoaderModuleFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "extractMethodNames:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/WVo;->mModuleClass:Ljava/lang/Class;

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v5, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    iget-object v7, p0, Lc8/WVo;->mModuleClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v3, v10, v9

    .line 59
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    array-length v13, v12

    move v7, v8

    :goto_1
    if-ge v7, v13, :cond_1

    aget-object v1, v12, v7

    .line 60
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_5

    .line 61
    instance-of v14, v1, Lc8/KVf;

    if-eqz v14, :cond_3

    .line 62
    move-object v0, v1

    check-cast v0, Lc8/KVf;

    move-object v4, v0

    .line 63
    .local v4, "methodAnnotation":Lc8/KVf;
    const-string/jumbo v7, "_"

    invoke-interface {v4}, Lc8/KVf;->alias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "name":Ljava/lang/String;
    :goto_2
    new-instance v7, Lc8/GWf;

    invoke-interface {v4}, Lc8/KVf;->uiThread()Z

    move-result v12

    invoke-direct {v7, v3, v12}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v4    # "methodAnnotation":Lc8/KVf;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 63
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v4    # "methodAnnotation":Lc8/KVf;
    :cond_2
    invoke-interface {v4}, Lc8/KVf;->alias()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 66
    .end local v4    # "methodAnnotation":Lc8/KVf;
    :cond_3
    instance-of v14, v1, Lc8/NXf;

    if-eqz v14, :cond_5

    .line 67
    move-object v0, v1

    check-cast v0, Lc8/NXf;

    move-object v4, v0

    .line 68
    .local v4, "methodAnnotation":Lc8/NXf;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Lc8/GWf;

    invoke-interface {v4}, Lc8/NXf;->runOnUIThread()Z

    move-result v13

    invoke-direct {v12, v3, v13}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v5, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 74
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodAnnotation":Lc8/NXf;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "[WXModuleManager] extractMethodNames:"

    invoke-static {v7, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    iput-object v5, p0, Lc8/WVo;->mModuleMethodMap:Ljava/util/Map;

    .line 78
    return-void

    .line 59
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildInstance()Lc8/MXf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lc8/WVo;->mModuleClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lc8/WVo;->mClzGetter:Lc8/qag;

    iget-object v1, p0, Lc8/WVo;->mType:Ljava/lang/String;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-interface {v0, v1, v2}, Lc8/qag;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/WVo;->mModuleClass:Ljava/lang/Class;

    .line 85
    :cond_0
    iget-object v0, p0, Lc8/WVo;->mModuleClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/MXf;

    return-object v0
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lc8/WVo;->mModuleMethodMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lc8/WVo;->generateMethodMap()V

    .line 101
    :cond_0
    iget-object v0, p0, Lc8/WVo;->mModuleMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/WVo;->mMethods:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/WVo;->mMethods:[Ljava/lang/String;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method
