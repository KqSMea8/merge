.class public Lanet/channel/strategy/StrategyList;
.super Ljava/lang/Object;
.source "StrategyList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bL;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.StrategyList"

.field private static final serialVersionUID:J = -0x394cf2f7e98f646L


# instance fields
.field private containsStaticIp:Z

.field private transient defaultComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private historyItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lanet/channel/strategy/ConnHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private strategyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    .line 33
    iput-object p1, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static synthetic access$000(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lanet/channel/strategy/StrategyList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    return-object v0
.end method

.method private static find(Ljava/util/Collection;Lc8/bL;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lc8/bL",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Lc8/bL;, "Lanet/channel/strategy/StrategyList$Predicate<TT;>;"
    const/4 v3, -0x1

    .line 203
    if-nez p0, :cond_1

    move v2, v3

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    const/4 v2, 0x0

    .line 207
    .local v2, "pos":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lc8/bL;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    add-int/lit8 v2, v2, 0x1

    .line 212
    goto :goto_1

    .line 213
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private getDefaultComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lc8/aL;

    invoke-direct {v0, p0}, Lc8/aL;-><init>(Lanet/channel/strategy/StrategyList;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    .line 197
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private handleUpdate(Ljava/lang/String;ILc8/cL;)V
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "ipType"    # I
    .param p3, "aisles"    # Lc8/cL;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-static {p3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lc8/cL;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 121
    .local v2, "protocol":Lanet/channel/strategy/ConnProtocol;
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    new-instance v4, Lc8/ZK;

    invoke-direct {v4, p0, p3, p1, v2}, Lc8/ZK;-><init>(Lanet/channel/strategy/StrategyList;Lc8/cL;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    invoke-static {v3, v4}, Lanet/channel/strategy/StrategyList;->find(Ljava/util/Collection;Lc8/bL;)I

    move-result v1

    .line 129
    .local v1, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 130
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 131
    .local v0, "ips":Lanet/channel/strategy/IPConnStrategy;
    iget v3, p3, Lc8/cL;->cto:I

    iput v3, v0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 132
    iget v3, p3, Lc8/cL;->rto:I

    iput v3, v0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 133
    iget v3, p3, Lc8/cL;->heartbeat:I

    iput v3, v0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 134
    iput p2, v0, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    .line 135
    iput v5, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    .line 136
    iput-boolean v5, v0, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    .end local v0    # "ips":Lanet/channel/strategy/IPConnStrategy;
    :cond_1
    invoke-static {p1, p3}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;Lc8/cL;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v0

    .line 139
    .restart local v0    # "ips":Lanet/channel/strategy/IPConnStrategy;
    if-eqz v0, :cond_0

    .line 140
    iput p2, v0, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    .line 141
    iput v5, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    .line 142
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v5}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkInit()V
    .locals 6

    .prologue
    .line 37
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    .line 40
    :cond_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    .line 45
    :cond_1
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 46
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lanet/channel/strategy/ConnHistoryItem;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v3}, Lanet/channel/strategy/ConnHistoryItem;->isExpire()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 54
    .local v1, "ipStrategy":Lanet/channel/strategy/IPConnStrategy;
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 55
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v5}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    .end local v1    # "ipStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_5
    iget-object v3, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public getStrategyList()Ljava/util/List;
    .locals 10
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
    .line 68
    iget-object v4, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 86
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    const/4 v3, 0x0

    .line 73
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    iget-object v4, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lanet/channel/strategy/IPConnStrategy;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 76
    .local v1, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    iget-object v4, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnHistoryItem;

    .line 77
    .local v0, "historyItem":Lanet/channel/strategy/ConnHistoryItem;
    invoke-virtual {v0}, Lanet/channel/strategy/ConnHistoryItem;->shouldBan()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    const-string/jumbo v4, "awcn.StrategyList"

    const-string/jumbo v5, "strategy ban!"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "strategy"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_2
    if-nez v3, :cond_3

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v0    # "historyItem":Lanet/channel/strategy/ConnHistoryItem;
    .end local v1    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_4
    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V
    .locals 3
    .param p1, "connStrategy"    # Lanet/channel/strategy/IConnStrategy;
    .param p2, "connEvent"    # Lc8/JK;

    .prologue
    .line 164
    instance-of v1, p1, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move-object v0, p1

    .line 166
    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 167
    .local v0, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/ConnHistoryItem;

    iget-boolean v2, p2, Lc8/JK;->isSuccess:Z

    invoke-virtual {v1, v2}, Lanet/channel/strategy/ConnHistoryItem;->update(Z)V

    .line 168
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    .end local v0    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 153
    .local v1, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    iget-boolean v2, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    if-nez v2, :cond_0

    .line 156
    :cond_1
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v2}, Lanet/channel/strategy/ConnHistoryItem;->latestFail()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const/4 v2, 0x0

    .line 160
    .end local v1    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lc8/dL;)V
    .locals 9
    .param p1, "dnsInfo"    # Lc8/dL;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    iget-object v5, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/IPConnStrategy;

    .line 91
    .local v2, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    iput-boolean v7, v2, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    goto :goto_0

    .line 94
    .end local v2    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p1, Lc8/dL;->aisleses:[Lc8/cL;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 95
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v5, p1, Lc8/dL;->ips:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 96
    iget-object v5, p1, Lc8/dL;->ips:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p1, Lc8/dL;->aisleses:[Lc8/cL;

    aget-object v6, v6, v0

    invoke-direct {p0, v5, v7, v6}, Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILc8/cL;)V

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 98
    :cond_1
    iget-object v5, p1, Lc8/dL;->sips:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 99
    iput-boolean v7, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    .line 100
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p1, Lc8/dL;->sips:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 101
    iget-object v5, p1, Lc8/dL;->sips:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p1, Lc8/dL;->aisleses:[Lc8/cL;

    aget-object v6, v6, v0

    invoke-direct {p0, v5, v8, v6}, Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILc8/cL;)V

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 104
    :cond_2
    iput-boolean v8, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    .line 94
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v4    # "j":I
    :cond_4
    iget-object v5, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 110
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/IPConnStrategy;

    iget-boolean v5, v5, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    if-eqz v5, :cond_5

    .line 112
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 116
    :cond_6
    iget-object v5, p0, Lanet/channel/strategy/StrategyList;->strategyList:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    return-void
.end method
