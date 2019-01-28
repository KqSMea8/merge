.class public Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;
.super Lmtopsdk/mtop/domain/MtopRequest;
.source "VipDownloadLegalQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yen;
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
    .line 21
    invoke-direct {p0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 17
    const-string/jumbo v0, "mtop.youku.vip.xbproxy.scene.query"

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->apiName:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->apiVersion:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->needCode:Ljava/lang/Boolean;

    .line 22
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->apiName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->setApiName(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->setVersion(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->needCode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;->setNeedEcode(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getDefautParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lc8/Yen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Yen;-><init>(Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;Lc8/Xen;)V

    .line 35
    .local v0, "defaultParam":Lc8/Yen;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc8/Yen;->benefitTypes:Ljava/util/List;

    .line 36
    iget-object v1, v0, Lc8/Yen;->benefitTypes:Ljava/util/List;

    const v2, 0x1adb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
