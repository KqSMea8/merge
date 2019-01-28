.class public Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;
.super Ljava/lang/Object;
.source "MtopAlidmeXtopTradeOrderCreateRequest.java"

# interfaces
.implements Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private mtopParams:Ljava/lang/String;

.field private req:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "mtop.alidme.xtop.trade.order.create"

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->API_NAME:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->VERSION:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_ECODE:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_SESSION:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->mtopParams:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    invoke-direct {v0}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;-><init>()V

    iput-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->req:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->mtopParams:Ljava/lang/String;

    return-object v0
.end method

.method public getReq()Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->req:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "API_NAME"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->API_NAME:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMtopParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "mtopParams"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->mtopParams:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0
    .param p1, "NEED_ECODE"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_ECODE:Z

    .line 102
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0
    .param p1, "NEED_SESSION"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->NEED_SESSION:Z

    .line 120
    return-void
.end method

.method public setReq(Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V
    .locals 0
    .param p1, "req"    # Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->req:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    .line 154
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0
    .param p1, "VERSION"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->VERSION:Ljava/lang/String;

    .line 84
    return-void
.end method
