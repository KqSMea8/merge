.class public Lc8/vng;
.super Lc8/tng;
.source "PullNativeBucketFetcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/sng;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucketFetcherReader"    # Lc8/sng;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lc8/tng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getEffectiveGroup(Ljava/lang/String;Ljava/lang/String;)Lc8/Vng;
    .locals 6
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    iget-object v3, p0, Lc8/vng;->bucketFetcherReader:Lc8/sng;

    invoke-interface {v3}, Lc8/sng;->getNativeCache()Ljava/util/Map;

    move-result-object v2

    .line 28
    .local v2, "nativeCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 41
    :goto_0
    return-object v3

    .line 31
    :cond_1
    invoke-static {p1, p2}, Lc8/Wng;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 32
    .local v0, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v4

    .line 33
    goto :goto_0

    .line 36
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Ung;

    iget-object v1, v3, Lc8/Ung;->groups:Ljava/util/List;

    .line 37
    .local v1, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v3, v4

    .line 38
    goto :goto_0

    .line 41
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Vng;

    goto :goto_0
.end method

.method protected getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
