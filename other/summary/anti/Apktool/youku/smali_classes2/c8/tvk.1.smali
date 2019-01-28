.class public Lc8/tvk;
.super Ljava/lang/Object;
.source "DateRestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/svk;
    }
.end annotation


# static fields
.field private static INSTANCE:Lc8/tvk;


# instance fields
.field private mRestUpdateListener:Lc8/svk;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/tvk;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/tvk;->INSTANCE:Lc8/tvk;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lc8/tvk;

    invoke-direct {v0}, Lc8/tvk;-><init>()V

    sput-object v0, Lc8/tvk;->INSTANCE:Lc8/tvk;

    .line 24
    :cond_0
    sget-object v0, Lc8/tvk;->INSTANCE:Lc8/tvk;

    return-object v0
.end method


# virtual methods
.method public setRestUpdateListener(Lc8/svk;)V
    .locals 0
    .param p1, "restUpdateListener"    # Lc8/svk;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    .line 116
    return-void
.end method

.method public sycMobileDate(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "moblieDate"    # Lcom/youku/phone/freeflow/mobile/bean/Product;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "result":Lc8/Avk;
    if-eqz p2, :cond_0

    .line 63
    new-instance v0, Lc8/Avk;

    .end local v0    # "result":Lc8/Avk;
    invoke-direct {v0}, Lc8/Avk;-><init>()V

    .line 64
    .restart local v0    # "result":Lc8/Avk;
    const-string/jumbo v1, "\u4e2d\u56fd\u79fb\u52a8"

    iput-object v1, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    .line 65
    iget-object v1, p2, Lcom/youku/phone/freeflow/mobile/bean/Product;->productCode:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    .line 66
    iget-object v1, p2, Lcom/youku/phone/freeflow/mobile/bean/Product;->productName:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    .line 67
    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iput-object v1, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 68
    iput-boolean v2, v0, Lc8/Avk;->isFreeFlow:Z

    .line 69
    iget-object v1, p2, Lcom/youku/phone/freeflow/mobile/bean/Product;->effectiveTime:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->effectiveDate:Ljava/lang/String;

    .line 70
    iget-object v1, p2, Lcom/youku/phone/freeflow/mobile/bean/Product;->expiredTime:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->expireDate:Ljava/lang/String;

    .line 71
    iget-object v1, p2, Lcom/youku/phone/freeflow/mobile/bean/Product;->restData:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->restData:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    if-eqz v1, :cond_1

    .line 74
    if-ne v2, p3, :cond_2

    .line 75
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onUpdate(Ljava/lang/String;Lc8/Avk;)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onCache(Ljava/lang/String;Lc8/Avk;)V

    goto :goto_0
.end method

.method public sycTelecomData(Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "telecomData"    # Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "result":Lc8/Avk;
    if-eqz p2, :cond_0

    .line 86
    new-instance v0, Lc8/Avk;

    .end local v0    # "result":Lc8/Avk;
    invoke-direct {v0}, Lc8/Avk;-><init>()V

    .line 87
    .restart local v0    # "result":Lc8/Avk;
    const-string/jumbo v1, "\u4e2d\u56fd\u7535\u4fe1"

    iput-object v1, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "0001"

    iput-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "\u9c7c\u5361"

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->getCode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 91
    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iput-object v1, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 92
    iput-boolean v2, v0, Lc8/Avk;->isFreeFlow:Z

    .line 98
    :goto_0
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->effectiveDate:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->expireDate:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->restData:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    if-eqz v1, :cond_1

    .line 103
    if-ne v2, p3, :cond_3

    .line 104
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onUpdate(Ljava/lang/String;Lc8/Avk;)V

    .line 109
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusNotSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iput-object v1, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Avk;->isFreeFlow:Z

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onCache(Ljava/lang/String;Lc8/Avk;)V

    goto :goto_1
.end method

.method public sycUnicomDate(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "unicomDate"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    .param p3, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "result":Lc8/Avk;
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->prdeProd:Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    if-eqz v1, :cond_1

    .line 31
    new-instance v0, Lc8/Avk;

    .end local v0    # "result":Lc8/Avk;
    invoke-direct {v0}, Lc8/Avk;-><init>()V

    .line 32
    .restart local v0    # "result":Lc8/Avk;
    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    iput-object v1, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    .line 33
    iget-object v1, p2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->prdeProd:Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    iget-object v1, v1, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;->basicOperProdId:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    .line 34
    iget-object v1, p2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->prdeProd:Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    iget-object v1, v1, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;->ykProductName:Ljava/lang/String;

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    .line 35
    iget-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    const-string/jumbo v2, "21156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string/jumbo v1, "\u8054\u901awo+15"

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    .line 44
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iput-object v1, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 45
    iput-boolean v3, v0, Lc8/Avk;->isFreeFlow:Z

    .line 46
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->effectiveDate:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->expireDate:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lc8/Avk;->restData:Ljava/lang/String;

    .line 50
    :cond_1
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    if-eqz v1, :cond_2

    .line 51
    if-ne v3, p3, :cond_5

    .line 52
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onUpdate(Ljava/lang/String;Lc8/Avk;)V

    .line 57
    :cond_2
    :goto_1
    return-void

    .line 38
    :cond_3
    iget-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    const-string/jumbo v2, "1161"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string/jumbo v1, "\u8054\u901a\u65e0\u9650\u7545\u89c6"

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_4
    iget-object v1, v0, Lc8/Avk;->productId:Ljava/lang/String;

    const-string/jumbo v2, "22201"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string/jumbo v1, "\u8054\u901a\u6807\u6e05\u7545\u89c6"

    iput-object v1, v0, Lc8/Avk;->productName:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_5
    iget-object v1, p0, Lc8/tvk;->mRestUpdateListener:Lc8/svk;

    invoke-interface {v1, p1, v0}, Lc8/svk;->onCache(Ljava/lang/String;Lc8/Avk;)V

    goto :goto_1
.end method
