.class public Lanet/channel/strategy/StrategyCollection;
.super Ljava/lang/Object;
.source "StrategyCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14311d607e86c4e5L


# instance fields
.field volatile cname:Ljava/lang/String;

.field volatile etag:Ljava/lang/String;

.field host:Ljava/lang/String;

.field isFixed:Z

.field private transient lastAmdcRequestSend:J

.field strategyList:Lanet/channel/strategy/StrategyList;

.field volatile ttl:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    .line 21
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    .line 21
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    .line 32
    iput-object p1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lc8/nL;->isAmdcServerDomain(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    .line 34
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->checkInit()V

    .line 40
    :cond_0
    return-void
.end method

.method public getHostWithEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V
    .locals 6
    .param p1, "connStrategy"    # Lanet/channel/strategy/IConnStrategy;
    .param p2, "connEvent"    # Lc8/JK;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v2, p1, p2}, Lanet/channel/strategy/StrategyList;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    .line 52
    iget-boolean v2, p2, Lc8/JK;->isSuccess:Z

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyList;->shouldRefresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "now":J
    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 57
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc8/MK;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 58
    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->lastAmdcRequestSend:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "now":J
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized queryStrategyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyList;->getStrategyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\nStrategyList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_1
    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public declared-synchronized update(Lc8/dL;)V
    .locals 6
    .param p1, "dnsInfo"    # Lc8/dL;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Lc8/dL;->ttl:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 80
    iget-object v0, p1, Lc8/dL;->host:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "StrategyCollection"

    const-string/jumbo v1, "update error!"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "dnsInfo.host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lc8/dL;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Lc8/dL;->notModified:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p1, Lc8/dL;->cname:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->cname:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lc8/dL;->etag:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lc8/dL;->ips:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lc8/dL;->ips:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lc8/dL;->aisleses:[Lc8/cL;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lc8/dL;->aisleses:[Lc8/cL;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 95
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_3
    :try_start_2
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Lanet/channel/strategy/StrategyList;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    .line 103
    :cond_4
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->strategyList:Lanet/channel/strategy/StrategyList;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyList;->update(Lc8/dL;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
