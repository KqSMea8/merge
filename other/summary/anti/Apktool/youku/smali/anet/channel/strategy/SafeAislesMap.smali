.class public Lanet/channel/strategy/SafeAislesMap;
.super Ljava/lang/Object;
.source "SafeAislesMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RESULT:Ljava/lang/String; = "No_Result"

.field private static final serialVersionUID:J = -0x6c39d67633fe8c1bL


# instance fields
.field private transient holder:Lc8/WK;

.field private schemeMap:Lanet/channel/strategy/utils/SerialLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/strategy/utils/SerialLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->holder:Lc8/WK;

    .line 25
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    .line 35
    :cond_0
    return-void
.end method

.method public getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lc8/zL;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 110
    :cond_1
    :goto_0
    return-object v0

    .line 93
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 96
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    const-string/jumbo v3, "No_Result"

    invoke-virtual {v1, p1, v3}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-nez v0, :cond_4

    .line 101
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->holder:Lc8/WK;

    invoke-virtual {v1}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_0

    .line 98
    .end local v0    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 102
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "No_Result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHolder(Lc8/WK;)V
    .locals 0
    .param p1, "holder"    # Lc8/WK;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lanet/channel/strategy/SafeAislesMap;->holder:Lc8/WK;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v1

    .line 116
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SchemeMap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/utils/SerialLruCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Lc8/eL;)V
    .locals 11
    .param p1, "response"    # Lc8/eL;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 38
    iget-object v7, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    if-nez v7, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v8, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    monitor-enter v8

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v1, v0

    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    iget-object v7, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    array-length v7, v7

    if-ge v5, v7, :cond_6

    .line 46
    iget-object v7, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    aget-object v3, v7, v5

    .line 47
    .local v3, "dnsInfo":Lc8/dL;
    iget-boolean v7, v3, Lc8/dL;->clear:Z

    if-eqz v7, :cond_2

    .line 48
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v9, v3, Lc8/dL;->host:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lanet/channel/strategy/utils/SerialLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 45
    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v1, v0

    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 51
    :cond_2
    iget-boolean v7, v3, Lc8/dL;->notModified:Z

    if-nez v7, :cond_5

    .line 55
    iget-object v7, v3, Lc8/dL;->cname:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 56
    if-nez v1, :cond_9

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    :try_start_1
    iget-object v7, v3, Lc8/dL;->host:Ljava/lang/String;

    iget-object v9, v3, Lc8/dL;->cname:Ljava/lang/String;

    invoke-virtual {v0, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 81
    .end local v3    # "dnsInfo":Lc8/dL;
    :catchall_0
    move-exception v7

    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 63
    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "dnsInfo":Lc8/dL;
    :cond_3
    :try_start_2
    const-string/jumbo v7, "http"

    iget-object v9, v3, Lc8/dL;->safeAisles:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "https"

    iget-object v9, v3, Lc8/dL;->safeAisles:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 65
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v9, v3, Lc8/dL;->host:Ljava/lang/String;

    const-string/jumbo v10, "No_Result"

    invoke-virtual {v7, v9, v10}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 67
    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v9, v3, Lc8/dL;->host:Ljava/lang/String;

    iget-object v10, v3, Lc8/dL;->safeAisles:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 71
    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "dnsInfo":Lc8/dL;
    .restart local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    if-eqz v1, :cond_8

    .line 72
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "cnameToHost":Ljava/lang/String;
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v7, v2}, Lanet/channel/strategy/utils/SerialLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 75
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v10, v2}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 81
    .end local v2    # "cnameToHost":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 77
    .end local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "cnameToHost":Ljava/lang/String;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v7, p0, Lanet/channel/strategy/SafeAislesMap;->schemeMap:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "No_Result"

    invoke-virtual {v7, v9, v10}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 81
    .end local v2    # "cnameToHost":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    const/4 v7, 0x1

    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const-string/jumbo v7, "awcn.SafeAislesMap"

    invoke-virtual {p0}, Lanet/channel/strategy/SafeAislesMap;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .restart local v3    # "dnsInfo":Lc8/dL;
    :cond_9
    move-object v0, v1

    .end local v1    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "cnameMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_3
.end method
