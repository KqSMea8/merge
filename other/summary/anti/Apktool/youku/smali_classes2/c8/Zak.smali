.class public Lc8/Zak;
.super Ljava/lang/Object;
.source "SQLiteManager.java"


# static fields
.field public static final FAVORITE:Ljava/lang/String; = "favorite_"

.field public static final TABLE_NAME_COLLECTION_INFO:Ljava/lang/String; = "collection_info"

.field public static final TABLE_NAME_COLLECTION_PLAY_HISTORY:Ljava/lang/String; = "collection_play_history"

.field public static final TABLE_NAME_USER_CREATED:Ljava/lang/String; = "user_created"

.field public static final TABLE_NAME_USER_INFO:Ljava/lang/String; = "user_info"

.field public static final TABLE_NAME_USER_LIKED:Ljava/lang/String; = "user_liked"

.field public static final TABLE_NAME_VIDEO_INFO:Ljava/lang/String; = "video_info"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCollection(Lcom/youku/phone/collection/module/CollectionInfo;)V
    .locals 13
    .param p0, "collectionInfo"    # Lcom/youku/phone/collection/module/CollectionInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 350
    :try_start_0
    sget-object v8, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 351
    sput-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 352
    invoke-static {p0}, Lc8/Zak;->formCollectionContentValues(Lcom/youku/phone/collection/module/CollectionInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 354
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    if-eqz v8, :cond_4

    .line 355
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    invoke-static {v8}, Lc8/Zak;->formUserContentValues(Lc8/fbk;)Landroid/content/ContentValues;

    move-result-object v3

    .line 362
    .local v3, "ucv":Landroid/content/ContentValues;
    :goto_0
    if-eqz v3, :cond_0

    .line 363
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "user_info"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uid=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v11, v11, Lc8/fbk;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_5

    move v2, v6

    .line 365
    .local v2, "success":Z
    :goto_1
    if-nez v2, :cond_0

    .line 366
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "user_info"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 368
    .end local v2    # "success":Z
    :cond_0
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "collection_info"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "clid=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_6

    move v2, v6

    .line 370
    .restart local v2    # "success":Z
    :goto_2
    if-nez v2, :cond_1

    .line 371
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "collection_info"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 372
    :cond_1
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    .line 373
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    .line 374
    .local v5, "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    iget-object v9, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-static {v5, v9}, Lc8/Zak;->formVideoContentValues(Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 375
    .local v4, "vcv":Landroid/content/ContentValues;
    sget-object v9, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "video_info"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "vid=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\" AND clid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_7

    move v2, v6

    .line 378
    :goto_4
    if-nez v2, :cond_2

    .line 379
    sget-object v9, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "video_info"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 384
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "success":Z
    .end local v3    # "ucv":Landroid/content/ContentValues;
    .end local v4    # "vcv":Landroid/content/ContentValues;
    .end local v5    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "SQLiteManager.addCollection()"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    return-void

    .line 357
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    new-instance v8, Lc8/fbk;

    invoke-direct {v8}, Lc8/fbk;-><init>()V

    iput-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 358
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v9, p0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    iput-object v9, v8, Lc8/fbk;->id:Ljava/lang/String;

    .line 359
    iget-object v8, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    invoke-static {v8}, Lc8/Zak;->formUserContentValues(Lc8/fbk;)Landroid/content/ContentValues;

    move-result-object v3

    .restart local v3    # "ucv":Landroid/content/ContentValues;
    goto/16 :goto_0

    :cond_5
    move v2, v7

    .line 363
    goto/16 :goto_1

    :cond_6
    move v2, v7

    .line 368
    goto/16 :goto_2

    .restart local v2    # "success":Z
    .restart local v4    # "vcv":Landroid/content/ContentValues;
    .restart local v5    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :cond_7
    move v2, v7

    .line 375
    goto :goto_4

    .line 382
    .end local v4    # "vcv":Landroid/content/ContentValues;
    .end local v5    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :cond_8
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 383
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    goto :goto_5

    .line 387
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "success":Z
    .end local v3    # "ucv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 388
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    :cond_9
    throw v6
.end method

.method public static addUserLikedCollection(Lcom/youku/phone/collection/module/CollectionInfo;)V
    .locals 5
    .param p0, "collectionInfo"    # Lcom/youku/phone/collection/module/CollectionInfo;

    .prologue
    .line 394
    sget-object v2, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 396
    :try_start_0
    invoke-static {p0}, Lc8/Zak;->addCollection(Lcom/youku/phone/collection/module/CollectionInfo;)V

    .line 397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v0, "likedCv":Landroid/content/ContentValues;
    const-string/jumbo v2, "uid"

    invoke-static {v2}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "uid":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v2, "clid"

    iget-object v3, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v2, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "user_liked"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 402
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 405
    return-void

    .line 404
    .end local v0    # "likedCv":Landroid/content/ContentValues;
    .end local v1    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v2
.end method

.method public static declared-synchronized closeSQLite()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lc8/Zak;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lc8/XMg;->closeSQLite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static deleteCreatedCollectionInfo(Ljava/lang/String;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "uid":Ljava/lang/String;
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 48
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "user_created"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" AND uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "collection_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "video_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 55
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 59
    .end local v0    # "uid":Ljava/lang/String;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v1
.end method

.method public static deleteLikedCollection(Ljava/lang/String;)V
    .locals 5
    .param p0, "clid"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 65
    sput-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "uid":Ljava/lang/String;
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "user_liked"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" AND uid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "collection_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "video_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " clid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 73
    sget-object v1, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 77
    .end local v0    # "uid":Ljava/lang/String;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v1
.end method

.method private static formCollectionContentValues(Lcom/youku/phone/collection/module/CollectionInfo;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "collectionInfo"    # Lcom/youku/phone/collection/module/CollectionInfo;

    .prologue
    .line 555
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 556
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "clid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v1, "videocount"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string/jumbo v1, "viewcount"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v1, "thumbnail"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string/jumbo v1, "seconds"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string/jumbo v1, "weburl"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v1, "sharetitle"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->shareTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v1, "lastviewvid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v1, "change"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string/jumbo v1, "deleted"

    iget-boolean v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 569
    return-object v0
.end method

.method private static formUserCollectionContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "clid"    # Ljava/lang/String;

    .prologue
    .line 600
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v1, "clid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-object v0
.end method

.method private static formUserContentValues(Lc8/fbk;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "creator"    # Lc8/fbk;

    .prologue
    .line 573
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lc8/fbk;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v1, "verified"

    iget v2, p0, Lc8/fbk;->verified:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lc8/fbk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string/jumbo v1, "followerscount"

    iget-object v2, p0, Lc8/fbk;->followersCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string/jumbo v1, "avatar"

    iget-object v2, p0, Lc8/fbk;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method private static formVideoContentValues(Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "video"    # Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .param p1, "clid"    # Ljava/lang/String;

    .prologue
    .line 584
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v0, "vcv":Landroid/content/ContentValues;
    const-string/jumbo v1, "vid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v1, "duration"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string/jumbo v1, "thumbnail"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string/jumbo v1, "cachelimit"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string/jumbo v1, "clid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v1, "viewcount"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->viewCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string/jumbo v1, "deleted"

    iget-boolean v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->deleted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 593
    const-string/jumbo v1, "readableviewcount"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableViewCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v1, "readableduration"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableDuration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v1, "isfavorite"

    iget-boolean v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 596
    return-object v0
.end method

.method private static getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lc8/XMg;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getUserCreatedCollectionInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    sget-object v6, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v6}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sput-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "collectionsCursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 85
    .local v3, "creatorCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 87
    .local v5, "videoCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from collection_info where clid in (select clid fromuser_created where uid=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ) order by rowid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 98
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from user_info where uid=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v6, Lc8/vdn;

    .line 102
    invoke-static {v6}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vdn;

    invoke-interface {v6}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 98
    invoke-virtual {v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 104
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const-string/jumbo v6, "clid"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "clid":Ljava/lang/String;
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from video_info where clid=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 112
    invoke-static {v2, v5, v3}, Lc8/Zak;->parseCollection(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/youku/phone/collection/module/CollectionInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "clid":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "collection-SQL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    if-eqz v5, :cond_1

    .line 120
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    if-eqz v3, :cond_2

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_2
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 125
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 117
    :cond_3
    if-eqz v2, :cond_4

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_4
    if-eqz v5, :cond_5

    .line 120
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_5
    if-eqz v3, :cond_6

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_6
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_7

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_7
    if-eqz v5, :cond_8

    .line 120
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_8
    if-eqz v3, :cond_9

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_9
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v6
.end method

.method private static parseCollection(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/youku/phone/collection/module/CollectionInfo;
    .locals 4
    .param p0, "collectionCursor"    # Landroid/database/Cursor;
    .param p1, "videoCursor"    # Landroid/database/Cursor;
    .param p2, "creatorCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 616
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 617
    .local v0, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    const-string/jumbo v3, "clid"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 618
    const-string/jumbo v3, "title"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 619
    const-string/jumbo v3, "description"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    .line 620
    const-string/jumbo v3, "uid"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    .line 621
    const-string/jumbo v3, "videocount"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 622
    const-string/jumbo v3, "viewcount"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 623
    const-string/jumbo v3, "thumbnail"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 624
    const-string/jumbo v3, "seconds"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 625
    const-string/jumbo v3, "weburl"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    .line 626
    const-string/jumbo v3, "sharetitle"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->shareTitle:Ljava/lang/String;

    .line 627
    const-string/jumbo v3, "lastviewvid"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 628
    const-string/jumbo v3, "change"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    .line 629
    const-string/jumbo v3, "deleted"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_0
    iput-boolean v2, v0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    .line 630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    .line 631
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-static {p2}, Lc8/Zak;->parseUser(Landroid/database/Cursor;)Lc8/fbk;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 633
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 635
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    invoke-static {p1}, Lc8/Zak;->parseVideo(Landroid/database/Cursor;)Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    move-result-object v1

    .line 637
    .local v1, "videoInfo":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    iget-object v2, v0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 629
    .end local v1    # "videoInfo":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 639
    :cond_2
    return-object v0
.end method

.method private static parseUser(Landroid/database/Cursor;)Lc8/fbk;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 643
    new-instance v0, Lc8/fbk;

    invoke-direct {v0}, Lc8/fbk;-><init>()V

    .line 644
    .local v0, "creator":Lc8/fbk;
    const-string/jumbo v1, "uid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/fbk;->id:Ljava/lang/String;

    .line 645
    const-string/jumbo v1, "verified"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lc8/fbk;->verified:I

    .line 646
    const-string/jumbo v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/fbk;->name:Ljava/lang/String;

    .line 647
    const-string/jumbo v1, "followerscount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 648
    const-string/jumbo v1, "avatar"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 649
    return-object v0
.end method

.method private static parseVideo(Landroid/database/Cursor;)Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .locals 4
    .param p0, "videoCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 653
    new-instance v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    invoke-direct {v0}, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;-><init>()V

    .line 654
    .local v0, "videoInfo":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    const-string/jumbo v1, "vid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    .line 655
    const-string/jumbo v1, "duration"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    .line 656
    const-string/jumbo v1, "thumbnail"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    .line 657
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    .line 658
    const-string/jumbo v1, "cachelimit"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->limit:I

    .line 659
    const-string/jumbo v1, "viewcount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->viewCount:I

    .line 660
    const-string/jumbo v1, "deleted"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->deleted:Z

    .line 661
    const-string/jumbo v1, "readableviewcount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableViewCount:Ljava/lang/String;

    .line 662
    const-string/jumbo v1, "readableduration"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableDuration:Ljava/lang/String;

    .line 663
    const-string/jumbo v1, "isfavorite"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isFavorite:Z

    .line 664
    return-object v0

    :cond_0
    move v1, v3

    .line 660
    goto :goto_0

    :cond_1
    move v2, v3

    .line 663
    goto :goto_1
.end method

.method public static updateCollection(Lcom/youku/phone/collection/module/CollectionInfo;)V
    .locals 11
    .param p0, "collectionInfo"    # Lcom/youku/phone/collection/module/CollectionInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 529
    sget-object v6, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sput-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 531
    :try_start_0
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 532
    invoke-static {p0}, Lc8/Zak;->formCollectionContentValues(Lcom/youku/phone/collection/module/CollectionInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 533
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "collection_info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " clid=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v1, v4

    .line 535
    .local v1, "success":Z
    :goto_0
    if-nez v1, :cond_0

    .line 536
    sget-object v6, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "collection_info"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 537
    :cond_0
    iget-object v6, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 538
    iget-object v6, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    .line 539
    .local v3, "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    iget-object v7, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-static {v3, v7}, Lc8/Zak;->formVideoContentValues(Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 540
    .local v2, "vcv":Landroid/content/ContentValues;
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "video_info"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vid=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\" AND clid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_3

    move v1, v4

    .line 543
    :goto_2
    if-nez v1, :cond_1

    .line 544
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "video_info"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 550
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "success":Z
    .end local v2    # "vcv":Landroid/content/ContentValues;
    .end local v3    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :catchall_0
    move-exception v4

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v4

    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    move v1, v5

    .line 533
    goto :goto_0

    .restart local v1    # "success":Z
    .restart local v2    # "vcv":Landroid/content/ContentValues;
    .restart local v3    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :cond_3
    move v1, v5

    .line 540
    goto :goto_2

    .line 547
    .end local v2    # "vcv":Landroid/content/ContentValues;
    .end local v3    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :cond_4
    :try_start_1
    sget-object v4, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 548
    sget-object v4, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 551
    return-void
.end method

.method public static updateCollectionTitle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "clid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 176
    sget-object v3, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    sget-object v3, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 181
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v0    # "cv":Landroid/content/ContentValues;
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_1
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v3, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "collection_info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clid=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 185
    .local v2, "success":Z
    :goto_0
    sget-object v3, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 186
    sget-object v3, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 190
    :cond_0
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 192
    return v2

    .line 183
    .end local v2    # "success":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 188
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 190
    :cond_2
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v3

    .line 188
    .end local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v0    # "cv":Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public static updateUserCreated(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "collectionInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/collection/module/CollectionInfo;>;"
    sget-object v7, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v7}, Lc8/Zak;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sput-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 312
    :try_start_0
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 313
    const-class v7, Lc8/vdn;

    invoke-static {v7}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/vdn;

    invoke-interface {v7}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "uid":Ljava/lang/String;
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "delete from collection_info where uid =\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "delete from video_info where clid not in (select clid from collection_info )"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "delete from user_created where 1=1 "

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/collection/module/CollectionInfo;

    .line 329
    .local v2, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    iget-object v0, v2, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 330
    .local v0, "clid":Ljava/lang/String;
    invoke-static {v2}, Lc8/Zak;->formCollectionContentValues(Lcom/youku/phone/collection/module/CollectionInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 331
    .local v1, "collectionCv":Landroid/content/ContentValues;
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "collection_info"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 332
    iget-object v8, v2, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 333
    iget-object v8, v2, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    .line 334
    .local v6, "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    invoke-static {v6, v0}, Lc8/Zak;->formVideoContentValues(Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 335
    .local v5, "vcv":Landroid/content/ContentValues;
    sget-object v9, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "video_info"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 336
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 344
    .end local v0    # "clid":Ljava/lang/String;
    .end local v1    # "collectionCv":Landroid/content/ContentValues;
    .end local v2    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    .end local v3    # "uid":Ljava/lang/String;
    .end local v5    # "vcv":Landroid/content/ContentValues;
    .end local v6    # "video":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    :catchall_0
    move-exception v7

    invoke-static {}, Lc8/Zak;->closeSQLite()V

    throw v7

    .line 338
    .restart local v0    # "clid":Ljava/lang/String;
    .restart local v1    # "collectionCv":Landroid/content/ContentValues;
    .restart local v2    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    .restart local v3    # "uid":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v3, v0}, Lc8/Zak;->formUserCollectionContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 339
    .local v4, "userCreatedCv":Landroid/content/ContentValues;
    sget-object v8, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "user_created"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 341
    .end local v0    # "clid":Ljava/lang/String;
    .end local v1    # "collectionCv":Landroid/content/ContentValues;
    .end local v2    # "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    .end local v4    # "userCreatedCv":Landroid/content/ContentValues;
    :cond_1
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 342
    sget-object v7, Lc8/Zak;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    invoke-static {}, Lc8/Zak;->closeSQLite()V

    .line 345
    return-void
.end method
