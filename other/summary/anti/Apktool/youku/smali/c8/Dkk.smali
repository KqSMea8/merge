.class public Lc8/Dkk;
.super Ljava/lang/Object;
.source "SQLiteManager.java"

# interfaces
.implements Lc8/xdn;


# static fields
.field public static final TABLE_NAME_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final TABLE_NAME_LOACAL_PLAY_HISTORY:Ljava/lang/String; = "local_play_history"

.field public static final TABLE_NAME_MY_CINEMA_TICKET:Ljava/lang/String; = "my_cinema_ticket"

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

.field private static sInstance:Lc8/Dkk;


# instance fields
.field public isSetSkipAdTip:Z

.field private mTags:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/Dkk;->playHistory:Ljava/util/ArrayList;

    .line 40
    new-array v0, v1, [B

    sput-object v0, Lc8/Dkk;->_LOCK:[B

    .line 41
    sput-boolean v1, Lc8/Dkk;->hasInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dkk;->mTags:Lorg/json/JSONObject;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dkk;->isSetSkipAdTip:Z

    return-void
.end method

.method public static closeSQLite()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lc8/YMg;->closeSQLite()V

    .line 63
    return-void
.end method

.method private static createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table_name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lc8/Dkk;->getTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lc8/YMg;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lc8/Dkk;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lc8/Dkk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Dkk;->sInstance:Lc8/Dkk;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lc8/Dkk;

    invoke-direct {v0}, Lc8/Dkk;-><init>()V

    sput-object v0, Lc8/Dkk;->sInstance:Lc8/Dkk;

    .line 58
    :cond_0
    sget-object v0, Lc8/Dkk;->sInstance:Lc8/Dkk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "table_name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ( title VARCHAR,  vid VARCHAR UNIQUE,  showid VARCHAR, format INTEGER, seconds INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " url VARCHAR,  size INTEGER, segcount INTEHER, segsize INTEGER, segsseconds VARCHAR, segssize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " taskid VARCHAR PRIMARY KEY,  downloadedsize INTEGER, segdownloadedsize INTEGER, segstep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "INTEHER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "createtime INTEGER, starttime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " finishtime INTEGER, savepath VARCHAR, iscreatedfile INTEGER, state INTEHER, exceptioninfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "VARCHAR, progress INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string/jumbo v0, "local_play_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY AUTOINCREMENT,title VARCHAR, save_path VARCHAR , play_progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "duration INTEGER , thumbnail_path VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    const-string/jumbo v0, "search_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT, timestamp INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v0, "search_card_added"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY AUTOINCREMENT,position INTEGER, title TEXT, type INTEGER, show_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :cond_3
    const-string/jumbo v0, "my_cinema_ticket"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (movieName TEXT, movieDate TEXT, movieTime TEXT, movieType TEXT, ticketCount INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cinemaName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TEXT, cinemaRoom TEXT, ticketPrice INTEGER, orderId TEXT, trade_id TEXT,orderState INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ticketCode TEXT,jsonTicketData TEXT,timestamp INTEGER);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :cond_4
    const-string/jumbo v0, "play_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER, albumid VARCHAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "albumcount INTEGER, isPanorama INTEGER, uid VARCHAR, tp INTEGER,cg VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_5
    const-string/jumbo v0, "subscribe_guide_showed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (showId TEXT, uid VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/HistoryVideoInfo;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 383
    new-instance v1, Lcom/youku/vo/HistoryVideoInfo;

    invoke-direct {v1}, Lcom/youku/vo/HistoryVideoInfo;-><init>()V

    .line 385
    .local v1, "vi":Lcom/youku/vo/HistoryVideoInfo;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    .line 386
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    .line 387
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    .line 388
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 389
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 390
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 391
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 392
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 393
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    .line 394
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 395
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    .line 396
    const/16 v2, 0xd

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/HistoryVideoInfo;->tp:I

    .line 397
    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    .line 398
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

    .line 403
    :goto_0
    return-object v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SQLiteManager"

    const-string/jumbo v3, "readContentValue"

    invoke-static {v2, v3, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addToSubscribeGuideShowed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 200
    sput-object v1, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "subscribe_guide_showed"

    invoke-static {v1, v2}, Lc8/Dkk;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "showId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v1, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "subscribe_guide_showed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 207
    sget-object v1, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 212
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    .line 213
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v1, "SQLiteManager"

    const-string/jumbo v2, "SQLiteManager.addToSubscribeGuideShowed"

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 212
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 212
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    throw v1
.end method

.method public getPlayTimesByShowId(Ljava/lang/String;)I
    .locals 11
    .param p1, "showId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 191
    :goto_0
    return v0

    .line 177
    :cond_0
    const/4 v8, 0x0

    .line 179
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    sput-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "play_history"

    const/4 v2, 0x0

    const-string/jumbo v3, "showid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlayTimeByShowId ===================================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 186
    if-eqz v8, :cond_1

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v9

    .line 184
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SQLiteManager"

    const-string/jumbo v1, "SQLiteManager#getPlayTimesByShowId()"

    invoke-static {v0, v1, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eqz v8, :cond_2

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    move v0, v10

    .line 191
    goto :goto_0

    .line 186
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_3
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    throw v0
.end method

.method public getPlayTimesByUid(Ljava/lang/String;)I
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 166
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v8, 0x0

    .line 154
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    sput-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "play_history"

    const/4 v2, 0x0

    const-string/jumbo v3, "uid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPlayTimeByUid !!!!!!!!!!===================================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 161
    if-eqz v8, :cond_1

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v9

    .line 159
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SQLiteManager"

    const-string/jumbo v1, "SQLiteManager#getPlayTimesByUid()"

    invoke-static {v0, v1, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz v8, :cond_2

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_2
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    move v0, v10

    .line 166
    goto :goto_0

    .line 161
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_3
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    throw v0
.end method

.method public getVideoInfoUseID(Ljava/lang/String;)Lcom/youku/vo/HistoryVideoInfo;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lc8/Dkk;->playHistory:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lc8/Dkk;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 79
    sget-object v3, Lc8/Dkk;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideoInfo;

    .line 80
    .local v2, "info":Lcom/youku/vo/HistoryVideoInfo;
    if-eqz v2, :cond_1

    .line 81
    iget-object v3, v2, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 78
    .restart local v1    # "i":I
    .restart local v2    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "info":Lcom/youku/vo/HistoryVideoInfo;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SQLiteManager"

    const-string/jumbo v4, "SQLiteManager.getVideoInfoUseID()"

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasShowedSubscribeGuide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 11
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 222
    .local v9, "count":I
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    :try_start_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    sput-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "subscribe_guide_showed"

    const/4 v2, 0x0

    const-string/jumbo v3, "showId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    if-eqz v8, :cond_0

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 233
    :cond_0
    if-eqz v8, :cond_1

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    .line 255
    :goto_0
    if-lez v9, :cond_9

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_1
    return v0

    .line 230
    :catch_0
    move-exception v10

    .line 231
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SQLiteManager"

    const-string/jumbo v1, "SQLiteManager#getPlayTimesByShowId()"

    invoke-static {v0, v1, v10}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz v8, :cond_2

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_2
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 233
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_3
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    throw v0

    .line 240
    :cond_4
    :try_start_2
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    sput-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "subscribe_guide_showed"

    const/4 v2, 0x0

    const-string/jumbo v3, "uid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 242
    if-eqz v8, :cond_5

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 248
    :cond_5
    if-eqz v8, :cond_6

    .line 249
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_6
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 245
    :catch_1
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "SQLiteManager"

    const-string/jumbo v1, "SQLiteManager#getPlayTimesByShowId()"

    invoke-static {v0, v1, v10}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    if-eqz v8, :cond_7

    .line 249
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_7
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    goto :goto_0

    .line 248
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_8

    .line 249
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_8
    invoke-static {}, Lc8/Dkk;->closeSQLite()V

    throw v0

    .line 258
    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lc8/Dkk;->hasInit:Z

    return v0
.end method

.method public readPlayHistory()Z
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 356
    const/4 v8, 0x0

    .line 359
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Dkk;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 360
    sput-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 375
    if-eqz v8, :cond_0

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    :goto_0
    return v0

    .line 363
    :cond_1
    :try_start_1
    sget-object v0, Lc8/Dkk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "play_history"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 364
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 365
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    sget-object v0, Lc8/Dkk;->playHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v8}, Lc8/Dkk;->readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/HistoryVideoInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v9

    .line 372
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "SQLiteManager.readPlayHistory()"

    invoke-static {v0, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    if-eqz v8, :cond_2

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    goto :goto_0

    .line 369
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lc8/Dkk;->hasInit:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    if-eqz v8, :cond_4

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
