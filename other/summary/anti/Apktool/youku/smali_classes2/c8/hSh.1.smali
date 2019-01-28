.class public Lc8/hSh;
.super Ljava/lang/Object;
.source "MtopYoukuHaibaoAppconfigLoadRequest.java"

# interfaces
.implements Lc8/dOp;


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public debug:I

.field public device:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public layout_ver:J

.field public root:Ljava/lang/String;

.field public system_info:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v1, "mtop.youku.haibao.appconfig.load"

    iput-object v1, p0, Lc8/hSh;->API_NAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v1, "1.0"

    iput-object v1, p0, Lc8/hSh;->VERSION:Ljava/lang/String;

    .line 32
    iput-boolean v5, p0, Lc8/hSh;->NEED_ECODE:Z

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/hSh;->NEED_SESSION:Z

    .line 43
    iput-object v4, p0, Lc8/hSh;->system_info:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lc8/hSh;->root:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lc8/hSh;->extra:Ljava/lang/String;

    .line 59
    const-wide/32 v2, 0x186a0

    iput-wide v2, p0, Lc8/hSh;->layout_ver:J

    .line 65
    iput-object v4, p0, Lc8/hSh;->type:Ljava/lang/String;

    .line 71
    const-string/jumbo v1, "ANDROID"

    iput-object v1, p0, Lc8/hSh;->device:Ljava/lang/String;

    .line 75
    iput v5, p0, Lc8/hSh;->debug:I

    .line 78
    new-instance v0, Lc8/kSh;

    invoke-direct {v0}, Lc8/kSh;-><init>()V

    .line 79
    .local v0, "systemInfo":Lc8/kSh;
    invoke-virtual {v0}, Lc8/kSh;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/hSh;->system_info:Ljava/lang/String;

    .line 80
    return-void
.end method
