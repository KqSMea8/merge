.class public Lcom/taobao/update/datasource/mtop/UpdateRequest;
.super Ljava/lang/Object;
.source "UpdateRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public apiLevel:J

.field public appVersion:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public dexcode:Ljava/lang/String;

.field public dexpatchVersion:J

.field public identifier:Ljava/lang/String;

.field public isYunos:Z

.field public locale:Ljava/lang/String;

.field public md5Sum:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public patchVersion:J

.field public updateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .param p1, "isOutApk"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "mtop.client.mudp.update"

    iput-object v0, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->API_NAME:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->VERSION:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->NEED_ECODE:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->NEED_SESSION:Z

    .line 37
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->model:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->locale:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->md5Sum:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->city:Ljava/lang/String;

    .line 60
    iput-wide v2, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->patchVersion:J

    .line 65
    iput-wide v2, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->dexpatchVersion:J

    .line 69
    iput-wide v2, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->apiLevel:J

    .line 73
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->appVersion:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->brand:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->identifier:Ljava/lang/String;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo v0, "mtop.client.mudp.update.outer"

    iput-object v0, p0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->API_NAME:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method
