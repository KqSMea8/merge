.class public Lc8/h;
.super Lc8/g;
.source "NewServiceFetcher.java"


# instance fields
.field private mOriginalFetcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "originalFetcher"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/g;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/h;->mOriginalFetcher:Ljava/lang/Object;

    .line 19
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
.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lc8/g;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 10
    .param p1, "context"    # Landroid/app/ContextImpl;

    .prologue
    .line 23
    iget-object v5, p0, Lc8/h;->mOriginalFetcher:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 25
    :try_start_0
    iget-object v5, p0, Lc8/h;->mOriginalFetcher:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/app/ContextImpl;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 26
    .local v2, "getServiceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 28
    iget-object v5, p0, Lc8/h;->mOriginalFetcher:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v2, v5, v6}, Lc8/h;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    .local v4, "serviceObject":Ljava/lang/Object;
    instance-of v5, v4, Landroid/view/LayoutInflater;

    if-eqz v5, :cond_1

    .line 30
    move-object v0, v4

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v3, v0

    .line 31
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    if-eqz v3, :cond_0

    invoke-static {}, Lc8/JPg;->newFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v2    # "getServiceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "serviceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
