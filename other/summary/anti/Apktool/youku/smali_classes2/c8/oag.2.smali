.class public Lc8/oag;
.super Ljava/lang/Object;
.source "ExternalLoaderComponentHolder.java"

# interfaces
.implements Lc8/rag;


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private mClass:Ljava/lang/Class;

.field private final mClzGetter:Lc8/pag;

.field private mMethodInvokers:Ljava/util/Map;
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

.field private mPropertyInvokers:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Lc8/pag;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "clzGetter"    # Lc8/pag;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lc8/oag;->mClzGetter:Lc8/pag;

    .line 47
    iput-object p1, p0, Lc8/oag;->mType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private declared-synchronized generate()Z
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/oag;->mClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 62
    :goto_0
    monitor-exit p0

    return v1

    .line 59
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/oag;->mClass:Ljava/lang/Class;

    invoke-static {v1}, Lc8/vag;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    .local v0, "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lc8/oag;->mPropertyInvokers:Ljava/util/Map;

    .line 61
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lc8/oag;->mMethodInvokers:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 4
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/oag;->mClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lc8/oag;->mClzGetter:Lc8/pag;

    iget-object v3, p0, Lc8/oag;->mType:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lc8/pag;->getExternalComponentClass(Ljava/lang/String;Lc8/nVf;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lc8/oag;->mClass:Ljava/lang/Class;

    .line 72
    :cond_0
    new-instance v1, Lc8/uag;

    iget-object v2, p0, Lc8/oag;->mClass:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lc8/uag;-><init>(Ljava/lang/Class;)V

    .line 73
    .local v1, "creator":Lc8/nag;
    invoke-interface {v1, p1, p2, p3}, Lc8/nag;->createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v0

    .line 75
    .local v0, "component":Lc8/tbg;
    invoke-virtual {v0, p0}, Lc8/tbg;->bindHolder(Lc8/rag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "component":Lc8/tbg;
    .end local v1    # "creator":Lc8/nag;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lc8/oag;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/oag;->generate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/oag;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;

    goto :goto_0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lc8/oag;->mMethodInvokers:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lc8/oag;->generate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 103
    :goto_0
    return-object v1

    .line 102
    :cond_0
    iget-object v1, p0, Lc8/oag;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/oag;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/oag;->generate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/oag;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadIfNonLazy()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
