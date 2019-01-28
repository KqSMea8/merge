.class public Lc8/wng;
.super Lc8/ung;
.source "PullWebBucketFetcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/sng;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucketFetcherReader"    # Lc8/sng;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/ung;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getEffectiveGroup(Ljava/lang/String;Ljava/lang/String;)Lc8/Vng;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, p1, p2}, Lc8/wng;->getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 26
    .local v0, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    return-object v2

    .line 30
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ung;

    iget-object v1, v2, Lc8/Ung;->groups:Ljava/util/List;

    .line 31
    .local v1, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, v3

    .line 32
    goto :goto_0

    .line 35
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vng;

    goto :goto_0
.end method
