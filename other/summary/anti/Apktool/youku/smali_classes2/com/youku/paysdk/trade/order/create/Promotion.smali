.class public Lcom/youku/paysdk/trade/order/create/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activityId:Ljava/lang/String;

.field private receivingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Promotion;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/paysdk/trade/order/create/Promotion;->receivingId:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Promotion;->activityId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setReceivingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "receivingId"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/paysdk/trade/order/create/Promotion;->receivingId:Ljava/lang/String;

    .line 27
    return-void
.end method
