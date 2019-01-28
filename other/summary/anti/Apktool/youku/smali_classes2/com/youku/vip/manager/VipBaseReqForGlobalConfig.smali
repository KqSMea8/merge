.class public abstract Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;
.super Ljava/lang/Object;
.source "VipBaseReqForGlobalConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected deviceType:Ljava/lang/String;

.field protected vipVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lc8/QFo;->vipVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->vipVersion:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "phone"

    iput-object v0, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->deviceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getVipVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->vipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->deviceType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setVipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "vipVersion"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;->vipVersion:Ljava/lang/String;

    .line 33
    return-void
.end method
