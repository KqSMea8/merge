.class public Lc8/BXf;
.super Ljava/lang/Object;
.source "TypeModuleFactory.java"

# interfaces
.implements Lc8/HWf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/MXf;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/HWf",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TypeModuleFactory"


# instance fields
.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mMethodMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/BXf;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/BXf;->mClazz:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method private generateMethodMap()V
    .locals 16

    .prologue
    .line 48
    .local p0, "this":Lc8/BXf;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 49
    const-string/jumbo v13, "TypeModuleFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "extractMethodNames:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/BXf;->mClazz:Ljava/lang/Class;

    invoke-static {v15}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v11, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BXf;->mClazz:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v9, v2, v6

    .line 55
    .local v9, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v1, v3, v5

    .line 56
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_5

    .line 57
    instance-of v13, v1, Lc8/KVf;

    if-eqz v13, :cond_3

    .line 58
    move-object v0, v1

    check-cast v0, Lc8/KVf;

    move-object v10, v0

    .line 59
    .local v10, "methodAnnotation":Lc8/KVf;
    const-string/jumbo v13, "_"

    invoke-interface {v10}, Lc8/KVf;->alias()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "name":Ljava/lang/String;
    :goto_2
    new-instance v13, Lc8/GWf;

    invoke-interface {v10}, Lc8/KVf;->uiThread()Z

    move-result v14

    invoke-direct {v13, v9, v14}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v10    # "methodAnnotation":Lc8/KVf;
    .end local v12    # "name":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 59
    .end local v6    # "i$":I
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v5    # "i$":I
    .restart local v10    # "methodAnnotation":Lc8/KVf;
    :cond_2
    invoke-interface {v10}, Lc8/KVf;->alias()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 62
    .end local v10    # "methodAnnotation":Lc8/KVf;
    :cond_3
    instance-of v13, v1, Lc8/NXf;

    if-eqz v13, :cond_5

    .line 63
    move-object v0, v1

    check-cast v0, Lc8/NXf;

    move-object v10, v0

    .line 64
    .local v10, "methodAnnotation":Lc8/NXf;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lc8/GWf;

    invoke-interface {v10}, Lc8/NXf;->runOnUIThread()Z

    move-result v15

    invoke-direct {v14, v9, v15}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 70
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v3    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methodAnnotation":Lc8/NXf;
    :catch_0
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "[WXModuleManager] extractMethodNames:"

    invoke-static {v13, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v0, p0

    iput-object v11, v0, Lc8/BXf;->mMethodMap:Ljava/util/Map;

    .line 74
    return-void

    .line 55
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v3    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildInstance()Lc8/MXf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/BXf;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v0, p0, Lc8/BXf;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/MXf;

    return-object v0
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    .local p0, "this":Lc8/BXf;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v0, p0, Lc8/BXf;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lc8/BXf;->generateMethodMap()V

    .line 96
    :cond_0
    iget-object v0, p0, Lc8/BXf;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Lc8/BXf;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v1, p0, Lc8/BXf;->mMethodMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0}, Lc8/BXf;->generateMethodMap()V

    .line 87
    :cond_0
    iget-object v1, p0, Lc8/BXf;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 88
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
