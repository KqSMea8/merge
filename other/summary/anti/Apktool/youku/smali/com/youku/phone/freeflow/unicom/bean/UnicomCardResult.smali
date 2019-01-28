.class public Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;
.super Ljava/lang/Object;
.source "UnicomCardResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4cc338f958214e9eL


# instance fields
.field private mobile:Ljava/lang/String;

.field private orderId:Ljava/lang/String;
    .annotation runtime Lc8/JIb;
        name = "order_id"
    .end annotation
.end field

.field private prov:Ljava/lang/String;

.field private respCode:Ljava/lang/String;
    .annotation runtime Lc8/JIb;
        name = "resp_code"
    .end annotation
.end field

.field private respType:Ljava/lang/String;
    .annotation runtime Lc8/JIb;
        name = "resp_type"
    .end annotation
.end field

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->prov:Ljava/lang/String;

    return-object v0
.end method

.method public getRespCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->respCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRespType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->respType:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->mobile:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->orderId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setProv(Ljava/lang/String;)V
    .locals 0
    .param p1, "prov"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->prov:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRespCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "respCode"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->respCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRespType(Ljava/lang/String;)V
    .locals 0
    .param p1, "respType"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->respType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->result:Ljava/lang/String;

    .line 26
    return-void
.end method
