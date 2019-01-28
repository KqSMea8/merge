.class public Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
.super Ljava/lang/Object;
.source "TelecomProduct.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x309900e5b77552bfL


# instance fields
.field private code:I
    .annotation runtime Lc8/JIb;
        name = "code"
    .end annotation
.end field

.field private openId:Ljava/lang/String;
    .annotation runtime Lc8/JIb;
        name = "openId"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lc8/JIb;
        name = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->code:I

    return v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->code:I

    .line 35
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->openId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->state:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelecomProduct{openId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
