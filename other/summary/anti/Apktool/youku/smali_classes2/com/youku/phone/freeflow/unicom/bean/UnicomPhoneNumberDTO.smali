.class public Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
.super Ljava/lang/Object;
.source "UnicomPhoneNumberDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x156958bea2dc6babL


# instance fields
.field private code:I

.field private data:Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

.field private url:Ljava/lang/String;


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
    .line 23
    iget v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->code:I

    return v0
.end method

.method public getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->data:Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->code:I

    .line 20
    return-void
.end method

.method public setData(Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;)V
    .locals 0
    .param p1, "data"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->data:Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    .line 40
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->url:Ljava/lang/String;

    .line 28
    return-void
.end method
