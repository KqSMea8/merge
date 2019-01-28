.class public Lc8/ZMf;
.super Ljava/lang/Object;
.source "DynamicProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private cacheListener:Lc8/bNf;

.field private finishListener:Lc8/cNf;

.field private listener:Lc8/QNp;

.field private mtopBusiness:Lc8/GMf;

.field private progressListener:Lc8/eNf;


# direct methods
.method public constructor <init>(Lc8/GMf;Lc8/QNp;)V
    .locals 1
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/QNp;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lc8/cNf;

    invoke-direct {v0, p1, p2}, Lc8/cNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    iput-object v0, p0, Lc8/ZMf;->finishListener:Lc8/cNf;

    .line 24
    iput-object p1, p0, Lc8/ZMf;->mtopBusiness:Lc8/GMf;

    .line 25
    iput-object p2, p0, Lc8/ZMf;->listener:Lc8/QNp;

    .line 26
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

.method private getCacheListener()Lc8/bNf;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lc8/ZMf;->cacheListener:Lc8/bNf;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lc8/bNf;

    iget-object v1, p0, Lc8/ZMf;->mtopBusiness:Lc8/GMf;

    iget-object v2, p0, Lc8/ZMf;->listener:Lc8/QNp;

    invoke-direct {v0, v1, v2}, Lc8/bNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    iput-object v0, p0, Lc8/ZMf;->cacheListener:Lc8/bNf;

    .line 39
    :cond_0
    iget-object v0, p0, Lc8/ZMf;->cacheListener:Lc8/bNf;

    return-object v0
.end method

.method private getProgressListener()Lc8/eNf;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lc8/ZMf;->progressListener:Lc8/eNf;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/eNf;

    iget-object v1, p0, Lc8/ZMf;->mtopBusiness:Lc8/GMf;

    iget-object v2, p0, Lc8/ZMf;->listener:Lc8/QNp;

    invoke-direct {v0, v1, v2}, Lc8/eNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    iput-object v0, p0, Lc8/ZMf;->progressListener:Lc8/eNf;

    .line 32
    :cond_0
    iget-object v0, p0, Lc8/ZMf;->progressListener:Lc8/eNf;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/ZMf;->finishListener:Lc8/cNf;

    invoke-static {p2, v0, p3}, Lc8/ZMf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDataReceived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_1
    invoke-direct {p0}, Lc8/ZMf;->getProgressListener()Lc8/eNf;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lc8/ZMf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCached"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-direct {p0}, Lc8/ZMf;->getCacheListener()Lc8/bNf;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lc8/ZMf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
