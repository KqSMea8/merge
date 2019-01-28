.class public Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;
.super Lmtopsdk/mtop/domain/MtopRequest;
.source "VipDownloadLegalActiveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Uen;
    }
.end annotation


# instance fields
.field public apiName:Ljava/lang/String;

.field public apiVersion:Ljava/lang/String;

.field public needCode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 14
    const-string/jumbo v0, "mtop.youku.vip.xbproxy.scene.activate"

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->apiName:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->apiVersion:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->needCode:Ljava/lang/Boolean;

    .line 19
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->apiName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->setApiName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->setVersion(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->needCode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;->setNeedEcode(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public getDefautParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lc8/Uen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Uen;-><init>(Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;Lc8/Ten;)V

    .line 28
    .local v0, "defaultParam":Lc8/Uen;
    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
