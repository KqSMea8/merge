.class public Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;
.super Ljava/lang/Object;
.source "VipConfigManager.java"

# interfaces
.implements Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipGlobalSwitchRequestModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;
    }
.end annotation


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private mtopParams:Ljava/lang/String;

.field private req:Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    const-string/jumbo v0, "mtop.alidme.xtop.ydc.config.query"

    iput-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->API_NAME:Ljava/lang/String;

    .line 716
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->VERSION:Ljava/lang/String;

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_ECODE:Z

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_SESSION:Z

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->mtopParams:Ljava/lang/String;

    .line 735
    new-instance v0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;

    invoke-direct {v0}, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;-><init>()V

    iput-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->req:Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;

    .line 831
    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->mtopParams:Ljava/lang/String;

    return-object v0
.end method

.method public getReq()Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->req:Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "API_NAME"    # Ljava/lang/String;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->API_NAME:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setMtopParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "mtopParams"    # Ljava/lang/String;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->mtopParams:Ljava/lang/String;

    .line 813
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0
    .param p1, "NEED_ECODE"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_ECODE:Z

    .line 783
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0
    .param p1, "NEED_SESSION"    # Z

    .prologue
    .line 798
    iput-boolean p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->NEED_SESSION:Z

    .line 799
    return-void
.end method

.method public setReq(Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;)V
    .locals 0
    .param p1, "req"    # Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->req:Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel$Req;

    .line 829
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0
    .param p1, "VERSION"    # Ljava/lang/String;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;->VERSION:Ljava/lang/String;

    .line 767
    return-void
.end method
