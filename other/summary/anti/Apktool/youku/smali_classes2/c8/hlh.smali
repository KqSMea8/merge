.class public Lc8/hlh;
.super Ljava/lang/Object;
.source "SQLiteManager.java"


# static fields
.field public static final TABLE_NAME_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final TABLE_NAME_LOACAL_PLAY_HISTORY:Ljava/lang/String; = "local_play_history"

.field public static final TABLE_NAME_MINIPLAYER:Ljava/lang/String; = "miniplayer"

.field public static final TABLE_NAME_MY_CINEMA_TICKET:Ljava/lang/String; = "my_cinema_ticket"

.field public static final TABLE_NAME_NOW_VideoInfo:Ljava/lang/String; = "VideoInfo"

.field public static final TABLE_NAME_PLAY_HISTORY:Ljava/lang/String; = "play_history"

.field public static final TABLE_NAME_SEARCH_CARD_ADDED:Ljava/lang/String; = "search_card_added"

.field public static final TABLE_NAME_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field public static final TABLE_NAME_SUBSCRIBE_GUIDE_SHOWED:Ljava/lang/String; = "subscribe_guide_showed"

.field public static final TAG:Ljava/lang/String; = "SQLiteManager"

.field private static final _LOCK:[B

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static hasInit:Z

.field private static final playHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/hlh;->playHistory:Ljava/util/ArrayList;

    .line 260
    sput-boolean v1, Lc8/hlh;->hasInit:Z

    .line 722
    new-array v0, v1, [B

    sput-object v0, Lc8/hlh;->_LOCK:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSQLite()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lc8/YMg;->closeSQLite()V

    .line 49
    return-void
.end method

.method public static compareDownloadVideo(Lcom/youku/vo/HistoryVideoInfo;)V
    .locals 6
    .param p0, "tempVideo"    # Lcom/youku/vo/HistoryVideoInfo;

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 388
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 390
    invoke-virtual {p0, v3}, Lcom/youku/vo/HistoryVideoInfo;->setCached(Z)V

    .line 392
    iget-wide v2, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/youku/service/download/DownloadInfo;->lastPlayTime:J

    iget-wide v4, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 394
    iget v1, v0, Lcom/youku/service/download/DownloadInfo;->playTime:I

    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 397
    :cond_0
    return-void

    .line 386
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_1
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/ben;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lc8/YMg;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayHistory(I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p0}, Lc8/hlh;->getPlayHistoryForShow(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 354
    .local v3, "tempVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 375
    :cond_0
    return-object v1

    .line 356
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "historyVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideoInfo;

    .line 358
    .local v2, "tempVideo":Lcom/youku/vo/HistoryVideoInfo;
    new-instance v0, Lcom/youku/vo/HistoryVideoInfo;

    invoke-direct {v0}, Lcom/youku/vo/HistoryVideoInfo;-><init>()V

    .line 359
    .local v0, "historyVideo":Lcom/youku/vo/HistoryVideoInfo;
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->point:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 360
    iget-object v5, v2, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    iput-object v5, v0, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    .line 361
    iget-object v5, v2, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    iput-object v5, v0, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    .line 362
    iget-object v5, v2, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    iput-object v5, v0, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    .line 363
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 364
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 365
    iget-object v5, v2, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    iput-object v5, v0, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    .line 366
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 367
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 368
    iget-wide v6, v2, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    iput-wide v6, v0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 369
    iget v5, v2, Lcom/youku/vo/HistoryVideoInfo;->tp:I

    iput v5, v0, Lcom/youku/vo/HistoryVideoInfo;->tp:I

    .line 370
    iget-object v5, v2, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    iput-object v5, v0, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    .line 372
    invoke-static {v0}, Lc8/hlh;->compareDownloadVideo(Lcom/youku/vo/HistoryVideoInfo;)V

    .line 373
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getPlayHistoryForShow(I)Ljava/util/ArrayList;
    .locals 18
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v11, 0x0

    .line 308
    .local v11, "c":Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v15, "his3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :try_start_0
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/hlh;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 311
    sput-object v1, Lc8/hlh;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string/jumbo v3, "play_history"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "showid"

    const/4 v8, 0x0

    const-string/jumbo v9, "lastPlayTime desc"

    .line 312
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 311
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v14, "his1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    invoke-static {v11}, Lc8/hlh;->readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/HistoryVideoInfo;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 338
    .end local v14    # "his1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :catch_0
    move-exception v12

    .line 339
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "Youku"

    const-string/jumbo v2, "SQLiteManager#getPlayHistoryForShow()"

    invoke-static {v1, v2, v12}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_0
    invoke-static {}, Lc8/hlh;->closeSQLite()V

    .end local v12    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v15

    .line 321
    .restart local v14    # "his1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/vo/HistoryVideoInfo;

    .line 322
    .local v16, "info":Lcom/youku/vo/HistoryVideoInfo;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 342
    .end local v14    # "his1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    .end local v16    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_3
    invoke-static {}, Lc8/hlh;->closeSQLite()V

    throw v1

    .line 325
    .restart local v14    # "his1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    .restart local v16    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :cond_4
    const/4 v13, 0x0

    .line 326
    .local v13, "has":Z
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/vo/HistoryVideoInfo;

    .line 327
    .local v17, "info3":Lcom/youku/vo/HistoryVideoInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    const/4 v13, 0x1

    .line 332
    .end local v17    # "info3":Lcom/youku/vo/HistoryVideoInfo;
    :cond_6
    if-nez v13, :cond_2

    .line 333
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 342
    .end local v13    # "has":Z
    .end local v16    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :cond_7
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_8
    invoke-static {}, Lc8/hlh;->closeSQLite()V

    goto :goto_1
.end method

.method private static readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/HistoryVideoInfo;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 189
    new-instance v1, Lcom/youku/vo/HistoryVideoInfo;

    invoke-direct {v1}, Lcom/youku/vo/HistoryVideoInfo;-><init>()V

    .line 191
    .local v1, "vi":Lcom/youku/vo/HistoryVideoInfo;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    .line 192
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    .line 193
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    .line 194
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 195
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 196
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 197
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 198
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 199
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    .line 200
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 201
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    .line 202
    const/16 v2, 0xd

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->tp:I

    .line 203
    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/youku/vo/HistoryVideoInfo;->point:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SQLiteManager"

    const-string/jumbo v3, "readContentValue"

    invoke-static {v2, v3, v0}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
