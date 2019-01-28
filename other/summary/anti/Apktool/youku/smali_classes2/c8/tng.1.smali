.class public abstract Lc8/tng;
.super Lc8/rng;
.source "NativeBucketFetcher.java"


# instance fields
.field private effectiveMapByCM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Vng;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveMapByPage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Vng;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/sng;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucketFetcherReader"    # Lc8/sng;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lc8/rng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/tng;->effectiveMapByCM:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/tng;->effectiveMapByPage:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private updateEffectiveCache(Ljava/lang/String;Ljava/lang/String;Lc8/Vng;)V
    .locals 10
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "syncGroup"    # Lc8/Vng;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {p1, p2}, Lc8/Wng;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "key":Ljava/lang/String;
    iget-object v8, p0, Lc8/tng;->effectiveMapByCM:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vng;

    .line 94
    .local v2, "effectiveGroup":Lc8/Vng;
    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    .line 95
    :try_start_0
    iget-object v8, p0, Lc8/tng;->effectiveMapByCM:Ljava/util/Map;

    invoke-interface {v8, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v7, p3, Lc8/Vng;->pageName:Ljava/util/List;

    .line 98
    .local v7, "pageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 101
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    .local v6, "pageName":Ljava/lang/String;
    iget-object v8, p0, Lc8/tng;->effectiveMapByPage:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 103
    .local v3, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-nez v3, :cond_2

    .line 104
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v3    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 106
    .restart local v3    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    :cond_2
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v8, p0, Lc8/tng;->effectiveMapByPage:Ljava/util/Map;

    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v3    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pageName":Ljava/lang/String;
    .end local v7    # "pageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v2, :cond_5

    if-eqz p3, :cond_5

    .line 111
    :try_start_1
    iget v8, v2, Lc8/Vng;->antId:I

    iget v9, p3, Lc8/Vng;->antId:I

    if-ne v8, v9, :cond_4

    iget v8, v2, Lc8/Vng;->releaseId:I

    iget v9, p3, Lc8/Vng;->releaseId:I

    if-eq v8, v9, :cond_0

    .line 115
    :cond_4
    invoke-virtual {v2, p3}, Lc8/Vng;->copy(Lc8/Vng;)V

    goto :goto_0

    .line 117
    :cond_5
    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 118
    iget-object v8, p0, Lc8/tng;->effectiveMapByCM:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v8, p0, Lc8/tng;->effectiveMapByPage:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 120
    .local v1, "eachGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected getBucketByGroup(Lc8/Vng;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "group"    # Lc8/Vng;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "needTrack"    # Z

    .prologue
    .line 35
    if-eqz p4, :cond_0

    .line 36
    invoke-direct {p0, p2, p3, p1}, Lc8/tng;->updateEffectiveCache(Ljava/lang/String;Ljava/lang/String;Lc8/Vng;)V

    .line 38
    :cond_0
    if-nez p1, :cond_2

    .line 39
    const/4 v1, 0x0

    .line 47
    :cond_1
    :goto_0
    return-object v1

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lc8/Vng;->getItemBy(Ljava/lang/String;Ljava/lang/String;)Lc8/Wng;

    move-result-object v0

    .line 43
    .local v0, "item":Lc8/Wng;
    if-eqz v0, :cond_1

    .line 44
    invoke-static {p1}, Lc8/mog;->commitAntOperativePoint(Lc8/Vng;)V

    .line 45
    iget-object v1, v0, Lc8/Wng;->bucket:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEffectiveAbtestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lc8/tng;->effectiveMapByPage:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 55
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v4

    .line 58
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vng;

    .line 60
    .local v1, "group":Lc8/Vng;
    const-string/jumbo v6, "aliabtest"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lc8/Vng;->releaseId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lc8/Vng;->groupId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "group":Lc8/Vng;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 65
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "result":Ljava/lang/String;
    :cond_4
    goto :goto_0
.end method

.method public getEffectiveAbtestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "result":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lc8/tng;->effectiveMapByCM:Ljava/util/Map;

    invoke-static {p1, p2}, Lc8/Wng;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vng;

    .line 74
    .local v1, "group":Lc8/Vng;
    if-eqz v1, :cond_0

    sget-object v3, Lc8/Vng;->EMPTY_GROUP:Lc8/Vng;

    if-eq v1, v3, :cond_0

    .line 75
    const-string/jumbo v3, "aliabtest"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lc8/Vng;->releaseId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lc8/Vng;->groupId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_0
    return-object v2
.end method
