.class public Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;
.super Ljava/lang/Object;
.source "TradeOrderDetailResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;
    }
.end annotation


# instance fields
.field private gmtCreate:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payOrder:Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

.field private payPrice:Ljava/lang/String;

.field private tagPrice:Ljava/lang/String;

.field private unitPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrder()Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->payOrder:Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    return-object v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->payPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->tagPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->unitPrice:Ljava/lang/String;

    return-object v0
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtCreate"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->gmtCreate:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPayOrder(Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;)V
    .locals 0
    .param p1, "payOrder"    # Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->payOrder:Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    return-void
.end method

.method public setPayPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "payPrice"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->payPrice:Ljava/lang/String;

    return-void
.end method

.method public setTagPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagPrice"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->tagPrice:Ljava/lang/String;

    return-void
.end method

.method public setUnitPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "unitPrice"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->unitPrice:Ljava/lang/String;

    return-void
.end method
