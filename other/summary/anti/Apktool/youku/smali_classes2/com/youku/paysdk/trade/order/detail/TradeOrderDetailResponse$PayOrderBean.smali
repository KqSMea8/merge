.class public Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;
.super Ljava/lang/Object;
.source "TradeOrderDetailResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayOrderBean"
.end annotation


# instance fields
.field private gmtCreate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private payPrice:Ljava/lang/String;

.field private payState:Ljava/lang/String;

.field private payStateDesc:Ljava/lang/String;

.field private totalPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payState:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStateDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payStateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->totalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtCreate"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->gmtCreate:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payChannel:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPayPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "payPrice"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payPrice:Ljava/lang/String;

    return-void
.end method

.method public setPayState(Ljava/lang/String;)V
    .locals 0
    .param p1, "payState"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payState:Ljava/lang/String;

    return-void
.end method

.method public setPayStateDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "payStateDesc"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->payStateDesc:Ljava/lang/String;

    return-void
.end method

.method public setTotalPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalPrice"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->totalPrice:Ljava/lang/String;

    return-void
.end method
