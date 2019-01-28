.class public Lanet/channel/strategy/HostUnitMap;
.super Ljava/lang/Object;
.source "HostUnitMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7a5c430992827362L


# instance fields
.field private unitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    .line 27
    :cond_0
    return-void
.end method

.method public getUnitByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HostUnitMap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Lc8/eL;)V
    .locals 6
    .param p1, "response"    # Lc8/eL;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 34
    iget-object v2, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 39
    iget-object v2, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    aget-object v0, v2, v1

    .line 40
    .local v0, "dnsInfo":Lc8/dL;
    iget-object v2, v0, Lc8/dL;->unit:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget-object v2, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    iget-object v3, v0, Lc8/dL;->host:Ljava/lang/String;

    iget-object v4, v0, Lc8/dL;->unit:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_2
    iget-object v2, p0, Lanet/channel/strategy/HostUnitMap;->unitMap:Ljava/util/Map;

    iget-object v3, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 46
    .end local v0    # "dnsInfo":Lc8/dL;
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "awcn.HostUnitMap"

    invoke-virtual {p0}, Lanet/channel/strategy/HostUnitMap;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
