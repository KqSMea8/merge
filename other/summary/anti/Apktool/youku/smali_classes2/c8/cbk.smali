.class public Lc8/cbk;
.super Ljava/lang/Object;
.source "ParseJson.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private parseCollection(Lorg/json/JSONObject;)Lc8/hbk;
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Lc8/hbk;

    invoke-direct {v1}, Lc8/hbk;-><init>()V

    .line 323
    .local v1, "exploreItemInfo":Lc8/hbk;
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 324
    .local v0, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 325
    const-string/jumbo v3, "video_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 326
    const-string/jumbo v3, "vv"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 327
    const-string/jumbo v3, "seconds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 328
    const-string/jumbo v3, "cover_img"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnailMedium:Ljava/lang/String;

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 329
    const-string/jumbo v3, "content"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    .local v2, "object":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 331
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 332
    const-string/jumbo v3, "last_view_vid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 334
    :cond_0
    const/16 v3, 0x2710

    iput v3, v1, Lc8/hbk;->type:I

    .line 335
    iput-object v0, v1, Lc8/hbk;->collectionInfo:Lcom/youku/phone/collection/module/CollectionInfo;

    .line 336
    return-object v1
.end method

.method private parseCollectionPool(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 356
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_5

    .line 358
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 359
    .local v5, "resultJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 360
    .local v0, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    const-string/jumbo v10, "deleted"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    .line 361
    iget-boolean v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    if-eqz v10, :cond_0

    .line 362
    const-string/jumbo v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 363
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    :cond_0
    const-string/jumbo v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 367
    const-string/jumbo v10, "statistics"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 368
    const-string/jumbo v10, "statistics"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "view_count"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 369
    const-string/jumbo v10, "statistics"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "view_count"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 371
    :cond_1
    const-string/jumbo v10, "sub_title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->subTitle:Ljava/lang/String;

    .line 372
    const-string/jumbo v10, "title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->editTitle:Ljava/lang/String;

    .line 373
    const-string/jumbo v10, "snippet"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 374
    const-string/jumbo v10, "snippet"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 375
    .local v6, "snippetJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    .line 376
    const-string/jumbo v10, "title"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 377
    const-string/jumbo v10, "uid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    .line 378
    const-string/jumbo v10, "video_count"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 379
    const-string/jumbo v10, "seconds"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 380
    const-string/jumbo v10, "last_view_vid"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 381
    const-string/jumbo v10, "change"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    .line 382
    const-string/jumbo v10, "thumbnails"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 383
    const-string/jumbo v10, "thumbnails"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 384
    .local v7, "thumbnailJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "default"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 385
    const-string/jumbo v10, "default"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 386
    const-string/jumbo v10, "medium"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnailMedium:Ljava/lang/String;

    .line 389
    .end local v7    # "thumbnailJson":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v10, "user"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 390
    const-string/jumbo v10, "user"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 391
    .local v8, "userJson":Lorg/json/JSONObject;
    new-instance v2, Lc8/fbk;

    invoke-direct {v2}, Lc8/fbk;-><init>()V

    .line 392
    .local v2, "creator":Lc8/fbk;
    const-string/jumbo v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lc8/fbk;->name:Ljava/lang/String;

    .line 393
    const-string/jumbo v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lc8/fbk;->id:Ljava/lang/String;

    .line 394
    const-string/jumbo v10, "followers_count"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 395
    const-string/jumbo v10, "verified"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lc8/fbk;->verified:I

    .line 396
    const-string/jumbo v10, "profile_image_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 397
    const-string/jumbo v10, "profile_image_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "big"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 399
    :cond_3
    iput-object v2, v0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 402
    .end local v2    # "creator":Lc8/fbk;
    .end local v6    # "snippetJson":Lorg/json/JSONObject;
    .end local v8    # "userJson":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 405
    .end local v0    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    .end local v1    # "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 406
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v9

    .line 408
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    return-object v1
.end method

.method private parseSubject(Lorg/json/JSONObject;)Lc8/hbk;
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 340
    new-instance v0, Lc8/hbk;

    invoke-direct {v0}, Lc8/hbk;-><init>()V

    .line 341
    .local v0, "exploreItemInfo":Lc8/hbk;
    new-instance v2, Lc8/jbk;

    invoke-direct {v2}, Lc8/jbk;-><init>()V

    .line 342
    .local v2, "subjectInfo":Lc8/jbk;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/jbk;->title:Ljava/lang/String;

    .line 343
    const-string/jumbo v3, "cover_img"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/jbk;->thumbnail:Ljava/lang/String;

    .line 344
    const-string/jumbo v3, "content"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 345
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 346
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/jbk;->subjectId:Ljava/lang/String;

    .line 348
    :cond_0
    const/16 v3, 0x2711

    iput v3, v0, Lc8/hbk;->type:I

    .line 349
    iput-object v2, v0, Lc8/hbk;->subjectInfo:Lc8/jbk;

    .line 350
    return-object v0
.end method


# virtual methods
.method public parseCollection()Lcom/youku/phone/collection/module/CollectionInfo;
    .locals 18

    .prologue
    .line 100
    new-instance v2, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v2}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 102
    .local v2, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "code"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "code"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "code"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, -0x135

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 202
    .end local v2    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 105
    .restart local v2    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "result"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string/jumbo v17, "result"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 107
    .local v7, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 108
    const-string/jumbo v16, "statistics"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 109
    const-string/jumbo v16, "statistics"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "view_count"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 110
    const-string/jumbo v16, "statistics"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "view_count"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 113
    :cond_3
    const-string/jumbo v16, "share_video_title"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 114
    const-string/jumbo v16, "share_video_title"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->shouldShareVideoTitle:Z

    .line 116
    :cond_4
    const-string/jumbo v16, "share_video_title"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->isEditorCtrl:Z

    .line 117
    const-string/jumbo v16, "collected"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->isLiked:Z

    .line 118
    const-string/jumbo v16, "snippet"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 119
    const-string/jumbo v16, "snippet"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 120
    .local v9, "snippetJson":Lorg/json/JSONObject;
    const-string/jumbo v16, "description"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    .line 121
    const-string/jumbo v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 122
    const-string/jumbo v16, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    .line 123
    const-string/jumbo v16, "video_count"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 124
    const-string/jumbo v16, "seconds"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 125
    const-string/jumbo v16, "h5_link"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    .line 126
    const-string/jumbo v16, "last_view_vid"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 127
    const-string/jumbo v16, "created_time"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->createdTime:J

    .line 128
    const-string/jumbo v16, "updated_time"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->updatedTime:J

    .line 129
    const-string/jumbo v16, "thumbnails"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 130
    const-string/jumbo v16, "thumbnails"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 131
    .local v10, "thumbnailJson":Lorg/json/JSONObject;
    const-string/jumbo v16, "default"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "url"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 133
    .end local v10    # "thumbnailJson":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v16, "change"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    .line 134
    const-string/jumbo v16, "user"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 135
    const-string/jumbo v16, "user"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 136
    .local v11, "userJson":Lorg/json/JSONObject;
    new-instance v3, Lc8/fbk;

    invoke-direct {v3}, Lc8/fbk;-><init>()V

    .line 137
    .local v3, "creator":Lc8/fbk;
    const-string/jumbo v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->name:Ljava/lang/String;

    .line 138
    const-string/jumbo v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->id:Ljava/lang/String;

    .line 139
    const-string/jumbo v16, "followers_count"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 140
    const-string/jumbo v16, "verified"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v3, Lc8/fbk;->verified:I

    .line 141
    const-string/jumbo v16, "profile_image_url"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 142
    const-string/jumbo v16, "profile_image_url"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "big"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 144
    :cond_6
    const-string/jumbo v16, "user_level"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 145
    const-string/jumbo v16, "user_level"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 146
    .local v6, "levelJson":Lorg/json/JSONObject;
    const-string/jumbo v16, "level"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v3, Lc8/fbk;->level:I

    .line 147
    const-string/jumbo v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "x2"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->iconX2:Ljava/lang/String;

    .line 148
    const-string/jumbo v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "x3"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->iconX3:Ljava/lang/String;

    .line 149
    const-string/jumbo v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "pc"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lc8/fbk;->iconPc:Ljava/lang/String;

    .line 151
    .end local v6    # "levelJson":Lorg/json/JSONObject;
    :cond_7
    const-string/jumbo v16, "flag"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 152
    const-string/jumbo v16, "flag"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v3, Lc8/fbk;->flag:I

    .line 154
    :cond_8
    iput-object v3, v2, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 157
    .end local v3    # "creator":Lc8/fbk;
    .end local v9    # "snippetJson":Lorg/json/JSONObject;
    .end local v11    # "userJson":Lorg/json/JSONObject;
    :cond_9
    const-string/jumbo v16, "videos"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 158
    const-string/jumbo v16, "videos"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "offset"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->offset:I

    .line 159
    const-string/jumbo v16, "videos"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "data"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 160
    .local v15, "videosJson":Lorg/json/JSONArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v14, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_11

    .line 162
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 163
    .local v13, "videoJson":Lorg/json/JSONObject;
    new-instance v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    invoke-direct {v12}, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;-><init>()V

    .line 164
    .local v12, "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    const-string/jumbo v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    .line 165
    const-string/jumbo v16, "duration"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    .line 166
    const-string/jumbo v16, "thumbnail"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    .line 167
    const-string/jumbo v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    .line 168
    const-string/jumbo v16, "limit"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->limit:I

    .line 169
    const-string/jumbo v16, "view_count"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->viewCount:I

    .line 170
    const-string/jumbo v16, "deleted"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->deleted:Z

    .line 171
    const-string/jumbo v16, "fmt_duration"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableDuration:Ljava/lang/String;

    .line 172
    const-string/jumbo v16, "fmt_view_count"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableViewCount:Ljava/lang/String;

    .line 173
    const-string/jumbo v16, "is_favorite"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isFavorite:Z

    .line 174
    const-string/jumbo v16, "show"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 175
    .local v8, "showObj":Lorg/json/JSONObject;
    const-string/jumbo v16, "paid"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->paidFlag:I

    .line 176
    const-string/jumbo v16, "public_type"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->publicTye:I

    .line 177
    const-string/jumbo v16, "rc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 178
    const-string/jumbo v16, "rc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->rcTitle:Ljava/lang/String;

    .line 180
    :cond_a
    const-string/jumbo v16, "has_rc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 181
    const-string/jumbo v16, "has_rc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    iget-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->rcTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_10

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->hasRcTitle:Z

    .line 183
    :cond_b
    const-string/jumbo v16, "show"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 184
    const-string/jumbo v16, "show"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "id"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->showId:Ljava/lang/String;

    .line 186
    :cond_c
    const-string/jumbo v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 187
    const-string/jumbo v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->category:Ljava/lang/String;

    .line 189
    :cond_d
    const-string/jumbo v16, "ugc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 190
    const-string/jumbo v16, "ugc_title"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->ugcTitle:Ljava/lang/String;

    .line 193
    :cond_e
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 114
    .end local v5    # "i":I
    .end local v8    # "showObj":Lorg/json/JSONObject;
    .end local v12    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .end local v13    # "videoJson":Lorg/json/JSONObject;
    .end local v14    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;>;"
    .end local v15    # "videosJson":Lorg/json/JSONArray;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 181
    .restart local v5    # "i":I
    .restart local v8    # "showObj":Lorg/json/JSONObject;
    .restart local v12    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .restart local v13    # "videoJson":Lorg/json/JSONObject;
    .restart local v14    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;>;"
    .restart local v15    # "videosJson":Lorg/json/JSONArray;
    :cond_10
    const/16 v16, 0x0

    goto :goto_3

    .line 195
    .end local v8    # "showObj":Lorg/json/JSONObject;
    .end local v12    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .end local v13    # "videoJson":Lorg/json/JSONObject;
    :cond_11
    iput-object v14, v2, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    .end local v5    # "i":I
    .end local v7    # "resultJson":Lorg/json/JSONObject;
    .end local v14    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;>;"
    .end local v15    # "videosJson":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public parseCollectionInfoList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    .line 213
    iget-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v12, "code"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v12, "code"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v12, "code"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, -0x135

    if-eq v11, v12, :cond_2

    :cond_0
    move-object v1, v10

    .line 267
    .end local v1    # "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    :cond_2
    iget-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v12, "result"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 216
    iget-object v11, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v12, "result"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 217
    .local v2, "collectionJsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 218
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 219
    .local v6, "resultJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 220
    .local v0, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    const-string/jumbo v11, "deleted"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    .line 221
    iget-boolean v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    if-eqz v11, :cond_3

    .line 222
    const-string/jumbo v11, "id"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    :cond_3
    const-string/jumbo v11, "id"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 227
    const-string/jumbo v11, "statistics"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 228
    const-string/jumbo v11, "statistics"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "view_count"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 229
    const-string/jumbo v11, "statistics"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "view_count"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 231
    :cond_4
    const-string/jumbo v11, "snippet"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 232
    const-string/jumbo v11, "snippet"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 233
    .local v7, "snippetJson":Lorg/json/JSONObject;
    const-string/jumbo v11, "description"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    .line 234
    const-string/jumbo v11, "title"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 235
    const-string/jumbo v11, "uid"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    .line 236
    const-string/jumbo v11, "video_count"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 237
    const-string/jumbo v11, "seconds"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 238
    const-string/jumbo v11, "last_view_vid"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 239
    const-string/jumbo v11, "change"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    .line 240
    const-string/jumbo v11, "h5_link"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    .line 241
    const-string/jumbo v11, "thumbnails"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 242
    const-string/jumbo v11, "thumbnails"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 243
    .local v8, "thumbnailJson":Lorg/json/JSONObject;
    const-string/jumbo v11, "medium"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 244
    const-string/jumbo v11, "medium"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "url"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 247
    .end local v8    # "thumbnailJson":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v11, "user"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 248
    const-string/jumbo v11, "user"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 249
    .local v9, "userJson":Lorg/json/JSONObject;
    new-instance v3, Lc8/fbk;

    invoke-direct {v3}, Lc8/fbk;-><init>()V

    .line 250
    .local v3, "creator":Lc8/fbk;
    const-string/jumbo v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lc8/fbk;->name:Ljava/lang/String;

    .line 251
    const-string/jumbo v11, "id"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lc8/fbk;->id:Ljava/lang/String;

    .line 252
    const-string/jumbo v11, "followers_count"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 253
    const-string/jumbo v11, "verified"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v3, Lc8/fbk;->verified:I

    .line 254
    const-string/jumbo v11, "profile_image_url"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 255
    const-string/jumbo v11, "profile_image_url"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "big"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 257
    :cond_6
    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 260
    .end local v3    # "creator":Lc8/fbk;
    .end local v7    # "snippetJson":Lorg/json/JSONObject;
    .end local v9    # "userJson":Lorg/json/JSONObject;
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 264
    .end local v0    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    .end local v2    # "collectionJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v10

    .line 267
    goto/16 :goto_0
