.class public Lc8/Dy;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackedMethod"
.end annotation


# instance fields
.field protected final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v2, 0x0

    .line 404
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez p1, :cond_0

    .line 414
    iput-object v2, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    :goto_0
    return-void

    .line 405
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 406
    if-lez p4, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_1

    .line 407
    new-instance v3, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not match modifiers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    .line 408
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iput-object v2, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v1, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v1, v0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    .line 411
    .local v1, "hae":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    invoke-virtual {v1, p1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->setHackedClass(Ljava/lang/Class;)V

    .line 412
    invoke-virtual {v1, p2}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->setHackedMethodName(Ljava/lang/String;)V

    .line 413
    invoke-static {v1}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    iput-object v2, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "hae":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    :catchall_0
    move-exception v3

    iput-object v2, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    throw v3
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
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lc8/Dy;->mMethod:Ljava/lang/reflect/Method;

    invoke-static {v2, p1, p2}, Lc8/Dy;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 398
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 395
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
