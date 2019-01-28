.class public Lc8/DUf;
.super Ljava/lang/Object;
.source "MudpUpdateRequest.java"

# interfaces
.implements Lc8/dOp;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public apiLevel:J

.field public appVersion:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public md5Sum:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public netStatus:J

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
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "mtop.client.mudp.update"

    iput-object v0, p0, Lc8/DUf;->API_NAME:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/DUf;->VERSION:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/DUf;->NEED_ECODE:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DUf;->NEED_SESSION:Z

    .line 42
    iput-object v1, p0, Lc8/DUf;->model:Ljava/lang/String;

    .line 44
    iput-wide v2, p0, Lc8/DUf;->netStatus:J

    .line 49
    iput-object v1, p0, Lc8/DUf;->locale:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lc8/DUf;->md5Sum:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lc8/DUf;->city:Ljava/lang/String;

    .line 69
    iput-wide v2, p0, Lc8/DUf;->patchVersion:J

    .line 74
    iput-wide v2, p0, Lc8/DUf;->apiLevel:J

    .line 79
    iput-object v1, p0, Lc8/DUf;->appVersion:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lc8/DUf;->brand:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lc8/DUf;->identifier:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lc8/DUf;->group:Ljava/lang/String;

    return-void
.end method
