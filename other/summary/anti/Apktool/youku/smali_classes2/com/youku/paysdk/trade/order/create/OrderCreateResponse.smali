.class public Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;
.super Ljava/lang/Object;
.source "OrderCreateResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private offerId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payChannelResponse:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOfferId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannelResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->payChannelResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->payUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->offerId:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPayChannelResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "payChannelResponse"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->payChannelResponse:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPayUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "payUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->payUrl:Ljava/lang/String;

    return-void
.end method
