.class public Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;
.super Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;
.source "TradeOrderDetailRequestReq.java"


# instance fields
.field private orderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;->orderIds:Ljava/util/List;

    return-object v0
.end method

.method public setOrderIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "orderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;->orderIds:Ljava/util/List;

    .line 23
    return-void
.end method
