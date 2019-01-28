.class public Lc8/Pnb;
.super Lc8/Mnb;
.source "ALPFailOpenAppPoint.java"


# instance fields
.field public TTID:Ljava/lang/String;

.field public apiType:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field public clientType:Ljava/lang/String;

.field public failStrategy:Ljava/lang/String;

.field public isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 26
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    iput-object v0, p0, Lc8/Pnb;->TTID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProperty()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 36
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "isSuccess"

    iget-boolean v1, p0, Lc8/Pnb;->isSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v2, "appkey"

    iget-object v1, p0, Lc8/Pnb;->appkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "clientType"

    iget-object v1, p0, Lc8/Pnb;->clientType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v2, "failStrategy"

    iget-object v1, p0, Lc8/Pnb;->failStrategy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v2, "apiType"

    iget-object v1, p0, Lc8/Pnb;->apiType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Pnb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "unknown"

    :goto_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0

    .line 36
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lc8/Pnb;->appkey:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p0, Lc8/Pnb;->clientType:Ljava/lang/String;

    goto :goto_2

    .line 39
    :cond_3
    iget-object v1, p0, Lc8/Pnb;->failStrategy:Ljava/lang/String;

    goto :goto_3

    .line 40
    :cond_4
    iget-object v1, p0, Lc8/Pnb;->apiType:Ljava/lang/String;

    goto :goto_4

    .line 41
    :cond_5
    iget-object v1, p0, Lc8/Pnb;->TTID:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "cf.linkpartner.1.3"

    return-object v0
.end method
