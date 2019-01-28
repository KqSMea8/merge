.class public Lcom/taobao/accs/net/HttpDnsProvider;
.super Ljava/lang/Object;
.source "HttpDnsProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDnsProvider"


# instance fields
.field private mCurrStrategyPos:I

.field private mStrategys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    .line 31
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/HttpDnsProvider$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/HttpDnsProvider$1;-><init>(Lcom/taobao/accs/net/HttpDnsProvider;)V

    invoke-virtual {v0, v1}, Lc8/uL;->addListener(Lc8/sL;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/HttpDnsProvider;->getAvailableStrategy(Ljava/lang/String;)Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public forceUpdateStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/MK;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public getAvailableStrategy(Ljava/lang/String;)Ljava/util/List;
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
    .line 47
    iget v4, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    :cond_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v4

    invoke-interface {v4, p1}, Lc8/MK;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, "strategys":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    iget-object v4, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/IConnStrategy;

    .line 53
    .local v2, "strategy":Lanet/channel/strategy/IConnStrategy;
    invoke-interface {v2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v4

    invoke-static {v4}, Lc8/BJ;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lc8/BJ;

    move-result-object v0

    .line 55
    .local v0, "connType":Lc8/BJ;
    invoke-virtual {v0}, Lc8/BJ;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v4

    sget-object v5, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lc8/BJ;->isSSL()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v0    # "connType":Lc8/BJ;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "strategy":Lanet/channel/strategy/IConnStrategy;
    .end local v3    # "strategys":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    :cond_2
    iget-object v4, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    return-object v4
.end method

.method public getStrategy()Lanet/channel/strategy/IConnStrategy;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mStrategys:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/HttpDnsProvider;->getStrategy(Ljava/util/List;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy(Ljava/util/List;)Lanet/channel/strategy/IConnStrategy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;)",
            "Lanet/channel/strategy/IConnStrategy;"
        }
    .end annotation

    .prologue
    .local p1, "strategys":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    const/4 v3, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v1, "HttpDnsProvider"

    const-string/jumbo v2, "strategys null or 0"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget v1, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 77
    :cond_2
    iput v3, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    .line 80
    :cond_3
    iget v1, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 82
    .local v0, "strategy":Lanet/channel/strategy/IConnStrategy;
    goto :goto_0
.end method

.method public getStrategyPos()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    return v0
.end method

.method public updateStrategyPos()V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    .line 91
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "HttpDnsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStrategyPos StrategyPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/HttpDnsProvider;->mCurrStrategyPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method
