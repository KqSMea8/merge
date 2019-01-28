.class public Lc8/WK;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Lc8/EK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
    }
.end annotation


# instance fields
.field hostUnitMap:Lanet/channel/strategy/HostUnitMap;

.field private final loadingFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final localDnsStrategyTable:Lc8/PK;

.field schemeMap:Lanet/channel/strategy/SafeAislesMap;

.field strategyTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uniqueId:Ljava/lang/String;

.field private final unknownStrategyTable:Lanet/channel/strategy/StrategyTable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;-><init>()V

    iput-object v0, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    .line 33
    iput-object v1, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    .line 34
    iput-object v1, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    .line 36
    new-instance v0, Lc8/PK;

    invoke-direct {v0}, Lc8/PK;-><init>()V

    iput-object v0, p0, Lc8/WK;->localDnsStrategyTable:Lc8/PK;

    .line 39
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/WK;->unknownStrategyTable:Lanet/channel/strategy/StrategyTable;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-direct {p0}, Lc8/WK;->init()V

    .line 52
    invoke-direct {p0}, Lc8/WK;->restore()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-direct {p0}, Lc8/WK;->checkInit()V

    .line 57
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lc8/WK;->checkInit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lc8/WK;->checkInit()V

    throw v0
.end method

.method static synthetic access$000(Lc8/WK;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/WK;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lc8/WK;->loadFile(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkInit()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyTable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    goto :goto_0

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyTable;>;"
    :cond_0
    iget-object v2, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Lanet/channel/strategy/SafeAislesMap;

    invoke-direct {v2}, Lanet/channel/strategy/SafeAislesMap;-><init>()V

    iput-object v2, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    .line 77
    :cond_1
    iget-object v2, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2}, Lanet/channel/strategy/SafeAislesMap;->checkInit()V

    .line 78
    iget-object v2, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2, p0}, Lanet/channel/strategy/SafeAislesMap;->setHolder(Lc8/WK;)V

    .line 80
    iget-object v2, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Lanet/channel/strategy/HostUnitMap;

    invoke-direct {v2}, Lanet/channel/strategy/HostUnitMap;-><init>()V

    iput-object v2, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    .line 83
    :cond_2
    iget-object v2, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    invoke-virtual {v2}, Lanet/channel/strategy/HostUnitMap;->checkInit()V

    .line 84
    return-void
.end method

