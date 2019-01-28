.class public Lc8/YMg;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper_Youku.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "youku.db"

.field public static final DATABASE_VERSION:I = 0xe

.field public static final TABLE_NAME_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final TABLE_NAME_LOACAL_PLAY_HISTORY:Ljava/lang/String; = "local_play_history"

.field public static final TABLE_NAME_MINIPLAYER:Ljava/lang/String; = "miniplayer"

.field public static final TABLE_NAME_MY_CINEMA_TICKET:Ljava/lang/String; = "my_cinema_ticket"

.field public static final TABLE_NAME_NOW_VideoInfo:Ljava/lang/String; = "VideoInfo"

.field public static final TABLE_NAME_PLAY_HISTORY:Ljava/lang/String; = "play_history"

.field public static final TABLE_NAME_PUSH_MSG:Ljava/lang/String; = "PUSH_MSG"

.field public static final TABLE_NAME_SEARCH_CARD_ADDED:Ljava/lang/String; = "search_card_added"

.field public static final TABLE_NAME_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field public static final TABLE_NAME_SUBSCRIBE_GUIDE_SHOWED:Ljava/lang/String; = "subscribe_guide_showed"

.field public static final TAG:Ljava/lang/String; = "DatabaseHelper_Youku"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static instance:Lc8/YMg;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string/jumbo v0, "youku.db"

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    invoke-virtual {p0}, Lc8/YMg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    return-void
.end method

.method public static closeSQLite()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Lc8/YMg;->instance:Lc8/YMg;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/YMg;->instance:Lc8/YMg;

    invoke-virtual {v1}, Lc8/YMg;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.closeSQLite()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table_name"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lc8/YMg;->getTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static endTransaction()V
    .locals 3

    .prologue
    .line 148
    sget-object v1, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    sget-object v1, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.addToPlayHistory()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-static {p0}, Lc8/YMg;->openSQLite(Landroid/content/Context;)V

    .line 159
    sget-object v0, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/YMg;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lc8/YMg;->instance:Lc8/YMg;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/YMg;

    invoke-direct {v0, p0}, Lc8/YMg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/YMg;->instance:Lc8/YMg;

    .line 32
    :cond_0
    sget-object v0, Lc8/YMg;->instance:Lc8/YMg;

    return-object v0
.end method

.method private static getTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "table_name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
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

    const-string/jumbo v1, " url VARCHAR,  size INTEGER, segcount INTEHER, segsize INTEGER, segsseconds VARCHAR, segssize VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " taskid VARCHAR PRIMARY KEY,  downloadedsize INTEGER, segdownloadedsize INTEGER, segstep INTEHER, createtime INTEGER, starttime INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " finishtime INTEGER, savepath VARCHAR, iscreatedfile INTEGER, state INTEHER, exceptioninfo VARCHAR, progress INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-string/jumbo v0, "local_play_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY AUTOINCREMENT,title VARCHAR, save_path VARCHAR , play_progress INTEGER, duration INTEGER , thumbnail_path VARCHAR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v0, "search_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
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

    .line 177
    :cond_2
    const-string/jumbo v0, "search_card_added"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY AUTOINCREMENT,position INTEGER, title TEXT, type INTEGER, show_id TEXT, timestamp INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_3
    const-string/jumbo v0, "my_cinema_ticket"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (movieName TEXT, movieDate TEXT, movieTime TEXT, movieType TEXT, ticketCount INTEGER, cinemaName TEXT, cinemaRoom TEXT, ticketPrice INTEGER, orderId TEXT, trade_id TEXT,orderState INTEGER,ticketCode TEXT,jsonTicketData TEXT,timestamp INTEGER);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_4
    const-string/jumbo v0, "PUSH_MSG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (id INTEGER PRIMARY KEY,uid VARCHAR,msg TEXT,isRead BOOL DEFAULT 0,isNew BOOL DEFAULT 1,timestamp DATETIME DEFAULT (datetime(CURRENT_TIMESTAMP,\'localtime\')));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_5
    const-string/jumbo v0, "play_history"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER, albumid VARCHAR, albumcount INTEGER, isPanorama INTEGER, uid VARCHAR, tp INTEGER,cg VARCHAR, lang INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :cond_6
    const-string/jumbo v0, "subscribe_guide_showed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
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

    .line 188
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static openSQLite(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    :try_start_0
    invoke-static {p0}, Lc8/YMg;->getInstance(Landroid/content/Context;)Lc8/YMg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/YMg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lc8/YMg;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.openSQLite()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "SQL onCreate"

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "search_card_added"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "search_history"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "play_history"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "VideoInfo"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "download"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "miniplayer"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "local_play_history"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "my_cinema_ticket"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "PUSH_MSG"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "subscribe_guide_showed"

    invoke-static {p1, v1}, Lc8/YMg;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onCreate()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    .line 61
    const-string/jumbo v1, "DatabaseHelper_Youku"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgrade()  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    .line 63
    const-string/jumbo v1, "DROP TABLE IF EXISTS play_history"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lc8/YMg;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    const/16 v1, 0x9

    if-gt p2, v1, :cond_1

    if-lt p3, v4, :cond_1

    .line 69
    :try_start_0
    const-string/jumbo v1, "ALTER TABLE play_history ADD albumid VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE play_history ADD albumcount INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_1
    :goto_1
    if-gt p2, v4, :cond_2

    if-lt p3, v5, :cond_2

    .line 82
    :try_start_2
    const-string/jumbo v1, "ALTER TABLE play_history ADD isPanorama INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :cond_2
    :goto_2
    if-gt p2, v5, :cond_3

    if-lt p3, v6, :cond_3

    .line 90
    :try_start_3
    const-string/jumbo v1, "ALTER TABLE play_history ADD uid VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 95
    :goto_3
    :try_start_4
    const-string/jumbo v1, "ALTER TABLE subscribe_guide_showed ADD uid VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 101
    :cond_3
    :goto_4
    if-gt p2, v6, :cond_4

    if-lt p3, v7, :cond_4

    .line 103
    :try_start_5
    const-string/jumbo v1, "ALTER TABLE play_history ADD tp INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 109
    :goto_5
    :try_start_6
    const-string/jumbo v1, "ALTER TABLE play_history ADD cg VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 116
    :cond_4
    :goto_6
    if-gt p2, v7, :cond_5

    const/16 v1, 0xe

    if-lt p3, v1, :cond_5

    .line 118
    :try_start_7
    const-string/jumbo v1, "ALTER TABLE play_history ADD lang INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 123
    :cond_5
    :goto_7
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DatabaseHelper_Youku"

    const-string/jumbo v2, "DatabaseHelper_Youku.onUpgrade()"

    invoke-static {v1, v2, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
