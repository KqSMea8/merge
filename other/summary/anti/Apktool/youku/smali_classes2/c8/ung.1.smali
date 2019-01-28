.class public Lc8/ung;
.super Lc8/rng;
.source "WebBucketFetcher.java"


# instance fields
.field private webEffectiveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 34
    invoke-direct {p0, p1, p2}, Lc8/rng;-><init>(Landroid/content/Context;Lc8/sng;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    .line 35
    return-void
.end method

.method private compareScheme(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_3
    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method private compareUri(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 10
    .param p1, "origin"    # Landroid/net/Uri;
    .param p2, "module"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v6, v7

    .line 188
    :cond_1
    :goto_0
    return v6

    .line 155
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lc8/ung;->compareScheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 159
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "moduleQuery":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 167
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 168
    .local v2, "moduleParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    .line 169
    .local v5, "originParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "moduleValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 178
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    .line 179
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "moduleValue":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 184
    goto :goto_0

    .end local v2    # "moduleParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "moduleQuery":Ljava/lang/String;
    .end local v5    # "originParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    move v6, v7

    .line 188
    goto :goto_0
.end method

.method private isH5Url(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "abtestId"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lc8/ung;->isH5Url(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 236
    :cond_1
    iget-object v0, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getBucketByGroup(Lc8/Vng;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "group"    # Lc8/Vng;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "needTrack"    # Z

    .prologue
    .line 99
    move-object v6, p3

    .line 100
    .local v6, "originUrl":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 101
    const-string/jumbo v10, ""

    invoke-direct {p0, v6, v10}, Lc8/ung;->updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v6    # "originUrl":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 104
    .restart local v6    # "originUrl":Ljava/lang/String;
    :cond_0
    iget-object v10, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    if-eqz v10, :cond_1

    iget-object v10, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 105
    :cond_1
    const-string/jumbo v10, ""

    invoke-direct {p0, v6, v10}, Lc8/ung;->updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v10, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/Wng;

    iget-object v10, v10, Lc8/Wng;->bucket:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "targetUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 110
    const-string/jumbo v10, ""

    invoke-direct {p0, v6, v10}, Lc8/ung;->updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 116
    .local v5, "originUri":Landroid/net/Uri;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 117
    .local v8, "targetUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    .line 118
    .local v3, "originParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v7

    .line 120
    .local v7, "targetParameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 121
    .local v4, "originQueryMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 126
    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-static {v9, v4}, Lc8/nog;->batchAddQueryParametersToUrl(Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)Ljava/lang/String;

    move-result-object v9

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "aliabtest"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lc8/Vng;->releaseId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lc8/Vng;->groupId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "abtestId":Ljava/lang/String;
    const-string/jumbo v10, "abtest"

    invoke-static {v9, v10, v0}, Lc8/nog;->replaceQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 135
    const-string/jumbo v10, ""

    invoke-direct {p0, v6, v10}, Lc8/ung;->updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_6
    invoke-direct {p0, v9, v0}, Lc8/ung;->updateWebEffectiveList(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {p1, v6, v9}, Lc8/mog;->commitRewritePoint(Lc8/Vng;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 143
    goto/16 :goto_0
.end method

.method public getEffectiveAbtestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-direct {p0, p1}, Lc8/ung;->isH5Url(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 221
    :goto_0
    return-object v3

    .line 213
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, "pageNameUri":Landroid/net/Uri;
    iget-object v3, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 216
    iget-object v3, p0, Lc8/ung;->webEffectiveList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 217
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lc8/ung;->compareUri(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object v3, v4

    .line 221
    goto :goto_0
.end method

.method public getEffectiveAbtestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 19
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
    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ung;->bucketFetcherReader:Lc8/sng;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lc8/sng;->getWebCache()Ljava/util/Map;

    move-result-object v16

    .line 40
    .local v16, "webCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 94
    :cond_1
    :goto_0
    return-object v3

    .line 46
    :cond_2
    move-object/from16 v15, p2

    .local v15, "originUrl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "tmall://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 47
    const/4 v3, 0x0

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 52
    .local v14, "originUri":Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "effectiveWebList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    const/4 v6, 0x0

    .line 56
    .local v6, "findMatchExp":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "componentModule":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 58
    .local v5, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 62
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Ung;

    .line 64
    .local v4, "experiment":Lc8/Ung;
    iget-object v8, v4, Lc8/Ung;->groups:Ljava/util/List;

    .line 65
    .local v8, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 69
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Vng;

    .line 70
    .local v7, "group":Lc8/Vng;
    iget-object v0, v7, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lc8/Wng;

    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/Wng;->module:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "itemModule":Ljava/lang/String;
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 72
    .local v11, "index":I
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    add-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 76
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "//"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 79
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 81
    .local v13, "moduleUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lc8/ung;->compareUri(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 82
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v6, 0x1

    .line 89
    .end local v4    # "experiment":Lc8/Ung;
    .end local v7    # "group":Lc8/Vng;
    .end local v8    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    .end local v11    # "index":I
    .end local v12    # "itemModule":Ljava/lang/String;
    .end local v13    # "moduleUri":Landroid/net/Uri;
    :cond_8
    if-nez v6, :cond_1

    goto/16 :goto_1
.end method
