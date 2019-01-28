.class public Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;
.super Ljava/lang/Object;
.source "PaySDKErrorToAccsEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->errorCode:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->orderId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->payChannel:Ljava/lang/String;

    .line 20
    return-void
.end method
