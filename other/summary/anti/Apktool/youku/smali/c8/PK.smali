.class public Lc8/PK;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"


# instance fields
.field final localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;>;"
        }
    .end annotation
.end field

.field final lockObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    return-void
.end method

.method private startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "lockObj"    # Ljava/lang/Object;

    .prologue
    .line 91
    new-instance v0, Lc8/OK;

    invoke-direct {v0, p0, p1, p2}, Lc8/OK;-><init>(Lc8/PK;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lc8/xL;->submitTask(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method


# virtual methods
.method notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategy"    # Lanet/channel/strategy/IConnStrategy;
    .param p3, "connEvent"    # Lc8/JK;

    .prologue
    .line 72
    iget-boolean v2, p3, Lc8/JK;->isSuccess:Z

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 77
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 84
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lc8/zL;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :cond_1
    :goto_0
    return-object v0

    .line 38
    :cond_2
    invoke-static {v9}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    const-string/jumbo v3, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v4, "try resolve ip with local dns"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    aput-object p1, v6, v9

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 43
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    iget-object v3, p0, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 45
    iget-object v4, p0, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v3, p0, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 47
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    .local v2, "lockObj":Ljava/lang/Object;
    iget-object v3, p0, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0, p1, v2}, Lc8/PK;->startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v2, :cond_4

    .line 56
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 58
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .end local v2    # "lockObj":Ljava/lang/Object;
    :cond_4
    :goto_2
    iget-object v3, p0, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 65
    .local v1, "localStrategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    if-eqz v1, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v3, :cond_1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    goto :goto_0

    .line 51
    .end local v1    # "localStrategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_5
    :try_start_3
    iget-object v3, p0, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "lockObj":Ljava/lang/Object;
    goto :goto_1

    .line 53
    .end local v2    # "lockObj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 58
    .restart local v2    # "lockObj":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method
