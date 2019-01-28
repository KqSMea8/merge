.class public Lc8/abk;
.super Ljava/lang/Object;
.source "CollectionHttpRequest.java"


# static fields
.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFavoriteVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/SIj;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lc8/SIj;

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Lc8/dbk;->getAddFavorite()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "json":Ljava/lang/String;
    new-instance v1, Lcom/youku/network/HttpIntent;

    const-string/jumbo v5, "POST"

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lc8/mbk;

    invoke-direct {v2}, Lc8/mbk;-><init>()V

    .line 160
    .local v2, "httpRequest":Lc8/mbk;
    invoke-virtual {v2, v1, p3, v3}, Lc8/mbk;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v2    # "httpRequest":Lc8/mbk;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addVideosToCollection(Ljava/lang/String;Ljava/util/Map;Lc8/SIj;)V
    .locals 11
    .param p0, "clid"    # Ljava/lang/String;
    .param p2, "callBack"    # Lc8/SIj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/SIj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "videoIdAndTitle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lc8/dbk;->getAddVideosToCollectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "url":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    .local v6, "key":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v9, "title"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 83
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "videos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "json":Ljava/lang/String;
    new-instance v1, Lcom/youku/network/HttpIntent;

    const-string/jumbo v8, "POST"

    const/4 v9, 0x1

    invoke-direct {v1, v7, v8, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lc8/mbk;

    invoke-direct {v2}, Lc8/mbk;-><init>()V

    .line 86
    .local v2, "httpRequest":Lc8/mbk;
    invoke-virtual {v2, v1, p2, v3}, Lc8/mbk;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static createCollection(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 27
    invoke-static {p0}, Lc8/dbk;->getCreateCollectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 30
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 31
    return-void
.end method

.method public static deleteCollection(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 38
    invoke-static {p0}, Lc8/dbk;->getDeleteCollectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 41
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 42
    return-void
.end method

.method public static deleteVideosFromCollection(Ljava/lang/String;[Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "callBack"    # Lc8/SIj;

    .prologue
    .line 99
    invoke-static {p0, p1}, Lc8/dbk;->getDeleteVideosFromCollectionUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 102
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p2}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 103
    return-void
.end method

.method public static disLikeCollection(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 142
    invoke-static {p0}, Lc8/dbk;->getUserDislikeCollectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 145
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 146
    return-void
.end method

.method public static getExploreV2(Lc8/SIj;)V
    .locals 5
    .param p0, "callBack"    # Lc8/SIj;

    .prologue
    .line 243
    invoke-static {}, Lc8/dbk;->getExploreUrlV2()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 246
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p0}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 247
    return-void
.end method

.method public static getIsSubscribed(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 297
    invoke-static {p0}, Lc8/dbk;->getIsSubscribedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 300
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 301
    return-void
.end method

.method public static getMyFavorite(ILc8/SIj;)V
    .locals 5
    .param p0, "page"    # I
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 216
    invoke-static {p0}, Lc8/dbk;->getMyFavorite(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 219
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 220
    return-void
.end method

.method public static getRecommend(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "collectionID"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 226
    invoke-static {p0}, Lc8/dbk;->getRecommendUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 229
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 230
    return-void
.end method

.method public static getUserCreatedCollections(Lc8/SIj;)V
    .locals 5
    .param p0, "callBack"    # Lc8/SIj;

    .prologue
    .line 109
    invoke-static {}, Lc8/dbk;->getUserCreatedUrl()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 112
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p0}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 113
    return-void
.end method

.method public static likeCollection(Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/SIj;

    .prologue
    .line 130
    invoke-static {p0}, Lc8/dbk;->getUserLikeCollectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 133
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 134
    return-void
.end method

.method public static updateCollection(Ljava/lang/String;Ljava/lang/String;Lc8/SIj;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "callBack"    # Lc8/SIj;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lc8/dbk;->getUpdateCollectionUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v1, Lc8/mbk;

    invoke-direct {v1}, Lc8/mbk;-><init>()V

    .line 64
    .local v1, "httpRequest":Lc8/TIj;
    invoke-interface {v1, v0, p2}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 65
    return-void
.end method
