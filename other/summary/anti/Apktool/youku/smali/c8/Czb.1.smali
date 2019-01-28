.class public Lc8/Czb;
.super Ljava/lang/Object;
.source "UTConfigUtils.java"


# static fields
.field private static final ORANGE_CONF_PREFIX:Ljava/lang/String; = "B02N"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertJsonConfToOrange(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "aConfContent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v3, "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 35
    .local v2, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, "lKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "lValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 39
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "lValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v3
.end method

.method public static final convertKVToDBConfigEntity(Ljava/lang/String;Ljava/util/Map;J)Lc8/Dzb;
    .locals 2
    .param p0, "aGroupname"    # Ljava/lang/String;
    .param p2, "aTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lc8/Dzb;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "aConfKVContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Dzb;

    invoke-direct {v0}, Lc8/Dzb;-><init>()V

    .line 122
    .local v0, "lOnlineEitity":Lc8/Dzb;
    invoke-static {p1}, Lc8/aCb;->transMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Dzb;->setConfContent(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p0}, Lc8/Dzb;->setGroupname(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2, p3}, Lc8/Dzb;->setConfTimestamp(J)V

    .line 125
    return-object v0
.end method

.method public static final convertOnlineJsonConfToUTDBConfigEntities(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 14
    .param p0, "aJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v1, p0

    .line 57
    .local v1, "lConfJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 58
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v9, "lOnlineConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 60
    .local v8, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 63
    .local v7, "lKey":Ljava/lang/String;
    const-string/jumbo v12, "B02N"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 64
    const/4 v4, 0x0

    .line 66
    .local v4, "lDataObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 71
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const-string/jumbo v13, "B02N"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-le v12, v13, :cond_1

    .line 72
    const-string/jumbo v12, "B02N"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    :cond_1
    if-eqz v4, :cond_0

    .line 75
    const-string/jumbo v12, "content"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "lDataStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v12, "gc_304"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 78
    new-instance v6, Lc8/Dzb;

    invoke-direct {v6}, Lc8/Dzb;-><init>()V

    .line 79
    .local v6, "lEntity":Lc8/Dzb;
    invoke-virtual {v6, v7}, Lc8/Dzb;->setGroupname(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Lc8/Dzb;->set304Flag()V

    .line 81
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v5    # "lDataStr":Ljava/lang/String;
    .end local v6    # "lEntity":Lc8/Dzb;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v5    # "lDataStr":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 85
    .local v3, "lContentObj":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v12, "content"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 90
    :goto_2
    const-wide/16 v10, 0x0

    .line 91
    .local v10, "lTimestamp":J
    const-string/jumbo v12, "t"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 93
    :try_start_2
    const-string/jumbo v12, "t"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v10

    .line 99
    :cond_3
    :goto_3
    if-eqz v3, :cond_0

    .line 100
    invoke-static {v3}, Lc8/Czb;->convertJsonConfToOrange(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 101
    .local v2, "lConfKVContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7, v2, v10, v11}, Lc8/Czb;->convertKVToDBConfigEntity(Ljava/lang/String;Ljava/util/Map;J)Lc8/Dzb;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    .end local v2    # "lConfKVContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "lTimestamp":J
    :catch_1
    move-exception v0

    .line 87
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v10    # "lTimestamp":J
    :catch_2
    move-exception v0

    .line 95
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 109
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "lContentObj":Lorg/json/JSONObject;
    .end local v4    # "lDataObj":Lorg/json/JSONObject;
    .end local v5    # "lDataStr":Ljava/lang/String;
    .end local v7    # "lKey":Ljava/lang/String;
    .end local v8    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "lOnlineConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    .end local v10    # "lTimestamp":J
    :cond_4
    const/4 v9, 0x0

    :cond_5
    return-object v9
.end method
