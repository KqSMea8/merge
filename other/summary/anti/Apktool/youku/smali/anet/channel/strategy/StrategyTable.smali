.class public Lanet/channel/strategy/StrategyTable;
.super Ljava/lang/Object;
.source "StrategyTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTable$HotHostLruCache;
    }
.end annotation


# static fields
.field private static final COLD_HOST_CAPABILITY:I = 0x28

.field private static final FRESH_TTL:J = 0x7530L

.field private static final HOT_HOST_CAPABILITY:I = 0x28

.field private static final TAG:Ljava/lang/String; = "awcn.StrategyTable"

.field private static final serialVersionUID:J = 0x53e32b30cbbba6ceL


# instance fields
.field public volatile clientIp:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private transient coldStrategyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient configVersion:I

.field private hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

.field public transient isChanged:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private successIpSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uniqueId:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    .line 83
    iput-object p1, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    .line 85
    return-void
.end method

.method private buildPreIpString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v2, "preIp":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    monitor-enter v4

    .line 408
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "ip":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 411
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ip":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkInitHost()V
    .locals 8

    .prologue
    .line 344
    :try_start_0
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v4

    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/uL;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "bSend":Z
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :try_start_1
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    :try_start_2
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uL;->getInitHosts()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "host":Ljava/lang/String;
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v4, v2}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    new-instance v7, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v7, v2}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "host":Ljava/lang/String;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    if-eqz v0, :cond_2

    .line 359
    :try_start_4
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-virtual {p0, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 365
    .end local v0    # "bSend":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 356
    .restart local v0    # "bSend":Z
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 357
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 362
    .end local v0    # "bSend":Z
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "awcn.StrategyTable"

    const-string/jumbo v5, "checkInitHost failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v1, "hostToUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, "currTime":J
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-ne p1, v6, :cond_2

    const/4 v0, 0x1

    .line 263
    .local v0, "collectAll":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/StrategyCollection;

    .line 264
    .local v5, "sc":Lanet/channel/strategy/StrategyCollection;
    if-nez v0, :cond_1

    iget-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->ttl:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 265
    :cond_1
    invoke-virtual {v5}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    iput-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->ttl:J

    goto :goto_1

    .line 261
    .end local v0    # "collectAll":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    .restart local v0    # "collectAll":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v1
.end method

.method private handlePreIp(Lc8/JK;Ljava/lang/String;)V
    .locals 2
    .param p1, "connEvent"    # Lc8/JK;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-boolean v0, p1, Lc8/JK;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 400
    :cond_1
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private initStrategy()V
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/uL;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uL;->getInitHosts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "host":Ljava/lang/String;
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    new-instance v3, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v3, v0}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public checkInit()V
    .locals 4
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/16 v3, 0x28

    .line 98
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {v2, v3}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;-><init>(I)V

    iput-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    .line 100
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->initStrategy()V

    .line 102
    :cond_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 103
    .local v1, "sc":Lanet/channel/strategy/StrategyCollection;
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->checkInit()V

    goto :goto_0

    .line 106
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 107
    new-instance v2, Lanet/channel/strategy/utils/SerialLruCache;

    invoke-direct {v2, v3}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v2, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    .line 110
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    if-nez v2, :cond_3

    .line 111
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lanet/channel/strategy/StrategyTable;->successIpSet:Ljava/util/Set;

    .line 114
    :cond_3
    invoke-static {}, Lc8/TI;->isTargetProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 115
    return-void

    .line 114
    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getCnameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 171
    :goto_0
    return-object v2

    .line 158
    :cond_0
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v4

    .line 159
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 160
    .local v1, "sc":Lanet/channel/strategy/StrategyCollection;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {p0, v2}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Map;)V

    .line 171
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    goto :goto_0

    .line 160
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 166
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v4

    .line 167
    :try_start_2
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v1, v0

    .line 168
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    move-object v2, v3

    .line 171
    goto :goto_0
.end method

