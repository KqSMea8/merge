.class public Lc8/dGb;
.super Ljava/lang/Object;


# instance fields
.field public appKey:Ljava/lang/String;

.field public arg:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/dGb;->appKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/dGb;->channel:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/dGb;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/dGb;->arg:Ljava/lang/String;

    return-void
.end method
