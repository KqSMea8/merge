.class public Lc8/VK;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;->entryRemoved(Ljava/util/Map$Entry;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

.field final synthetic val$eldest:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lc8/VK;->this$0:Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    iput-object p2, p0, Lc8/VK;->val$eldest:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lc8/VK;->val$eldest:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    .line 252
    .local v1, "st":Lanet/channel/strategy/StrategyTable;
    iget-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    if-eqz v2, :cond_0

    .line 253
    new-instance v0, Lanet/channel/statist/StrategyStatObject;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 254
    .local v0, "sso":Lanet/channel/statist/StrategyStatObject;
    iget-object v2, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    iput-object v2, v0, Lanet/channel/statist/StrategyStatObject;->writeStrategyFileId:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lc8/VK;->val$eldest:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    iget-object v3, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lc8/hL;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 256
    const/4 v2, 0x0

    iput-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    .line 258
    .end local v0    # "sso":Lanet/channel/statist/StrategyStatObject;
    :cond_0
    return-void
.end method
