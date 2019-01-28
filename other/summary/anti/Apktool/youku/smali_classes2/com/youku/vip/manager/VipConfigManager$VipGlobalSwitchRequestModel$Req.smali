.class public Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;
.super Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;
.source "VipConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field private resourceHolderNames:Ljava/lang/String;

.field private userPlatform:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/youku/vip/manager/VipBaseReqForGlobalConfig;-><init>()V

    .line 833
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->userPlatform:I

    .line 835
    const-string/jumbo v0, "globalConfigs"

    iput-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->resourceHolderNames:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResourceHolderNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->resourceHolderNames:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPlatform()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->userPlatform:I

    return v0
.end method

.method public setResourceHolderNames(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceHolderNames"    # Ljava/lang/String;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->resourceHolderNames:Ljava/lang/String;

    .line 851
    return-void
.end method

.method public setUserPlatform(I)V
    .locals 0
    .param p1, "userPlatform"    # I

    .prologue
    .line 842
    iput p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;->userPlatform:I

    .line 843
    return-void
.end method
