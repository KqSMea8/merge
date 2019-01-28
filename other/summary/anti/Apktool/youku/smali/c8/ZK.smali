.class public Lc8/ZK;
.super Ljava/lang/Object;
.source "StrategyList.java"

# interfaces
.implements Lc8/bL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILc8/cL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/bL",
        "<",
        "Lanet/channel/strategy/IPConnStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/StrategyList;

.field final synthetic val$aisles:Lc8/cL;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$protocol:Lanet/channel/strategy/ConnProtocol;


# direct methods
.method public constructor <init>(Lanet/channel/strategy/StrategyList;Lc8/cL;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lc8/ZK;->this$0:Lanet/channel/strategy/StrategyList;

    iput-object p2, p0, Lc8/ZK;->val$aisles:Lc8/cL;

    iput-object p3, p0, Lc8/ZK;->val$ip:Ljava/lang/String;

    iput-object p4, p0, Lc8/ZK;->val$protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lanet/channel/strategy/IPConnStrategy;)Z
    .locals 2
    .param p1, "t"    # Lanet/channel/strategy/IPConnStrategy;

    .prologue
    .line 124
    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getPort()I

    move-result v0

    iget-object v1, p0, Lc8/ZK;->val$aisles:Lc8/cL;

    iget v1, v1, Lc8/cL;->port:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/ZK;->val$ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget-object v1, p0, Lc8/ZK;->val$protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ZK;->apply(Lanet/channel/strategy/IPConnStrategy;)Z

    move-result v0

    return v0
.end method
