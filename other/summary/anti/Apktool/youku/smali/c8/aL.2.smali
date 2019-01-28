.class public Lc8/aL;
.super Ljava/lang/Object;
.source "StrategyList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/StrategyList;->getDefaultComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lanet/channel/strategy/IPConnStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/StrategyList;


# direct methods
.method public constructor <init>(Lanet/channel/strategy/StrategyList;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lc8/aL;->this$0:Lanet/channel/strategy/StrategyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lanet/channel/strategy/IPConnStrategy;Lanet/channel/strategy/IPConnStrategy;)I
    .locals 8
    .param p1, "t1"    # Lanet/channel/strategy/IPConnStrategy;
    .param p2, "t2"    # Lanet/channel/strategy/IPConnStrategy;

    .prologue
    .line 177
    iget-object v6, p0, Lc8/aL;->this$0:Lanet/channel/strategy/StrategyList;

    invoke-static {v6}, Lanet/channel/strategy/StrategyList;->access$000(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/ConnHistoryItem;

    .line 178
    .local v2, "h1":Lanet/channel/strategy/ConnHistoryItem;
    iget-object v6, p0, Lc8/aL;->this$0:Lanet/channel/strategy/StrategyList;

    invoke-static {v6}, Lanet/channel/strategy/StrategyList;->access$000(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p2}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/ConnHistoryItem;

    .line 180
    .local v3, "h2":Lanet/channel/strategy/ConnHistoryItem;
    invoke-virtual {v2}, Lanet/channel/strategy/ConnHistoryItem;->countFail()I

    move-result v0

    .line 181
    .local v0, "c1":I
    invoke-virtual {v3}, Lanet/channel/strategy/ConnHistoryItem;->countFail()I

    move-result v1

    .line 184
    .local v1, "c2":I
    iget v6, p1, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    add-int v4, v0, v6

    .line 185
    .local v4, "p1":I
    iget v6, p2, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    add-int v5, v1, v6

    .line 187
    .local v5, "p2":I
    if-eq v4, v5, :cond_0

    .line 188
    sub-int v6, v4, v5

    .line 192
    :goto_0
    return v6

    .line 189
    :cond_0
    if-eq v0, v1, :cond_1

    .line 190
    sub-int v6, v0, v1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v6, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget v6, v6, Lanet/channel/strategy/ConnProtocol;->isHttp:I

    iget-object v7, p2, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget v7, v7, Lanet/channel/strategy/ConnProtocol;->isHttp:I

    sub-int/2addr v6, v7

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lanet/channel/strategy/IPConnStrategy;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/aL;->compare(Lanet/channel/strategy/IPConnStrategy;Lanet/channel/strategy/IPConnStrategy;)I

    move-result v0

    return v0
.end method
