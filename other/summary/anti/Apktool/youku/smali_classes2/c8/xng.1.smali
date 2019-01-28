.class public Lc8/xng;
.super Lc8/tng;
.source "PushNativeBucketFetcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/sng;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucketFetcherReader"    # Lc8/sng;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/tng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    .line 26
    iget-object v1, p0, Lc8/xng;->bucketFetcherReader:Lc8/sng;

    invoke-interface {v1}, Lc8/sng;->getNativeCache()Ljava/util/Map;

    move-result-object v0

    .line 27
    .local v0, "nativeCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1, p2}, Lc8/Wng;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method
