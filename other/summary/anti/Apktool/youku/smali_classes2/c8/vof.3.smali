.class public Lc8/vof;
.super Ljava/lang/Object;
.source "LinkInfoRequest.java"

# interfaces
.implements Lc8/dOp;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private backUrl:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private h5Url:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/flowcustoms/data/OpenParams;)V
    .locals 2
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "mtop.taobao.baichuan.afc.linkinfo"

    iput-object v0, p0, Lc8/vof;->API_NAME:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/vof;->VERSION:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lc8/vof;->NEED_ECODE:Z

    .line 39
    iput-boolean v1, p0, Lc8/vof;->NEED_SESSION:Z

    .line 56
    iget-object v0, p1, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lc8/vof;->appKey:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lc8/vof;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/taobao/flowcustoms/data/OpenParams;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/vof;->action:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    iput-object v0, p0, Lc8/vof;->backUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lc8/vof;->sdkVersion:Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/vof;->extra:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    iput-object v0, p0, Lc8/vof;->h5Url:Ljava/lang/String;

    .line 63
    return-void
.end method
