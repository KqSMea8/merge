.class public Lc8/Zx;
.super Ljava/lang/Object;
.source "BundleListingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseArray(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 22
    .param p0, "listingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Yx;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 227
    .local v12, "infos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 228
    .local v5, "array":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 229
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 230
    .local v13, "object":Lorg/json/JSONObject;
    new-instance v11, Lc8/Yx;

    invoke-direct {v11}, Lc8/Yx;-><init>()V

    .line 231
    .local v11, "info":Lc8/Yx;
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->name:Ljava/lang/String;

    .line 232
    const-string/jumbo v20, "pkgName"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 233
    const-string/jumbo v20, "applicationName"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 234
    const-string/jumbo v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->version:Ljava/lang/String;

    .line 235
    const-string/jumbo v20, "desc"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->desc:Ljava/lang/String;

    .line 236
    const-string/jumbo v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->url:Ljava/lang/String;

    .line 237
    const-string/jumbo v20, "md5"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->md5:Ljava/lang/String;

    .line 238
    const-string/jumbo v20, "unique_tag"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, "uniqueTag":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 240
    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "uniqueTag is empty"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 242
    :cond_0
    const-string/jumbo v20, "unique_tag"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 243
    const-string/jumbo v20, "isInternal"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 244
    const-string/jumbo v20, "isInternal"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v11, Lc8/Yx;->isInternal:Z

    .line 247
    :cond_1
    const-string/jumbo v20, "dependency"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 248
    .local v8, "dependency":Lorg/json/JSONArray;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 249
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v9, "dependencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_2

    .line 251
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v11, v9}, Lc8/Yx;->setDependency(Ljava/util/List;)V

    .line 256
    .end local v9    # "dependencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i":I
    :cond_3
    const-string/jumbo v20, "activities"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 257
    .local v3, "activities":Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 258
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v4, "activitiesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 260
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 262
    :cond_4
    iput-object v4, v11, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 265
    .end local v4    # "activitiesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v10    # "i":I
    :cond_5
    const-string/jumbo v20, "services"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 266
    .local v16, "services":Lorg/json/JSONArray;
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 267
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v17, "servicesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 269
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 271
    :cond_6
    move-object/from16 v0, v17

    iput-object v0, v11, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 274
    .end local v10    # "i":I
    .end local v17    # "servicesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    const-string/jumbo v20, "receivers"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 275
    .local v14, "receivers":Lorg/json/JSONArray;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 276
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v15, "receiversList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 278
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 280
    :cond_8
    iput-object v15, v11, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 283
    .end local v10    # "i":I
    .end local v15    # "receiversList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_9
    const-string/jumbo v20, "contentProviders"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 284
    .local v6, "contentProviders":Lorg/json/JSONArray;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 285
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v7, "contentProvidersList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 287
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 289
    :cond_a
    iput-object v7, v11, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 292
    .end local v7    # "contentProvidersList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v10    # "i":I
    :cond_b
    invoke-virtual {v11}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 295
    .end local v3    # "activities":Lorg/json/JSONArray;
    .end local v6    # "contentProviders":Lorg/json/JSONArray;
    .end local v8    # "dependency":Lorg/json/JSONArray;
    .end local v11    # "info":Lc8/Yx;
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "receivers":Lorg/json/JSONArray;
    .end local v16    # "services":Lorg/json/JSONArray;
    .end local v18    # "uniqueTag":Ljava/lang/String;
    :cond_c
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v20

    if-lez v20, :cond_d

    .end local v12    # "infos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    :goto_6
    return-object v12

    .restart local v12    # "infos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    :cond_d
    const/4 v12, 0x0

    goto :goto_6
.end method
