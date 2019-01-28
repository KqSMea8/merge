.class public Lc8/Awk;
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static parseExtendArea(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V
    .locals 9
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .param p2, "column_pos"    # I

    .prologue
    .line 469
    const-string/jumbo v7, "extended_area"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 471
    const-string/jumbo v7, "extended_area"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 472
    .local v0, "extended_area_array":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 474
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 476
    .local v3, "extended_area_info_obj":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 477
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->isHasExtendedArea:Z

    .line 478
    new-instance v7, Lc8/DVo;

    invoke-direct {v7}, Lc8/DVo;-><init>()V

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    .line 479
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iput p2, v7, Lc8/DVo;->column_pos:I

    .line 480
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget v8, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v8, v7, Lc8/DVo;->column_id:I

    .line 481
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v8, v7, Lc8/DVo;->cn:Ljava/lang/String;

    .line 482
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    const-string/jumbo v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/DVo;->type:Ljava/lang/String;

    .line 483
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    const-string/jumbo v8, "layout"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lc8/DVo;->layout:I

    .line 485
    const-string/jumbo v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 487
    const-string/jumbo v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 488
    .local v1, "extended_area_data_array":Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 489
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v7, v7, Lc8/DVo;->homeExtendedAreaDatas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 490
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 491
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 492
    .local v2, "extended_area_data_obj":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 493
    new-instance v4, Lc8/CVo;

    invoke-direct {v4}, Lc8/CVo;-><init>()V

    .line 494
    .local v4, "homeExtendedAreaData":Lc8/CVo;
    const-string/jumbo v7, "jump_to_pgc"

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v8, v8, Lc8/DVo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    const-string/jumbo v7, "jump_to_pgc"

    iput-object v7, v4, Lc8/CVo;->jump_type:Ljava/lang/String;

    .line 496
    iput p2, v4, Lc8/CVo;->column_pos:I

    .line 497
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v4, Lc8/CVo;->column_id:I

    .line 498
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v4, Lc8/CVo;->cn:Ljava/lang/String;

    .line 499
    const-string/jumbo v7, "username"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->username:Ljava/lang/String;

    .line 500
    iget-object v7, v4, Lc8/CVo;->username:Ljava/lang/String;

    iput-object v7, v4, Lc8/CVo;->title:Ljava/lang/String;

    .line 501
    const-string/jumbo v7, "user_img"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->user_img:Ljava/lang/String;

    .line 502
    const-string/jumbo v7, "followers_count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lc8/CVo;->followers_count:I

    .line 503
    const-string/jumbo v7, "verified"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lc8/CVo;->verified:I

    .line 504
    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->user_id:Ljava/lang/String;

    .line 505
    const-string/jumbo v7, "user_desc"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->user_desc:Ljava/lang/String;

    .line 506
    const-string/jumbo v7, "flag"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->flag:Ljava/lang/String;

    .line 507
    const-string/jumbo v7, "user_id_encode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->user_id_encode:Ljava/lang/String;

    .line 548
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v7, v7, Lc8/DVo;->homeExtendedAreaDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v4    # "homeExtendedAreaData":Lc8/CVo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 508
    .restart local v4    # "homeExtendedAreaData":Lc8/CVo;
    :cond_2
    const-string/jumbo v7, "jump_to_big_word"

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v8, v8, Lc8/DVo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 509
    const-string/jumbo v7, "jump_to_big_word"

    iput-object v7, v4, Lc8/CVo;->jump_type:Ljava/lang/String;

    .line 510
    iput p2, v4, Lc8/CVo;->column_pos:I

    .line 511
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v4, Lc8/CVo;->column_id:I

    .line 512
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v4, Lc8/CVo;->cn:Ljava/lang/String;

    .line 513
    const-string/jumbo v7, "title"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->title:Ljava/lang/String;

    .line 514
    const-string/jumbo v7, "icon"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->icon:Ljava/lang/String;

    .line 515
    const-string/jumbo v7, "jump_info"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    const-string/jumbo v7, "jump_info"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 517
    .local v6, "jump_info_obj":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 518
    new-instance v7, Lcom/youku/vo/HomeTagInfo;

    invoke-direct {v7}, Lcom/youku/vo/HomeTagInfo;-><init>()V

    iput-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    .line 519
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 520
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "cid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 521
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v8, v4, Lc8/CVo;->title:Ljava/lang/String;

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    .line 522
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "channel_title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 523
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "sub_channel_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 524
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 525
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "url_open_way"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 526
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "hotword"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 527
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "jump_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 528
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "jump_id_encode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 529
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "cps_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->cps_id:Ljava/lang/String;

    .line 530
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 531
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "content_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->content_type:Ljava/lang/String;

    .line 532
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "content_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 533
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "first_episode_video_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->first_episode_video_id:Ljava/lang/String;

    .line 534
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "broadcast_image"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->broadcast_image:Ljava/lang/String;

    .line 535
    iget-object v7, v4, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "live_sdk_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    goto/16 :goto_1

    .line 538
    .end local v6    # "jump_info_obj":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v7, "jump_to_play_menu"

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    iget-object v8, v8, Lc8/DVo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 539
    const-string/jumbo v7, "jump_to_play_menu"

    iput-object v7, v4, Lc8/CVo;->jump_type:Ljava/lang/String;

    .line 540
    iput p2, v4, Lc8/CVo;->column_pos:I

    .line 541
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v4, Lc8/CVo;->column_id:I

    .line 542
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v4, Lc8/CVo;->cn:Ljava/lang/String;

    .line 544
    const-string/jumbo v7, "title"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->title:Ljava/lang/String;

    .line 545
    const-string/jumbo v7, "playlist_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->playlist_id:Ljava/lang/String;

    .line 546
    const-string/jumbo v7, "first_episode_video_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/CVo;->first_episode_video_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 557
    .end local v0    # "extended_area_array":Lorg/json/JSONArray;
    .end local v1    # "extended_area_data_array":Lorg/json/JSONArray;
    .end local v2    # "extended_area_data_obj":Lorg/json/JSONObject;
    .end local v3    # "extended_area_info_obj":Lorg/json/JSONObject;
    .end local v4    # "homeExtendedAreaData":Lc8/CVo;
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method public static parseHomeCardInfo(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V
    .locals 11
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .param p2, "column_pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 256
    iput p2, p0, Lcom/youku/vo/HomeCardInfo;->pos:I

    .line 257
    const-string/jumbo v7, "column_id"

    .line 258
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    .line 259
    const-string/jumbo v7, "is_youku_channel"

    .line 260
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->is_youku_channel:I

    .line 261
    const-string/jumbo v7, "card_type"

    .line 262
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->card_type:I

    .line 263
    const-string/jumbo v7, "box_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    const-string/jumbo v7, "box_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    .local v0, "boxTypeObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 266
    const-string/jumbo v7, "id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->box_type:I

    .line 268
    invoke-static {}, Lc8/Iin;->isPad()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    iget v10, p0, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-eq v7, v10, :cond_0

    const/16 v7, 0x8

    iget v10, p0, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-eq v7, v10, :cond_0

    const/16 v7, 0x9

    iget v10, p0, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-ne v7, v10, :cond_1

    .line 410
    .end local v0    # "boxTypeObj":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 273
    :cond_1
    const-string/jumbo v7, "cid"

    .line 274
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->cid:Ljava/lang/String;

    .line 275
    const-string/jumbo v7, "banner_id"

    .line 276
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_id:I

    .line 277
    const-string/jumbo v7, "normal_video_count"

    .line 278
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->normal_video_count:I

    .line 279
    const-string/jumbo v7, "banner_url"

    .line 280
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_url:Ljava/lang/String;

    .line 281
    const-string/jumbo v7, "banner_title"

    .line 282
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_title:Ljava/lang/String;

    .line 283
    const-string/jumbo v7, "banner_image"

    .line 284
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_image:Ljava/lang/String;

    .line 285
    const-string/jumbo v7, "banner_jump_type"

    .line 286
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_jump_type:Ljava/lang/String;

    .line 287
    const-string/jumbo v7, "content_type"

    .line 288
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_content_type:Ljava/lang/String;

    .line 289
    const-string/jumbo v7, "banner_jump_id"

    .line 290
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_jump_id:Ljava/lang/String;

    .line 291
    const-string/jumbo v7, "content_id"

    .line 292
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_content_id:Ljava/lang/String;

    .line 293
    const-string/jumbo v7, "first_episode_video_id"

    .line 294
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_first_episode_video_id:Ljava/lang/String;

    .line 295
    const-string/jumbo v7, "broadcast_image"

    .line 296
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_broadcast_image:Ljava/lang/String;

    .line 297
    const-string/jumbo v7, "cps_id"

    .line 298
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->banner_cps_id:Ljava/lang/String;

    .line 299
    const-string/jumbo v7, "advertisement_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->advertisement_id:I

    .line 300
    const-string/jumbo v7, "is_advertisement"

    .line 301
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "is_advertisement_banner":I
    if-eqz v1, :cond_5

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->is_advertisement_banner:Z

    .line 303
    const-string/jumbo v7, "hidden_header"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->isHiddenHeader:Z

    .line 304
    const-string/jumbo v7, "is_for_a_expansion"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->is_for_a_expansion:Z

    .line 305
    const-string/jumbo v7, "is_for_a_change"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    iput-boolean v8, p0, Lcom/youku/vo/HomeCardInfo;->is_for_a_change:Z

    .line 306
    const-string/jumbo v7, "expansion_count"

    .line 307
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->expansion_count:I

    .line 308
    const-string/jumbo v7, "url_open_way"

    .line 309
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->url_open_way:I

    .line 310
    const-string/jumbo v7, "image_state"

    .line 311
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->image_state:Ljava/lang/String;

    .line 312
    const-string/jumbo v7, "video_list_id"

    .line 313
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->video_list_id:I

    .line 314
    const-string/jumbo v7, "video_list_url"

    .line 315
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->video_list_url:Ljava/lang/String;

    .line 316
    const-string/jumbo v7, "bg_img"

    .line 317
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->bg_img:Ljava/lang/String;

    .line 318
    const-string/jumbo v7, "h5_height"

    .line 319
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->h5_height:Ljava/lang/String;

    .line 320
    const-string/jumbo v7, "h5_url"

    .line 321
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->h5_url:Ljava/lang/String;

    .line 322
    const-string/jumbo v7, "intro"

    .line 323
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->intro:Ljava/lang/String;

    .line 324
    const-string/jumbo v7, "live_sdk_type"

    .line 325
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/youku/vo/HomeCardInfo;->live_sdk_type:I

    .line 326
    const-string/jumbo v7, "rec_box_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    .line 327
    const-string/jumbo v7, "tag_word"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->tag_word:Ljava/lang/String;

    .line 329
    const-string/jumbo v7, "navigation_image"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->navigation_image:Ljava/lang/String;

    .line 331
    const-string/jumbo v7, "id"

    .line 332
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->id:Ljava/lang/String;

    .line 333
    const-string/jumbo v7, "testId"

    .line 334
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->testId:Ljava/lang/String;

    .line 335
    const-string/jumbo v7, "algInfo"

    .line 336
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->algInfo:Ljava/lang/String;

    .line 338
    const-string/jumbo v7, "navigation_image_jump_info"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 339
    const-string/jumbo v7, "navigation_image_jump_info"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 340
    .local v6, "naviObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 341
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 342
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "cid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 344
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "channel_title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 345
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "sub_channel_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 346
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 347
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "url_open_way"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 348
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "hotword"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 349
    const-string/jumbo v7, "subject_jump_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 350
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "subject_jump_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 354
    :goto_4
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "jump_id_encode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 355
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "cps_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->cps_id:Ljava/lang/String;

    .line 356
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 357
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "content_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->content_type:Ljava/lang/String;

    .line 358
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "content_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 359
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "first_episode_video_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->first_episode_video_id:Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "broadcast_image"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->broadcast_image:Ljava/lang/String;

    .line 361
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "live_sdk_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    .line 362
    const-string/jumbo v7, "jump_to_topic"

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v8, v8, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 363
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "topic_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 365
    :cond_2
    const-string/jumbo v7, "jump_to_live_broadcast"

    iget-object v8, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v8, v8, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 366
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "live_broadcast_url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 367
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "live_broadcast_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 368
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const/4 v8, 0x2

    iput v8, v7, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    .line 374
    .end local v6    # "naviObject":Lorg/json/JSONObject;
    :cond_3
    invoke-static {p0, p1, p2}, Lc8/Awk;->parseTitleData(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V

    .line 376
    invoke-static {}, Lc8/Efh;->isHomePageCanGoTop()Z

    move-result v7

    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->isCanGoTop:Z

    .line 378
    invoke-static {p0, p1, p2}, Lc8/Awk;->parsePosterInfo(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V

    .line 380
    invoke-static {p0, p1, p2}, Lc8/Awk;->parseTailer(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V

    .line 382
    invoke-static {p0, p1, p2}, Lc8/Awk;->parseExtendArea(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V

    .line 384
    invoke-static {p0, p1}, Lc8/Awk;->parseSliderCard(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;)V

    .line 386
    const-string/jumbo v7, "videos"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 387
    const-string/jumbo v7, "videos"

    .line 388
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 389
    .local v4, "jsonVideosArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "j":I
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 394
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 395
    .local v3, "jsonVideoObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 396
    new-instance v5, Lcom/youku/vo/HomeVideoInfo;

    invoke-direct {v5}, Lcom/youku/vo/HomeVideoInfo;-><init>()V

    .line 397
    .local v5, "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    iput v2, v5, Lcom/youku/vo/HomeVideoInfo;->pos:I

    .line 398
    iput p2, v5, Lcom/youku/vo/HomeVideoInfo;->column_pos:I

    .line 399
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v5, Lcom/youku/vo/HomeVideoInfo;->column_id:I

    .line 400
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v5, Lcom/youku/vo/HomeVideoInfo;->cn:Ljava/lang/String;

    .line 401
    const-string/jumbo v7, "home.channelVideoClick"

    iput-object v7, v5, Lcom/youku/vo/HomeVideoInfo;->statics_key:Ljava/lang/String;

    .line 402
    invoke-static {v5, v3}, Lc8/Awk;->parseHomeVideoInfo(Lcom/youku/vo/HomeVideoInfo;Lorg/json/JSONObject;)V

    .line 403
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    :goto_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeVideoInfo;->resourcetype:Ljava/lang/String;

    .line 404
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeVideoInfos:Ljava/util/ArrayList;

    .line 405
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v2    # "j":I
    .end local v3    # "jsonVideoObject":Lorg/json/JSONObject;
    .end local v4    # "jsonVideosArray":Lorg/json/JSONArray;
    :cond_5
    move v7, v9

    .line 302
    goto/16 :goto_0

    :cond_6
    move v7, v9

    .line 303
    goto/16 :goto_1

    :cond_7
    move v7, v9

    .line 304
    goto/16 :goto_2

    :cond_8
    move v8, v9

    .line 305
    goto/16 :goto_3

    .line 352
    .restart local v6    # "naviObject":Lorg/json/JSONObject;
    :cond_9
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v8, "jump_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    goto/16 :goto_4

    .line 403
    .end local v6    # "naviObject":Lorg/json/JSONObject;
    .restart local v2    # "j":I
    .restart local v3    # "jsonVideoObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonVideosArray":Lorg/json/JSONArray;
    .restart local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_a
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6
.end method

.method private static parseHomeVideoInfo(Lcom/youku/vo/HomeVideoInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "mHomeVideoInfo"    # Lcom/youku/vo/HomeVideoInfo;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    const-string/jumbo v2, "title"

    .line 116
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->title:Ljava/lang/String;

    .line 117
    const-string/jumbo v2, "subtitle"

    .line 118
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->subtitle:Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "summary"

    .line 120
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->summary:Ljava/lang/String;

    .line 121
    const-string/jumbo v2, "image"

    .line 122
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->image:Ljava/lang/String;

    .line 123
    const-string/jumbo v2, "tid"

    .line 124
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->tid:Ljava/lang/String;

    .line 125
    const-string/jumbo v2, "videoid"

    .line 126
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->videoid:Ljava/lang/String;

    .line 127
    const-string/jumbo v2, "paid"

    .line 128
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->paid:I

    .line 129
    const-string/jumbo v2, "type"

    .line 130
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->type:I

    .line 131
    const-string/jumbo v2, "playlist_id"

    .line 132
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->playlist_id:Ljava/lang/String;

    .line 133
    const-string/jumbo v2, "live_sdk_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->live_sdk_type:I

    .line 134
    const-string/jumbo v2, "url"

    .line 135
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->url:Ljava/lang/String;

    .line 136
    const-string/jumbo v2, "pgc_uid"

    .line 137
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->pgc_uid:Ljava/lang/String;

    .line 138
    const-string/jumbo v2, "username"

    .line 139
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->username:Ljava/lang/String;

    .line 140
    const-string/jumbo v2, "is_vv"

    .line 141
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->is_vv:I

    .line 142
    const-string/jumbo v2, "color_tag"

    .line 143
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->color_tag:I

    .line 144
    const-string/jumbo v2, "is_reputation"

    .line 145
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->is_reputation:I

    .line 146
    const-string/jumbo v2, "summary_location"

    .line 147
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->summary_location:I

    .line 148
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->pgc_uid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const/4 v2, 0x1

    iput v2, p0, Lcom/youku/vo/HomeVideoInfo;->summary_location:I

    .line 151
    :cond_0
    const-string/jumbo v2, "profile_image_url"

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->profile_image_url:Ljava/lang/String;

    .line 153
    const-string/jumbo v2, "game_relation"

    .line 154
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->game_relation:Ljava/lang/String;

    .line 155
    const-string/jumbo v2, "game_page_id"

    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->game_page_id:Ljava/lang/String;

    .line 157
    const-string/jumbo v2, "flag"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->flag:Ljava/lang/String;

    .line 158
    const-string/jumbo v2, "user_id_encode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->user_id_encode:Ljava/lang/String;

    .line 159
    const-string/jumbo v2, "recClickLogUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->recClickLogUrl:Ljava/lang/String;

    .line 160
    const-string/jumbo v2, "algInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->algInfo:Ljava/lang/String;

    .line 161
    const-string/jumbo v2, "sam"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->sam:Ljava/lang/String;

    .line 162
    const-string/jumbo v2, "scm"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->scm:Ljava/lang/String;

    .line 163
    const-string/jumbo v2, "req_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->req_id:Ljava/lang/String;

    .line 164
    const-string/jumbo v2, "recext"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->recext:Ljava/lang/String;

    .line 166
    const-string/jumbo v2, "membership_corner_mark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string/jumbo v2, "membership_corner_mark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    .local v0, "membership_corner_mark_obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 169
    new-instance v2, Lc8/vVo;

    invoke-direct {v2}, Lc8/vVo;-><init>()V

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    .line 170
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "text_color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->text_color:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "bg_color"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->bg_color:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lc8/vVo;->type:I

    .line 173
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "desc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->desc:Ljava/lang/String;

    .line 178
    .end local v0    # "membership_corner_mark_obj":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v2, "operation_corner_mark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-string/jumbo v2, "operation_corner_mark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    .local v1, "operation_corner_mark_obj":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 181
    new-instance v2, Lc8/vVo;

    invoke-direct {v2}, Lc8/vVo;-><init>()V

    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    .line 182
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "text_color"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->text_color:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "bg_color"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->bg_color:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lc8/vVo;->type:I

    .line 185
    iget-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    const-string/jumbo v3, "desc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vVo;->desc:Ljava/lang/String;

    .line 188
    .end local v1    # "operation_corner_mark_obj":Lorg/json/JSONObject;
    :cond_2
    return-void
.end method

.method public static parsePosterInfo(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V
    .locals 3
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .param p2, "column_pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 670
    const-string/jumbo v1, "poster_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-string/jumbo v1, "poster_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 672
    .local v0, "poster_info_obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isHasPoster:Z

    .line 674
    new-instance v1, Lcom/youku/vo/HomeVideoInfo;

    invoke-direct {v1}, Lcom/youku/vo/HomeVideoInfo;-><init>()V

    iput-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    .line 675
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    iput p2, v1, Lcom/youku/vo/HomeVideoInfo;->column_pos:I

    .line 676
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    iget v2, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v2, v1, Lcom/youku/vo/HomeVideoInfo;->column_id:I

    .line 677
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    iget-object v2, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/HomeVideoInfo;->cn:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    const-string/jumbo v2, "home.channelPosterClick"

    iput-object v2, v1, Lcom/youku/vo/HomeVideoInfo;->statics_key:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    invoke-static {v1, v0}, Lc8/Awk;->parseHomeVideoInfo(Lcom/youku/vo/HomeVideoInfo;Lorg/json/JSONObject;)V

    .line 680
    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    if-eqz v1, :cond_0

    .line 681
    iget-object v2, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/youku/vo/HomeVideoInfo;->resourcetype:Ljava/lang/String;

    .line 685
    .end local v0    # "poster_info_obj":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 681
    .restart local v0    # "poster_info_obj":Lorg/json/JSONObject;
    :cond_1
    iget v1, p0, Lcom/youku/vo/HomeCardInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseSliderCard(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 413
    const-string/jumbo v6, "slider"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    const-string/jumbo v6, "slider"

    .line 415
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 416
    .local v2, "jsonSlidersArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 417
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "j":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 421
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 422
    .local v1, "jsonSliderObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 423
    new-instance v5, Lcom/youku/vo/HomeVideoInfo;

    invoke-direct {v5}, Lcom/youku/vo/HomeVideoInfo;-><init>()V

    .line 424
    .local v5, "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    iput v0, v5, Lcom/youku/vo/HomeVideoInfo;->pos:I

    .line 425
    const/4 v6, 0x1

    iput v6, v5, Lcom/youku/vo/HomeVideoInfo;->column_pos:I

    .line 426
    iget v6, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v6, v5, Lcom/youku/vo/HomeVideoInfo;->column_id:I

    .line 427
    const-string/jumbo v6, "home.posterVideoClick"

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->statics_key:Ljava/lang/String;

    .line 428
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->cid:Ljava/lang/String;

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->cid:Ljava/lang/String;

    .line 429
    invoke-static {v5, v1}, Lc8/Awk;->parseHomeVideoInfo(Lcom/youku/vo/HomeVideoInfo;Lorg/json/JSONObject;)V

    .line 430
    const-string/jumbo v6, "clickLog"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->recClickLogUrl:Ljava/lang/String;

    .line 431
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->resourcetype:Ljava/lang/String;

    .line 432
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->sliders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .restart local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_1
    iget v6, p0, Lcom/youku/vo/HomeCardInfo;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 438
    .end local v0    # "j":I
    .end local v1    # "jsonSliderObject":Lorg/json/JSONObject;
    .end local v2    # "jsonSlidersArray":Lorg/json/JSONArray;
    .end local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_2
    const-string/jumbo v6, "navigation"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 439
    const-string/jumbo v6, "navigation"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/youku/vo/ChannelListTag;

    invoke-static {v6, v7}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/vo/HomeCardInfo;->mChannelListTag:Ljava/util/List;

    .line 443
    :cond_3
    const-string/jumbo v6, "under_slider"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 444
    const-string/jumbo v6, "under_slider"

    .line 445
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 446
    .local v4, "jsonUnderSlidersArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_6

    .line 447
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 448
    const/4 v0, 0x0

    .line 449
    .restart local v0    # "j":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 451
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 452
    .local v3, "jsonUnderSliderObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 453
    new-instance v5, Lcom/youku/vo/HomeVideoInfo;

    invoke-direct {v5}, Lcom/youku/vo/HomeVideoInfo;-><init>()V

    .line 454
    .restart local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    iput v0, v5, Lcom/youku/vo/HomeVideoInfo;->pos:I

    .line 455
    const/4 v6, 0x2

    iput v6, v5, Lcom/youku/vo/HomeVideoInfo;->column_pos:I

    .line 456
    iget v6, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v6, v5, Lcom/youku/vo/HomeVideoInfo;->column_id:I

    .line 457
    const-string/jumbo v6, "home.hotVideo"

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->statics_key:Ljava/lang/String;

    .line 458
    invoke-static {v5, v3}, Lc8/Awk;->parseHomeVideoInfo(Lcom/youku/vo/HomeVideoInfo;Lorg/json/JSONObject;)V

    .line 459
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->rec_box_type:Ljava/lang/String;

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/HomeVideoInfo;->resourcetype:Ljava/lang/String;

    .line 460
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->under_sliders:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 459
    .restart local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_5
    iget v6, p0, Lcom/youku/vo/HomeCardInfo;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 466
    .end local v0    # "j":I
    .end local v3    # "jsonUnderSliderObject":Lorg/json/JSONObject;
    .end local v4    # "jsonUnderSlidersArray":Lorg/json/JSONArray;
    .end local v5    # "mHomeVideoInfo":Lcom/youku/vo/HomeVideoInfo;
    :cond_6
    return-void
.end method

.method public static parseTailer(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V
    .locals 8
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .param p2, "column_pos"    # I

    .prologue
    const/4 v5, 0x1

    .line 560
    const-string/jumbo v6, "tail"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 561
    const-string/jumbo v6, "tail"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 562
    .local v4, "tail_info_obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 563
    iput-boolean v5, p0, Lcom/youku/vo/HomeCardInfo;->isHasTail:Z

    .line 564
    new-instance v6, Lcom/youku/vo/HomeTagInfo;

    invoke-direct {v6}, Lcom/youku/vo/HomeTagInfo;-><init>()V

    iput-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    .line 566
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iput p2, v6, Lcom/youku/vo/HomeTagInfo;->column_pos:I

    .line 567
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->column_id:I

    .line 568
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cn:Ljava/lang/String;

    .line 570
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "type"

    .line 571
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 572
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "cid"

    .line 573
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 574
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "title"

    .line 575
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    .line 576
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "channel_title"

    .line 577
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 578
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "sub_channel_id"

    .line 579
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 580
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "url"

    .line 581
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 582
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "url_open_way"

    .line 583
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 584
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "hotword"

    .line 585
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 586
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "subject_jump_id"

    .line 587
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 588
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "jump_id_encode"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 589
    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    const-string/jumbo v7, "flag"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 591
    const-string/jumbo v6, "is_for_d_area_tag"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_0
    iput-boolean v5, p0, Lcom/youku/vo/HomeCardInfo;->is_for_d_area_tag:Z

    .line 593
    const-string/jumbo v5, "jump_to_sub_channel"

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 594
    iget-object v5, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    .line 601
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/youku/vo/HomeCardInfo;->is_for_d_area_tag:Z

    if-eqz v5, :cond_8

    .line 602
    const-string/jumbo v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 603
    const-string/jumbo v5, "tags"

    .line 604
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 605
    .local v2, "jsonTagsArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_8

    .line 606
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 607
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 608
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 609
    .local v1, "jsonTagObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 610
    new-instance v3, Lcom/youku/vo/HomeTagInfo;

    invoke-direct {v3}, Lcom/youku/vo/HomeTagInfo;-><init>()V

    .line 611
    .local v3, "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    iput p2, v3, Lcom/youku/vo/HomeTagInfo;->column_pos:I

    .line 612
    iget v5, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v5, v3, Lcom/youku/vo/HomeTagInfo;->column_id:I

    .line 613
    iget-object v5, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cn:Ljava/lang/String;

    .line 615
    const-string/jumbo v5, "type"

    .line 616
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 617
    const-string/jumbo v5, "cid"

    .line 618
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 619
    const-string/jumbo v5, "title"

    .line 620
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    .line 621
    const-string/jumbo v5, "channel_title"

    .line 622
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 623
    const-string/jumbo v5, "url"

    .line 624
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 625
    const-string/jumbo v5, "url_open_way"

    .line 626
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 627
    const-string/jumbo v5, "sub_channel_id"

    .line 628
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 629
    const-string/jumbo v5, "game_id"

    .line 630
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->game_id:Ljava/lang/String;

    .line 631
    const-string/jumbo v5, "hotword"

    .line 632
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 633
    const-string/jumbo v5, "jump_id"

    .line 634
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 635
    const-string/jumbo v5, "jump_id_encode"

    .line 636
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 637
    const-string/jumbo v5, "cps_id"

    .line 638
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cps_id:Ljava/lang/String;

    .line 639
    const-string/jumbo v5, "flag"

    .line 640
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 641
    const-string/jumbo v5, "content_type"

    .line 642
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->content_type:Ljava/lang/String;

    .line 643
    const-string/jumbo v5, "content_id"

    .line 644
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 645
    const-string/jumbo v5, "first_episode_video_id"

    .line 646
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->first_episode_video_id:Ljava/lang/String;

    .line 647
    const-string/jumbo v5, "broadcast_image"

    .line 648
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->broadcast_image:Ljava/lang/String;

    .line 649
    const-string/jumbo v5, "live_sdk_type"

    .line 650
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    .line 652
    const-string/jumbo v5, "jump_to_sub_channel"

    iget-object v6, v3, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 653
    iget-object v5, v3, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    .line 659
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/youku/vo/HomeCardInfo;->homeTailTagInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v3    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 591
    .end local v0    # "j":I
    .end local v1    # "jsonTagObject":Lorg/json/JSONObject;
    .end local v2    # "jsonTagsArray":Lorg/json/JSONArray;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 595
    :cond_4
    const-string/jumbo v5, "jump_to_channel"

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 596
    iget-object v5, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto/16 :goto_1

    .line 597
    :cond_5
    const-string/jumbo v5, "jump_to_hotword"

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    iget-object v5, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    iget-object v6, v6, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    iput-object v6, v5, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto/16 :goto_1

    .line 654
    .restart local v0    # "j":I
    .restart local v1    # "jsonTagObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonTagsArray":Lorg/json/JSONArray;
    .restart local v3    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    :cond_6
    const-string/jumbo v5, "jump_to_channel"

    iget-object v6, v3, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 655
    iget-object v5, v3, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto :goto_3

    .line 656
    :cond_7
    const-string/jumbo v5, "jump_to_hotword"

    iget-object v6, v3, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 657
    iget-object v5, v3, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    iput-object v5, v3, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto :goto_3

    .line 667
    .end local v0    # "j":I
    .end local v1    # "jsonTagObject":Lorg/json/JSONObject;
    .end local v2    # "jsonTagsArray":Lorg/json/JSONArray;
    .end local v3    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    .end local v4    # "tail_info_obj":Lorg/json/JSONObject;
    :cond_8
    return-void
.end method

.method public static parseTitleData(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V
    .locals 9
    .param p0, "mHomeCardInfo"    # Lcom/youku/vo/HomeCardInfo;
    .param p1, "jsonResultObject"    # Lorg/json/JSONObject;
    .param p2, "column_pos"    # I

    .prologue
    .line 688
    const-string/jumbo v7, "header"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 689
    const-string/jumbo v7, "header"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 690
    .local v0, "headerObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 691
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/youku/vo/HomeCardInfo;->isHasHeader:Z

    .line 692
    const-string/jumbo v7, "title"

    .line 693
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    .line 694
    const-string/jumbo v7, "image"

    .line 695
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->image:Ljava/lang/String;

    .line 696
    const-string/jumbo v7, "image_link"

    .line 697
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->image_link:Ljava/lang/String;

    .line 699
    const-string/jumbo v7, "jump_info"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 700
    const-string/jumbo v7, "jump_info"

    .line 701
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 702
    .local v2, "jsonJumpInfoObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 703
    new-instance v5, Lcom/youku/vo/HomeJumpInfo;

    invoke-direct {v5}, Lcom/youku/vo/HomeJumpInfo;-><init>()V

    .line 704
    .local v5, "mHomeJumpInfo":Lcom/youku/vo/HomeJumpInfo;
    iput p2, v5, Lcom/youku/vo/HomeJumpInfo;->column_pos:I

    .line 705
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v5, Lcom/youku/vo/HomeJumpInfo;->column_id:I

    .line 706
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->cn:Ljava/lang/String;

    .line 707
    const-string/jumbo v7, "cps_id"

    .line 708
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->cps_id:Ljava/lang/String;

    .line 709
    const-string/jumbo v7, "type"

    .line 710
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->type:Ljava/lang/String;

    .line 711
    const-string/jumbo v7, "cid"

    .line 712
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->cid:Ljava/lang/String;

    .line 713
    const-string/jumbo v7, "title"

    .line 714
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->title:Ljava/lang/String;

    .line 715
    const-string/jumbo v7, "url"

    .line 716
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->url:Ljava/lang/String;

    .line 717
    const-string/jumbo v7, "url_open_way"

    .line 718
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/youku/vo/HomeJumpInfo;->url_open_way:I

    .line 719
    const-string/jumbo v7, "sub_channel_id"

    .line 720
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/youku/vo/HomeJumpInfo;->sub_channel_id:I

    .line 721
    const-string/jumbo v7, "game_id"

    .line 722
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/HomeJumpInfo;->game_id:Ljava/lang/String;

    .line 723
    iput-object v5, p0, Lcom/youku/vo/HomeCardInfo;->homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

    .line 727
    .end local v2    # "jsonJumpInfoObject":Lorg/json/JSONObject;
    .end local v5    # "mHomeJumpInfo":Lcom/youku/vo/HomeJumpInfo;
    :cond_0
    const-string/jumbo v7, "tags"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 728
    const-string/jumbo v7, "tags"

    .line 729
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 730
    .local v4, "jsonTagsArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_6

    .line 731
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 732
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 733
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 734
    .local v3, "jsonTagObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 735
    new-instance v6, Lcom/youku/vo/HomeTagInfo;

    invoke-direct {v6}, Lcom/youku/vo/HomeTagInfo;-><init>()V

    .line 736
    .local v6, "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    iput p2, v6, Lcom/youku/vo/HomeTagInfo;->column_pos:I

    .line 737
    iget v7, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->column_id:I

    .line 738
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cn:Ljava/lang/String;

    .line 740
    const-string/jumbo v7, "type"

    .line 741
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 742
    const-string/jumbo v7, "cid"

    .line 743
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 744
    const-string/jumbo v7, "title"

    .line 745
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    .line 746
    const-string/jumbo v7, "channel_title"

    .line 747
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 748
    const-string/jumbo v7, "url"

    .line 749
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 750
    const-string/jumbo v7, "url_open_way"

    .line 751
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 752
    const-string/jumbo v7, "sub_channel_id"

    .line 753
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 754
    const-string/jumbo v7, "game_id"

    .line 755
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->game_id:Ljava/lang/String;

    .line 756
    const-string/jumbo v7, "hotword"

    .line 757
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 758
    const-string/jumbo v7, "jump_id"

    .line 759
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 760
    const-string/jumbo v7, "jump_id_encode"

    .line 761
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 762
    const-string/jumbo v7, "cps_id"

    .line 763
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cps_id:Ljava/lang/String;

    .line 764
    const-string/jumbo v7, "flag"

    .line 765
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 766
    const-string/jumbo v7, "content_type"

    .line 767
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->content_type:Ljava/lang/String;

    .line 768
    const-string/jumbo v7, "content_id"

    .line 769
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 770
    const-string/jumbo v7, "first_episode_video_id"

    .line 771
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->first_episode_video_id:Ljava/lang/String;

    .line 772
    const-string/jumbo v7, "broadcast_image"

    .line 773
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->broadcast_image:Ljava/lang/String;

    .line 774
    const-string/jumbo v7, "live_sdk_type"

    .line 775
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    .line 777
    const-string/jumbo v7, "jump_to_sub_channel"

    iget-object v8, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 778
    iget-object v7, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    .line 784
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    .end local v6    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 779
    .restart local v6    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    :cond_3
    const-string/jumbo v7, "jump_to_channel"

    iget-object v8, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 780
    iget-object v7, v6, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto :goto_1

    .line 781
    :cond_4
    const-string/jumbo v7, "jump_to_hotword"

    iget-object v8, v6, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 782
    iget-object v7, v6, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    iput-object v7, v6, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    goto :goto_1

    .line 790
    .end local v1    # "j":I
    .end local v3    # "jsonTagObject":Lorg/json/JSONObject;
    .end local v4    # "jsonTagsArray":Lorg/json/JSONArray;
    .end local v6    # "mHomeTagInfo":Lcom/youku/vo/HomeTagInfo;
    :cond_5
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    .line 795
    .end local v0    # "headerObj":Lorg/json/JSONObject;
    :cond_6
    :goto_2
    return-void

    .line 793
    :cond_7
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public parseFlow()I
    .locals 4

    .prologue
    .line 47
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "flow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "flow":I
    return v1

    .line 48
    .end local v1    # "flow":I
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseHomeAppleAdData()Lcom/youku/phone/home/data/HomeAdData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/youku/phone/home/data/HomeAdData;

    invoke-direct {v0}, Lcom/youku/phone/home/data/HomeAdData;-><init>()V

    .line 194
    .local v0, "data":Lcom/youku/phone/home/data/HomeAdData;
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 195
    iget-object v1, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "adv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "adv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/youku/phone/home/data/HomeAdData;

    invoke-static {v1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "data":Lcom/youku/phone/home/data/HomeAdData;
    check-cast v0, Lcom/youku/phone/home/data/HomeAdData;

    .line 206
    .restart local v0    # "data":Lcom/youku/phone/home/data/HomeAdData;
    :cond_0
    return-object v0
.end method

.method public parseHomePageDataInfo()Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/youku/vo/HomeCardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "homeCardInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/youku/vo/HomeCardInfo;>;"
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 80
    iget-object v6, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    iget-object v6, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 83
    .local v5, "jsonResultsArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 85
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "homeCardInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/youku/vo/HomeCardInfo;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 87
    .restart local v2    # "homeCardInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/youku/vo/HomeCardInfo;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "column_pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 91
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 92
    .local v4, "jsonResultObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 93
    new-instance v1, Lcom/youku/vo/HomeCardInfo;

    invoke-direct {v1}, Lcom/youku/vo/HomeCardInfo;-><init>()V

    .line 95
    .local v1, "homeCardInfo":Lcom/youku/vo/HomeCardInfo;
    invoke-static {v1, v4, v0}, Lc8/Awk;->parseHomeCardInfo(Lcom/youku/vo/HomeCardInfo;Lorg/json/JSONObject;I)V

    .line 97
    invoke-static {}, Lc8/Iin;->isPad()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    iget v7, v1, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-eq v6, v7, :cond_2

    const/16 v6, 0x8

    iget v7, v1, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-eq v6, v7, :cond_2

    const/16 v6, 0x9

    iget v7, v1, Lcom/youku/vo/HomeCardInfo;->box_type:I

    if-eq v6, v7, :cond_2

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/youku/vo/HomeCardInfo;->isYoukuChannel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 105
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "homeCardInfo":Lcom/youku/vo/HomeCardInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "column_pos":I
    .end local v3    # "i":I
    .end local v4    # "jsonResultObject":Lorg/json/JSONObject;
    .end local v5    # "jsonResultsArray":Lorg/json/JSONArray;
    :cond_3
    return-object v2
.end method

.method public parseHomeTabsData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/EVo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HomeTabInfo;>;"
    new-instance v12, Lorg/json/JSONObject;

    iget-object v13, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 213
    iget-object v12, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v13, "cards"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 214
    iget-object v12, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v13, "cards"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 215
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 216
    new-instance v12, Lc8/EVo;

    invoke-direct {v12}, Lc8/EVo;-><init>()V

    .line 217
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 218
    .local v8, "object":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lc8/EVo;

    invoke-static {v12, v13}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/EVo;

    .line 219
    .local v11, "tabInfo":Lc8/EVo;
    const-string/jumbo v12, "search_key"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 220
    const-string/jumbo v12, "search_key"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 221
    .local v10, "searchArray":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 222
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v11, Lc8/EVo;->search_key:Ljava/lang/String;

    .line 226
    .end local v10    # "searchArray":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v12, "filters"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 227
    const-string/jumbo v12, "filters"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 228
    .local v2, "filterWappers":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 229
    new-instance v3, Lcom/youku/vo/FilterWrapper;

    invoke-direct {v3}, Lcom/youku/vo/FilterWrapper;-><init>()V

    .line 230
    .local v3, "filterWrapper":Lcom/youku/vo/FilterWrapper;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 231
    .local v4, "filterWrapperObject":Lorg/json/JSONObject;
    const-string/jumbo v12, "title"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/youku/vo/FilterWrapper;->title:Ljava/lang/String;

    .line 232
    const-string/jumbo v12, "filter"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/youku/vo/FilterWrapper;->mfilterList:Ljava/lang/String;

    .line 233
    const-string/jumbo v12, "is_all"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Lcom/youku/vo/FilterWrapper;->is_all:I

    .line 234
    iget-object v12, v11, Lc8/EVo;->filterWrapperList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 238
    .end local v2    # "filterWappers":Lorg/json/JSONArray;
    .end local v3    # "filterWrapper":Lcom/youku/vo/FilterWrapper;
    .end local v4    # "filterWrapperObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 241
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v11    # "tabInfo":Lc8/EVo;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 242
    .local v1, "count":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v9, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HomeTabInfo;>;"
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    .line 244
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/EVo;

    .line 245
    .restart local v11    # "tabInfo":Lc8/EVo;
    invoke-static {}, Lc8/Iin;->isPad()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "jump_to_interaction_card"

    iget-object v13, v11, Lc8/EVo;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 246
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 250
    .end local v11    # "tabInfo":Lc8/EVo;
    :cond_4
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 252
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v6    # "index":I
    .end local v9    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HomeTabInfo;>;"
    :cond_5
    return-object v7
.end method

.method public parseReqId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v1, ""

    .line 69
    .local v1, "req_id":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 70
    iget-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "req_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseSam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    const-string/jumbo v1, ""

    .line 58
    .local v1, "sam":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 59
    iget-object v2, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "sam"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseWhichType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/Awk;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lc8/Awk;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "is_das"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "isDas":I
    return v0
.end method
