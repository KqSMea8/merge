.class public Lc8/dNf;
.super Ljava/lang/Object;
.source "MtopListenerProxyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMtopListenerProxy(Lc8/GMf;Lc8/QNp;)Lc8/QNp;
    .locals 4
    .param p0, "mtopBusiness"    # Lc8/GMf;
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    const-class v2, Lc8/JNp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    instance-of v2, p1, Lc8/EMf;

    if-eqz v2, :cond_0

    .line 28
    const-class v2, Lc8/LNp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v2, Lc8/KNp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    instance-of v2, p1, Lc8/BMf;

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/GMf;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v2, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    if-eqz v2, :cond_2

    .line 33
    :cond_1
    const-class v2, Lc8/INp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Class;

    .line 37
    .local v1, "classes":[Ljava/lang/Class;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "classes":[Ljava/lang/Class;
    check-cast v1, [Ljava/lang/Class;

    .line 39
    .restart local v1    # "classes":[Ljava/lang/Class;
    const-class v2, Lc8/QNp;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lc8/ZMf;

    invoke-direct {v3, p0, p1}, Lc8/ZMf;-><init>(Lc8/GMf;Lc8/QNp;)V

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/QNp;

    return-object v2
.end method
