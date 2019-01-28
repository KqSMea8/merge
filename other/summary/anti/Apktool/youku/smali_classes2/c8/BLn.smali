.class public Lc8/BLn;
.super Lc8/ALn;
.source "MtopUPasswordRequest.java"


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/ALn;-><init>()V

    .line 24
    const-string/jumbo v0, "mtop.com.youku.aplatform.weakGet"

    iput-object v0, p0, Lc8/BLn;->API_NAME:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/BLn;->VERSION:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/BLn;->NEED_ECODE:Z

    return-void
.end method


# virtual methods
.method public doMtopRequest(Ljava/util/HashMap;Lc8/JNp;)Lc8/ENp;
    .locals 3
    .param p2, "mtopListener"    # Lc8/JNp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/JNp;",
            ")",
            "Lc8/ENp;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 59
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v1, p0, Lc8/BLn;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lc8/BLn;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 61
    iget-boolean v1, p0, Lc8/BLn;->NEED_ECODE:Z

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 62
    invoke-static {p1}, Lc8/ELn;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v1

    invoke-static {}, Lc8/FDj;->getTtid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v1

    return-object v1
.end method
