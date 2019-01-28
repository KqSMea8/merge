.class public Lc8/Rhn;
.super Ljava/lang/Object;
.source "PreCacheRequestInfo.java"


# instance fields
.field public apiName:Ljava/lang/String;

.field public apiVer:Ljava/lang/String;

.field public needCode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, "mtop.tudou.subscribe.service.subscribe.cache.list"

    iput-object v0, p0, Lc8/Rhn;->apiName:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/Rhn;->apiVer:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Rhn;->needCode:Z

    return-void
.end method
