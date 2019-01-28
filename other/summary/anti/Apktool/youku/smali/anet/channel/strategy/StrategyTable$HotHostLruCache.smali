.class public Lanet/channel/strategy/StrategyTable$HotHostLruCache;
.super Lanet/channel/strategy/utils/SerialLruCache;
.source "StrategyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotHostLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanet/channel/strategy/utils/SerialLruCache",
        "<",
        "Ljava/lang/String;",
        "Lanet/channel/strategy/StrategyCollection;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3788bca50a5fea75L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected entryRemoved(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    iget-boolean v1, v1, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable$HotHostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lanet/channel/strategy/StrategyCollection;>;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    iget-boolean v1, v1, Lanet/channel/strategy/StrategyCollection;->isFixed:Z

    if-nez v1, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 77
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