.end method

.method public parseCollectionPool()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 271
    const/4 v1, 0x0

    .line 273
    .local v1, "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, -0x135

    if-eq v6, v7, :cond_1

    .line 285
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v5

    .line 276
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    const-string/jumbo v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 278
    .local v4, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "collections"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 279
    .local v0, "collectionInfoArray":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lc8/cbk;->parseCollectionPool(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "collectionInfoArray":Lorg/json/JSONArray;
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    :cond_2
    move-object v5, v1

    .line 281
    goto :goto_0

    .line 282
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseCreateCollection()Lcom/youku/phone/collection/module/CollectionInfo;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 37
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    .line 38
    iget-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x135

    if-eq v3, v4, :cond_2

    :cond_0
    move-object v0, v2

    .line 48
    :cond_1
    :goto_0
    return-object v0

    .line 40
    :cond_2
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 41
    .local v0, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    iget-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 48
    goto :goto_0
.end method

.method public parseDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x135

    if-eq v3, v4, :cond_0

    .line 55
    const-string/jumbo v3, ""

    .line 62
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 56
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v3, "desc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 59
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public parseExplore()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/hbk;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 289
    const/4 v3, 0x0

    .line 291
    .local v3, "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v13, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v8, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "code"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "code"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "code"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, -0x135

    if-eq v13, v14, :cond_1

    .line 293
    :cond_0
    const/4 v13, 0x0

    .line 318
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v13

    .line 294
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v13, "result"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 295
    const-string/jumbo v13, "result"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 296
    .local v10, "resultArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v3    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    .local v4, "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 298
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 299
    .local v0, "collectionInfosJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "elements"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 300
    .local v2, "elementArray":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 302
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 303
    .local v7, "jo":Lorg/json/JSONObject;
    const-string/jumbo v13, "content_type"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 304
    .local v12, "type":I
    if-nez v12, :cond_2

    .line 305
    invoke-direct {p0, v7}, Lc8/cbk;->parseCollection(Lorg/json/JSONObject;)Lc8/hbk;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 307
    :cond_2
    invoke-direct {p0, v7}, Lc8/cbk;->parseSubject(Lorg/json/JSONObject;)Lc8/hbk;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 315
    .end local v0    # "collectionInfosJsonObject":Lorg/json/JSONObject;
    .end local v2    # "elementArray":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;"
    .end local v12    # "type":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 316
    .end local v4    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    .end local v5    # "i":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "resultArray":Lorg/json/JSONArray;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const/4 v13, 0x0

    goto :goto_0

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    .restart local v0    # "collectionInfosJsonObject":Lorg/json/JSONObject;
    .restart local v2    # "elementArray":Lorg/json/JSONArray;
    .restart local v4    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;"
    .restart local v10    # "resultArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_2
    const-string/jumbo v13, "title"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, "title":Ljava/lang/String;
    invoke-interface {v4, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "collectionInfosJsonObject":Lorg/json/JSONObject;
    .end local v2    # "elementArray":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;"
    .end local v11    # "title":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .end local v4    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    .end local v5    # "i":I
    .end local v10    # "resultArray":Lorg/json/JSONArray;
    .restart local v3    # "explore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/youku/phone/collection/module/ExploreItemInfo;>;>;"
    :cond_5
    move-object v13, v3

    .line 314
    goto :goto_0

    .line 315
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public parseIsSubscribed()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, -0x135

    if-eq v4, v5, :cond_1

    .line 90
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 84
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 86
    const-string/jumbo v4, "followed"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 87
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseSuccessOrFailed()Z
    .locals 4

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 414
    .local v1, "isSuccess":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    .line 415
    iget-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "ok"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "ok"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    iget-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/cbk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, -0x135

    if-ne v2, v3, :cond_0

    .line 418
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseVidForDesc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/cbk;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x135

    if-eq v3, v4, :cond_0

    .line 69
    const-string/jumbo v3, ""

    .line 76
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 70
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 72
    const-string/jumbo v3, "vid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 73
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method
