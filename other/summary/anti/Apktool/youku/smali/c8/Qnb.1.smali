.class public Lc8/Qnb;
.super Lc8/Mnb;
.source "ALPFlowGetPassPoint.java"


# instance fields
.field public TTID:Ljava/lang/String;

.field public currentAppkey:Ljava/lang/String;

.field public currentPN:Ljava/lang/String;

.field public sourcePN:Ljava/lang/String;

.field public sourceVC:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 41
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    iput-object v0, p0, Lc8/Qnb;->TTID:Ljava/lang/String;

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
    .line 50
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sourcePN"

    iget-object v1, p0, Lc8/Qnb;->sourcePN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v2, "currentPN"

    iget-object v1, p0, Lc8/Qnb;->currentPN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v2, "targetUrl"

    iget-object v1, p0, Lc8/Qnb;->targetUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v2, "sourceVC"

    iget-object v1, p0, Lc8/Qnb;->sourceVC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v2, "currentAppkey"

    iget-object v1, p0, Lc8/Qnb;->currentAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Qnb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "unknown"

    :goto_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lc8/Qnb;->sourcePN:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lc8/Qnb;->currentPN:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_2
    iget-object v1, p0, Lc8/Qnb;->targetUrl:Ljava/lang/String;

    goto :goto_2

    .line 54
    :cond_3
    iget-object v1, p0, Lc8/Qnb;->sourceVC:Ljava/lang/String;

    goto :goto_3

    .line 55
    :cond_4
    iget-object v1, p0, Lc8/Qnb;->currentAppkey:Ljava/lang/String;

    goto :goto_4

    .line 56
    :cond_5
    iget-object v1, p0, Lc8/Qnb;->TTID:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "cf.linkpartner.1.2"

    return-object v0
.end method
