.class public Lc8/CG;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/BG;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    const-string/jumbo v1, "{}"

    .line 21
    .local v1, "content":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v0, "appsObj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 24
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    if-nez v7, :cond_0

    move-object v8, v1

    .line 46
    .end local v0    # "appsObj":Lorg/json/JSONObject;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :goto_0
    return-object v8

    .line 27
    .restart local v0    # "appsObj":Lorg/json/JSONObject;
    .restart local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 29
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/BG;

    .line 30
    .local v5, "infoSnippet":Lc8/BG;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v6, "infosObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "count"

    iget-wide v10, v5, Lc8/BG;->count:D

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v8, "failCount"

    iget v9, v5, Lc8/BG;->failCount:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v8, "needReinstall"

    iget-boolean v9, v5, Lc8/BG;->needReinstall:Z

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v8, "lastAccessTime"

    iget-wide v10, v5, Lc8/BG;->lastAccessTime:J

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v8, "name"

    iget-object v9, v5, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    .end local v0    # "appsObj":Lorg/json/JSONObject;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "infoSnippet":Lc8/BG;
    .end local v6    # "infosObj":Lorg/json/JSONObject;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const-string/jumbo v8, "JsonUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u7f13\u5b58\u7b97\u6cd5\u6a21\u5757\u5e8f\u5217\u5316\u5931\u8d25 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v8, v1

    .line 46
    goto :goto_0

    .line 38
    .restart local v0    # "appsObj":Lorg/json/JSONObject;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_0

    .line 40
    .end local v0    # "appsObj":Lorg/json/JSONObject;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :cond_2
    const-string/jumbo v1, "{}"

    .line 45
    goto :goto_2
.end method
