.class public Lc8/hNf;
.super Ljava/lang/Object;
.source "DefaultLoginImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInvalidEvent"
.end annotation


# static fields
.field private static final HEADER_KEY:Ljava/lang/String; = "S"


# instance fields
.field public S_STATUS:Ljava/lang/String;

.field public apiName:Ljava/lang/String;

.field public appBackGround:Z

.field public eventName:Ljava/lang/String;

.field public long_nick:Ljava/lang/String;

.field public msgCode:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/hNf;->appBackGround:Z

    .line 287
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->apiName:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->v:Ljava/lang/String;

    .line 289
    invoke-static {}, Lc8/iNf;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/uMp;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->processName:Ljava/lang/String;

    .line 290
    invoke-static {}, Lc8/rQp;->isAppBackground()Z

    move-result v0

    iput-boolean v0, p0, Lc8/hNf;->appBackGround:Z

    .line 291
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "long_nick"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/hNf;->appBackGround:Z

    .line 276
    const-string/jumbo v0, "SESSION_INVALID"

    iput-object v0, p0, Lc8/hNf;->eventName:Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lc8/hNf;->long_nick:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->apiName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->v:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->msgCode:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "S"

    invoke-static {v0, v1}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->S_STATUS:Ljava/lang/String;

    .line 282
    invoke-static {}, Lc8/iNf;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/uMp;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hNf;->processName:Ljava/lang/String;

    .line 283
    invoke-static {}, Lc8/rQp;->isAppBackground()Z

    move-result v0

    iput-boolean v0, p0, Lc8/hNf;->appBackGround:Z

    .line 284
    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-static {p0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
