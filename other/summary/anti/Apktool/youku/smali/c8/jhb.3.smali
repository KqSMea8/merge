.class public Lc8/jhb;
.super Ljava/lang/Object;
.source "ProxyEnabledServiceRegistryDelegator.java"

# interfaces
.implements Lc8/ehb;


# instance fields
.field private delegator:Lc8/ehb;


# direct methods
.method public constructor <init>(Lc8/ehb;)V
    .locals 0
    .param p1, "delegator"    # Lc8/ehb;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/jhb;->delegator:Lc8/ehb;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lc8/jhb;)Lc8/ehb;
    .locals 1
    .param p0, "x0"    # Lc8/jhb;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/jhb;->delegator:Lc8/ehb;

    return-object v0
.end method


# virtual methods
.method public getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "filterProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/jhb;->delegator:Lc8/ehb;

    invoke-interface {v1, p1, p2}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "service":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 33
    const-string/jumbo v1, "$isv_scope$"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lc8/ihb;

    invoke-direct {v3, p0, p1, p2}, Lc8/ihb;-><init>(Lc8/jhb;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method public getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "filterProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/jhb;->delegator:Lc8/ehb;

    invoke-interface {v0, p1, p2}, Lc8/ehb;->getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;
    .locals 1
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/dhb;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/jhb;->delegator:Lc8/ehb;

    invoke-interface {v0, p1, p2, p3}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    move-result-object v0

    return-object v0
.end method

.method public unregisterService(Lc8/dhb;)Ljava/lang/Object;
    .locals 1
    .param p1, "registration"    # Lc8/dhb;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/jhb;->delegator:Lc8/ehb;

    invoke-interface {v0, p1}, Lc8/ehb;->unregisterService(Lc8/dhb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
