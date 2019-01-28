.class public Lc8/Rnb;
.super Lc8/Mnb;
.source "ALPFlowLostFlyPoint.java"


# instance fields
.field public TTID:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public currentVC:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 22
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    iput-object v0, p0, Lc8/Rnb;->TTID:Ljava/lang/String;

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
    .line 31
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 32
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "targetUrl"

    iget-object v1, p0, Lc8/Rnb;->targetUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v2, "currentAppkey"

    iget-object v1, p0, Lc8/Rnb;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v2, "currentVC"

    iget-object v1, p0, Lc8/Rnb;->currentVC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Rnb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lc8/Rnb;->targetUrl:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lc8/Rnb;->appKey:Ljava/lang/String;

    goto :goto_1

    .line 34
    :cond_2
    iget-object v1, p0, Lc8/Rnb;->currentVC:Ljava/lang/String;

    goto :goto_2

    .line 35
    :cond_3
    iget-object v1, p0, Lc8/Rnb;->TTID:Ljava/lang/String;

    goto :goto_3
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "cf.linkpartner.1.1"

    return-object v0
.end method
