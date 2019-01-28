.class public Lc8/ihb;
.super Ljava/lang/Object;
.source "ProxyEnabledServiceRegistryDelegator.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jhb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jhb;

.field final synthetic val$filterProperties:Ljava/util/Map;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lc8/jhb;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jhb;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/ihb;->this$0:Lc8/jhb;

    iput-object p2, p0, Lc8/ihb;->val$type:Ljava/lang/Class;

    iput-object p3, p0, Lc8/ihb;->val$filterProperties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v2, p0, Lc8/ihb;->this$0:Lc8/jhb;

    invoke-static {v2}, Lc8/jhb;->access$000(Lc8/jhb;)Lc8/ehb;

    move-result-object v2

    iget-object v3, p0, Lc8/ihb;->val$type:Ljava/lang/Class;

    iget-object v4, p0, Lc8/ihb;->val$filterProperties:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "serviceInstance":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 40
    const/16 v3, 0x11

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lc8/ihb;->val$type:Ljava/lang/Class;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, p0, Lc8/ihb;->val$filterProperties:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/ihb;->val$filterProperties:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lc8/Mgb;->create(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 41
    .local v0, "message":Lc8/Mgb;
    const-string/jumbo v2, "kernel"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x0

    .line 44
    .end local v0    # "message":Lc8/Mgb;
    :goto_1
    return-object v2

    .line 40
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p2, v1, p3}, Lc8/ihb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method
