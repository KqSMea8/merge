.class public Lcom/youku/paysdk/entity/VipAccsDataEntity;
.super Ljava/lang/Object;
.source "VipAccsDataEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bizType:Ljava/lang/String;

.field private data:Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;

.field private dataType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->data:Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->bizType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setData(Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;)V
    .locals 0
    .param p1, "data"    # Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->data:Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;

    .line 36
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/paysdk/entity/VipAccsDataEntity;->dataType:Ljava/lang/String;

    .line 28
    return-void
.end method
