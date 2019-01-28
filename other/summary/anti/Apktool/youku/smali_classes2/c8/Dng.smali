.class public Lc8/Dng;
.super Ljava/lang/Object;
.source "MtopAntConfigFetcher.java"

# interfaces
.implements Lc8/dOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Eng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopAntPullRequest"
.end annotation


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field public antVer:J

.field public context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;

.field public ver:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v0, "mtop.tmall.ant.api.antcoreserviceapi.allocateandtarget"

    iput-object v0, p0, Lc8/Dng;->API_NAME:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/Dng;->VERSION:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lc8/Dng;->NEED_ECODE:Z

    .line 100
    iput-boolean v1, p0, Lc8/Dng;->NEED_SESSION:Z

    .line 113
    iput-object v2, p0, Lc8/Dng;->context:Ljava/util/Map;

    .line 118
    iput-object v2, p0, Lc8/Dng;->deviceId:Ljava/lang/String;

    return-void
.end method
