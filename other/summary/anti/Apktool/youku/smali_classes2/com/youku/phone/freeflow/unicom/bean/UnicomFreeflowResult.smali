.class public Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;
.super Ljava/lang/Object;
.source "UnicomFreeflowResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22d1b8e9dec685c5L


# instance fields
.field private carrier:Ljava/lang/String;

.field private effectiveDate:Ljava/lang/String;

.field private expireDate:Ljava/lang/String;

.field private freeFlowStatus:I

.field private pcid:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private restData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->effectiveDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeFlowStatus()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->freeFlowStatus:I

    return v0
.end method

.method public getPcid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->pcid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->restData:Ljava/lang/String;

    return-object v0
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->carrier:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setEffectiveDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectiveDate"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->effectiveDate:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expireDate"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->expireDate:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setFreeFlowStatus(I)V
    .locals 0
    .param p1, "freeFlowStatus"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->freeFlowStatus:I

    .line 90
    return-void
.end method

.method public setPcid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pcid"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->pcid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->phoneNumber:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->productId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->productName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setRestData(Ljava/lang/String;)V
    .locals 0
    .param p1, "restData"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->restData:Ljava/lang/String;

    .line 114
    return-void
.end method