.method public notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategy"    # Lanet/channel/strategy/IConnStrategy;
    .param p3, "connEvent"    # Lc8/JK;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 371
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v1, "awcn.StrategyTable"

    const-string/jumbo v2, "[notifyConnEvent]"

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Host"

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "IConnStrategy"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "ConnEvent"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_0
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lanet/channel/strategy/StrategyTable;->handlePreIp(Lc8/JK;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v2

    .line 380
    :try_start_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 382
    .local v0, "sc":Lanet/channel/strategy/StrategyCollection;
    if-nez v0, :cond_1

    .line 383
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    .line 385
    .restart local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0, p2, p3}, Lanet/channel/strategy/StrategyCollection;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    .line 390
    :cond_2
    return-void

    .line 385
    .end local v0    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 386
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public queryByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lc8/zL;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 150
    :goto_0
    return-object v4

    .line 126
    :cond_1
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->checkInitHost()V

    .line 129
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v5

    .line 130
    :try_start_0
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v4, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 131
    .local v1, "sc":Lanet/channel/strategy/StrategyCollection;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {p0, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/util/Map;)V

    .line 150
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->queryStrategyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 131
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 137
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_3
    const/4 v3, 0x0

    .line 138
    .local v3, "send":Z
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v5

    .line 139
    :try_start_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v1, v0

    .line 140
    if-nez v1, :cond_4

    .line 141
    new-instance v2, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v2, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    .local v2, "sc":Lanet/channel/strategy/StrategyCollection;
    :try_start_3
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 143
    const/4 v3, 0x1

    move-object v1, v2

    .line 145
    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_4
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    if-eqz v3, :cond_2

    .line 147
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_1

    .line 145
    :catchall_1
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .end local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v1    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_2
.end method

