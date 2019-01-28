.class public Lc8/sof;
.super Lc8/wof;
.source "DefaultMtopAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/wof;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V
    .locals 5
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p4, "ecode"    # Z
    .param p5, "listener"    # Lc8/xof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/xof;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p3}, Lc8/sof;->addCheckParams(Ljava/util/Map;)V

    .line 33
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 35
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v2, p1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, p2}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, p4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 40
    invoke-static {p3}, Lc8/qPp;->converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lc8/rof;

    invoke-direct {v1, p0, p5}, Lc8/rof;-><init>(Lc8/sof;Lc8/xof;)V

    .line 74
    .local v1, "remoteListener":Lc8/AMf;
    const-string/jumbo v3, "INNER"

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    iget-object v4, v4, Lc8/unf;->mtopId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    invoke-static {v2}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/HMf;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/HMf;->registeListener(Lc8/CMf;)Lc8/HMf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/HMf;->startRequest()V

    goto :goto_0

    .line 77
    :cond_2
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->mtopId:Ljava/lang/String;

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    iget-object v4, v4, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v3, v4}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    .line 78
    .local v0, "mtop":Lc8/AOp;
    invoke-static {v0, v2}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;)Lc8/GMf;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/GMf;->registerListener(Lc8/CMf;)Lc8/GMf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/GMf;->startRequest()V

    goto :goto_0
.end method
