.class public Lc8/Dco;
.super Ljava/lang/Object;
.source "ActionProxy.java"


# instance fields
.field private action:Lc8/Cco;

.field private bridgeMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Cco;)V
    .locals 1
    .param p1, "action"    # Lc8/Cco;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Dco;->bridgeMaps:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lc8/Dco;->action:Lc8/Cco;

    .line 23
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

.method private initMethods()V
    .locals 7

    .prologue
    .line 30
    iget-object v6, p0, Lc8/Dco;->action:Lc8/Cco;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 31
    .local v5, "ownerClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 32
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 33
    aget-object v2, v4, v1

    .line 35
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v6, Lc8/Fco;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 36
    .local v0, "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 37
    check-cast v0, Lc8/Fco;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/Fco;->value()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "methodName":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lc8/Dco;->bridgeMaps:Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "methodName":Ljava/lang/String;
    .restart local v0    # "annos":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "methodName":Ljava/lang/String;
    goto :goto_1

    .line 43
    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public invokeMethod(Lc8/Jco;)Z
    .locals 8
    .param p1, "request"    # Lc8/Jco;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 49
    iget-object v5, p0, Lc8/Dco;->bridgeMaps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-direct {p0}, Lc8/Dco;->initMethods()V

    .line 52
    :cond_0
    invoke-virtual {p1}, Lc8/Jco;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "methodName":Ljava/lang/String;
    iget-object v5, p0, Lc8/Dco;->bridgeMaps:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 54
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 77
    :goto_0
    return v3

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 60
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    array-length v5, v2

    if-nez v5, :cond_3

    .line 62
    :cond_2
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    iget-object v5, p0, Lc8/Dco;->action:Lc8/Cco;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lc8/Dco;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 64
    goto :goto_0

    .line 70
    :cond_3
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    iget-object v5, p0, Lc8/Dco;->action:Lc8/Cco;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v0, v5, v6}, Lc8/Dco;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 72
    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 67
    :catch_1
    move-exception v4

    goto :goto_0
.end method