.method public sendAmdcRequest(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-wide v6, Lc8/OL;->lastEnterBackgroundTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-static {}, Lc8/kL;->getAmdcLimitLevel()I

    move-result v3

    .line 284
    .local v3, "level":I
    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    .line 288
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 289
    .local v2, "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 290
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 291
    .restart local v2    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_3
    :goto_1
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v6

    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->buildPreIpString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    invoke-virtual {v6, v2, v7, v8}, Lc8/uL;->sendAmdcRequest(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object v7, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v7

    .line 295
    :try_start_0
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v6, p1}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    .line 296
    .local v4, "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v4, :cond_6

    .line 297
    if-nez p2, :cond_5

    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 298
    :cond_5
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-direct {p0, v6}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 299
    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    if-nez v4, :cond_3

    .line 304
    iget-object v7, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v7

    .line 305
    :try_start_1
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lanet/channel/strategy/StrategyCollection;

    move-object v4, v0

    .line 306
    if-nez v4, :cond_7

    .line 307
    new-instance v5, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v5, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    .local v5, "sc":Lanet/channel/strategy/StrategyCollection;
    :try_start_2
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .line 311
    .end local v5    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_7
    if-nez p2, :cond_8

    :try_start_3
    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 312
    :cond_8
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-direct {p0, v6}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 313
    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->getHostWithEtag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_9
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 302
    .end local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 315
    .restart local v5    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "sc":Lanet/channel/strategy/StrategyCollection;
    .restart local v4    # "sc":Lanet/channel/strategy/StrategyCollection;
    goto :goto_2
.end method

.method protected sendAmdcRequest(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v2, Lc8/OL;->lastEnterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    invoke-static {}, Lc8/kL;->getAmdcLimitLevel()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    monitor-enter p1

    .line 334
    :try_start_0
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->getNeedUpdateHost(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 335
    .local v0, "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v1

    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->buildPreIpString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    invoke-virtual {v1, v0, v2, v3}, Lc8/uL;->sendAmdcRequest(Ljava/util/Set;Ljava/lang/String;I)V

    goto :goto_0

    .line 335
    .end local v0    # "hostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public update(Lc8/eL;)V
    .locals 14
    .param p1, "httpDnsResponse"    # Lc8/eL;

    .prologue
    .line 179
    const-string/jumbo v8, "awcn.StrategyTable"

    const-string/jumbo v9, "update strategyTable with httpDns response"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :try_start_0
    iget-object v8, p1, Lc8/eL;->clientIp:Ljava/lang/String;

    iput-object v8, p0, Lanet/channel/strategy/StrategyTable;->clientIp:Ljava/lang/String;

    .line 182
    iget v8, p1, Lc8/eL;->configVersion:I

    iput v8, p0, Lanet/channel/strategy/StrategyTable;->configVersion:I

    .line 183
    iget-object v1, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    .line 184
    .local v1, "dnsInfos":[Lc8/dL;
    if-nez v1, :cond_1

    .line 251
    .end local v1    # "dnsInfos":[Lc8/dL;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v1    # "dnsInfos":[Lc8/dL;
    :cond_1
    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    iget-object v10, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_2
    array-length v8, v1

    if-ge v4, v8, :cond_8

    .line 191
    aget-object v0, v1, v4

    .line 192
    .local v0, "dnsInfo":Lc8/dL;
    if-eqz v0, :cond_2

    iget-object v8, v0, Lc8/dL;->host:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 196
    iget-boolean v8, v0, Lc8/dL;->clear:Z

    if-eqz v8, :cond_3

    .line 197
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 198
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    :cond_3
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/StrategyCollection;

    .line 204
    .local v7, "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v7, :cond_5

    .line 205
    iget v8, v0, Lc8/dL;->isHot:I

    const/4 v11, 0x1

    if-eq v8, v11, :cond_4

    .line 206
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    iget-object v12, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v13, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_4
    :goto_3
    invoke-virtual {v7, v0}, Lanet/channel/strategy/StrategyCollection;->update(Lc8/dL;)V

    goto :goto_2

    .line 222
    .end local v0    # "dnsInfo":Lc8/dL;
    .end local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8

    .line 223
    .end local v4    # "i":I
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 224
    .end local v1    # "dnsInfos":[Lc8/dL;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "awcn.StrategyTable"

    const-string/jumbo v9, "fail to update strategyTable"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v2, v11}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 228
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_4
    const/4 v8, 0x1

    invoke-static {v8}, Lc8/KL;->isPrintLog(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "uniqueId : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 230
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "\n-------------------------hot domains:------------------------------------"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v8, "awcn.StrategyTable"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    monitor-enter v9

    .line 233
    :try_start_5
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    invoke-virtual {v8}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 234
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v8}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v8, "awcn.StrategyTable"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 238
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 209
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "dnsInfo":Lc8/dL;
    .restart local v1    # "dnsInfos":[Lc8/dL;
    .restart local v4    # "i":I
    .restart local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_5
    :try_start_6
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    check-cast v7, Lanet/channel/strategy/StrategyCollection;

    .line 210
    .restart local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    if-eqz v7, :cond_6

    .line 211
    iget v8, v0, Lc8/dL;->isHot:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_4

    .line 212
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    iget-object v12, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    iget-object v13, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 215
    :cond_6
    new-instance v7, Lanet/channel/strategy/StrategyCollection;

    .end local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    iget-object v8, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-direct {v7, v8}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    iget v8, v0, Lc8/dL;->isHot:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_7

    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->hotStrategyMap:Lanet/channel/strategy/StrategyTable$HotHostLruCache;

    :goto_6
    iget-object v11, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    goto :goto_6

    .line 222
    .end local v0    # "dnsInfo":Lc8/dL;
    .end local v7    # "sc":Lanet/channel/strategy/StrategyCollection;
    :cond_8
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 238
    .end local v1    # "dnsInfos":[Lc8/dL;
    .end local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 240
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 241
    const-string/jumbo v8, "\n-------------------------cold domains:------------------------------------"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v8, "awcn.StrategyTable"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v9, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    monitor-enter v9

    .line 244
    :try_start_9
    iget-object v8, p0, Lanet/channel/strategy/StrategyTable;->coldStrategyMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 245
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v8}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v8, "awcn.StrategyTable"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 249
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v8

    :cond_a
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0
.end method