.method private getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 4
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 197
    const-string/jumbo v1, ""

    .line 198
    .local v1, "uniqueId":Ljava/lang/String;
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-static {}, Lc8/FK;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/cM;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string/jumbo v0, ""

    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WIFI$"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 204
    :cond_2
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/FK;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lc8/FK;->addStatusChangeListener(Lc8/EK;)V

    .line 66
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/WK;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private loadFile(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "commit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v3, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v4, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 128
    iget-object v4, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "sso":Lanet/channel/statist/StrategyStatObject;
    if-eqz p2, :cond_0

    .line 135
    new-instance v1, Lanet/channel/statist/StrategyStatObject;

    .end local v1    # "sso":Lanet/channel/statist/StrategyStatObject;
    invoke-direct {v1, v2}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 136
    .restart local v1    # "sso":Lanet/channel/statist/StrategyStatObject;
    iput-object p1, v1, Lanet/channel/statist/StrategyStatObject;->readStrategyFileId:Ljava/lang/String;

    .line 138
    :cond_0
    invoke-static {p1, v1}, Lc8/hL;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    .line 139
    .local v0, "s":Lanet/channel/strategy/StrategyTable;
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    .line 141
    iget-object v3, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    monitor-enter v3

    .line 142
    :try_start_1
    iget-object v4, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    iget-object v5, v0, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :cond_1
    iget-object v3, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    monitor-enter v3

    .line 146
    :try_start_2
    iget-object v4, p0, Lc8/WK;->loadingFiles:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 150
    if-eqz p2, :cond_3

    .line 151
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, v1, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 152
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    invoke-interface {v2, v1}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 154
    .end local v0    # "s":Lanet/channel/strategy/StrategyTable;
    .end local v1    # "sso":Lanet/channel/statist/StrategyStatObject;
    :cond_3
    :goto_0
    return-void

    .line 130
    :cond_4
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 143
    .restart local v0    # "s":Lanet/channel/strategy/StrategyTable;
    .restart local v1    # "sso":Lanet/channel/statist/StrategyStatObject;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 147
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public static newInstance()Lc8/WK;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lc8/WK;

    invoke-direct {v0}, Lc8/WK;-><init>()V

    return-object v0
.end method

.method private restore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 89
    .local v0, "currentFilename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/WK;->loadFile(Ljava/lang/String;Z)V

    .line 93
    :cond_0
    const-string/jumbo v1, "Config$scheme"

    invoke-static {v1, v2}, Lc8/hL;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/SafeAislesMap;

    iput-object v1, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    .line 94
    const-string/jumbo v1, "Config$unit"

    invoke-static {v1, v2}, Lc8/hL;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/HostUnitMap;

    iput-object v1, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    .line 98
    new-instance v1, Lc8/TK;

    invoke-direct {v1, p0, v0}, Lc8/TK;-><init>(Lc8/WK;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/xL;->submitTask(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method


# virtual methods
.method clear()V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lc8/FK;->removeStatusChangeListener(Lc8/EK;)V

    .line 62
    return-void
.end method

.method public getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lc8/WK;->unknownStrategyTable:Lanet/channel/strategy/StrategyTable;

    .line 181
    .local v1, "ret":Lanet/channel/strategy/StrategyTable;
    iget-object v0, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 182
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    iget-object v5, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    monitor-enter v5

    .line 184
    :try_start_0
    iget-object v4, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyTable;

    .line 185
    .local v3, "st":Lanet/channel/strategy/StrategyTable;
    if-eqz v3, :cond_1

    .line 186
    move-object v1, v3

    .line 191
    :goto_0
    monitor-exit v5

    .line 193
    .end local v3    # "st":Lanet/channel/strategy/StrategyTable;
    :cond_0
    return-object v1

    .line 188
    .restart local v3    # "st":Lanet/channel/strategy/StrategyTable;
    :cond_1
    new-instance v2, Lanet/channel/strategy/StrategyTable;

    invoke-direct {v2, v0}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v1    # "ret":Lanet/channel/strategy/StrategyTable;
    .local v2, "ret":Lanet/channel/strategy/StrategyTable;
    :try_start_1
    iget-object v4, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "ret":Lanet/channel/strategy/StrategyTable;
    .restart local v1    # "ret":Lanet/channel/strategy/StrategyTable;
    goto :goto_0

    .line 191
    .end local v3    # "st":Lanet/channel/strategy/StrategyTable;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1    # "ret":Lanet/channel/strategy/StrategyTable;
    .restart local v2    # "ret":Lanet/channel/strategy/StrategyTable;
    .restart local v3    # "st":Lanet/channel/strategy/StrategyTable;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ret":Lanet/channel/strategy/StrategyTable;
    .restart local v1    # "ret":Lanet/channel/strategy/StrategyTable;
    goto :goto_1
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 3
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lc8/WK;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lc8/WK;->uniqueId:Ljava/lang/String;

    .line 225
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v2, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lc8/UK;

    invoke-direct {v1, p0, v0}, Lc8/UK;-><init>(Lc8/WK;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/xL;->submitTask(Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    monitor-exit v2

    .line 237
    :cond_1
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveData()V
    .locals 6

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v3, p0, Lc8/WK;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    .line 162
    .local v2, "st":Lanet/channel/strategy/StrategyTable;
    iget-boolean v3, v2, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    if-eqz v3, :cond_0

    .line 163
    new-instance v1, Lanet/channel/statist/StrategyStatObject;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 164
    .local v1, "sso":Lanet/channel/statist/StrategyStatObject;
    iget-object v3, v2, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    iput-object v3, v1, Lanet/channel/statist/StrategyStatObject;->writeStrategyFileId:Ljava/lang/String;

    .line 165
    iget-object v3, v2, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc8/hL;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 166
    const/4 v3, 0x0

    iput-boolean v3, v2, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sso":Lanet/channel/statist/StrategyStatObject;
    .end local v2    # "st":Lanet/channel/strategy/StrategyTable;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 169
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    const-string/jumbo v4, "Config$scheme"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/hL;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 170
    iget-object v3, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    invoke-virtual {v3}, Lanet/channel/strategy/HostUnitMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    iget-object v3, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    const-string/jumbo v4, "Config$unit"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/hL;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 173
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method update(Lc8/eL;)V
    .locals 3
    .param p1, "response"    # Lc8/eL;

    .prologue
    .line 211
    iget v1, p1, Lc8/eL;->fcLevel:I

    if-eqz v1, :cond_0

    .line 212
    iget v1, p1, Lc8/eL;->fcLevel:I

    iget v2, p1, Lc8/eL;->fcTime:I

    invoke-static {v1, v2}, Lc8/kL;->updateAmdcLimit(II)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    .line 215
    .local v0, "st":Lanet/channel/strategy/StrategyTable;
    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->update(Lc8/eL;)V

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, v0, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    .line 217
    iget-object v1, p0, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/SafeAislesMap;->update(Lc8/eL;)V

    .line 218
    iget-object v1, p0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/HostUnitMap;->update(Lc8/eL;)V

    .line 219
    return-void
.end method
