.class public Lc8/LK;
.super Ljava/lang/Object;
.source "HttpDnsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KK;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getOriginsByHttpDns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/KK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v4

    invoke-interface {v4, p0}, Lc8/MK;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 30
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    const/4 v2, 0x0

    .line 37
    :cond_0
    return-object v2

    .line 33
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 35
    .local v0, "connStrategy":Lanet/channel/strategy/IConnStrategy;
    new-instance v4, Lc8/KK;

    invoke-direct {v4, v0}, Lc8/KK;-><init>(Lanet/channel/strategy/IConnStrategy;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
