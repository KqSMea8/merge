.class public Lc8/XMg;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper_Collection.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "collection.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final FAVORITE:Ljava/lang/String; = "favorite_"

.field public static final TABLE_NAME_COLLECTION_INFO:Ljava/lang/String; = "collection_info"

.field public static final TABLE_NAME_COLLECTION_PLAY_HISTORY:Ljava/lang/String; = "collection_play_history"

.field public static final TABLE_NAME_USER_CREATED:Ljava/lang/String; = "user_created"

.field public static final TABLE_NAME_USER_INFO:Ljava/lang/String; = "user_info"

.field public static final TABLE_NAME_USER_LIKED:Ljava/lang/String; = "user_liked"

.field public static final TABLE_NAME_VIDEO_INFO:Ljava/lang/String; = "video_info"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static instance:Lc8/XMg;


# instance fields
.field private mCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string/jumbo v0, "collection.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/XMg;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    invoke-virtual {p0}, Lc8/XMg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lc8/XMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    return-void
.end method

.method public static declared-synchronized closeSQLite()V
    .locals 4

    .prologue
    .line 160
    const-class v2, Lc8/XMg;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    iget-object v1, v1, Lc8/XMg;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    invoke-virtual {v1}, Lc8/XMg;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "DatabaseHelper_Collection"

    const-string/jumbo v3, "DatabaseHelper_Collection.closeSQLite()"

    invoke-static {v1, v3, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {p0}, Lc8/XMg;->openSQLite(Landroid/content/Context;)V

    .line 170
    sget-object v0, Lc8/XMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/XMg;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-object v0, Lc8/XMg;->instance:Lc8/XMg;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lc8/XMg;

    invoke-direct {v0, p0}, Lc8/XMg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/XMg;->instance:Lc8/XMg;

    .line 123
    :cond_0
    sget-object v0, Lc8/XMg;->instance:Lc8/XMg;

    return-object v0
.end method

.method public static declared-synchronized openSQLite(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-class v2, Lc8/XMg;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    if-nez v1, :cond_1

    .line 147
    invoke-static {p0}, Lc8/XMg;->getInstance(Landroid/content/Context;)Lc8/XMg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XMg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lc8/XMg;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    iget-object v1, v1, Lc8/XMg;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 150
    :cond_1
    :try_start_1
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    iget-object v1, v1, Lc8/XMg;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 151
    sget-object v1, Lc8/XMg;->instance:Lc8/XMg;

    invoke-virtual {v1}, Lc8/XMg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lc8/XMg;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "DatabaseHelper_Collection"

    const-string/jumbo v3, "DatabaseHelper_Collection.openSQLite()"

    invoke-static {v1, v3, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 128
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS user_info ( uid VARCHAR PRIMARY KEY, verified INTEGER, name VARCHAR, followerscount VARCHAR, avatar VARCHAR )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS collection_info ( clid VARCHAR PRIMARY KEY, title VARCHAR, description VARVHAR, uid VARCHAR, videocount INTEGER, viewcount VARCHAR, thumbnail VARCHAR, seconds INTEGER, weburl VARCHAR, sharetitle VARCHAR, change INTEGER, deleted INTEGER, lastviewvid VARCHAR, foreign key (uid) references user_info(uid) on delete cascade on update cascade)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS video_info ( id INTEGER PRIMARY KEY AUTOINCREMENT, vid VARCHAR, duration VARCHAR, thumbnail VARCHAR, title VARCHAR, cachelimit INTEGER, clid VARCHAR, viewcount INTEGER, deleted INTEGER, readableviewcount VARCHAR, readableduration VARCHAR, isfavorite INTEGER, foreign key (clid) references collection_info(clid) on delete cascade on update cascade )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS user_created ( id INTEGER PRIMARY KEY AUTOINCREMENT, uid VARCHAR, clid VARCHAR, foreign key (uid) references user_info(uid) on delete cascade on update cascade, foreign key (clid) references collection_info(clid) on delete cascade on update cascade )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS user_liked ( id INTEGER PRIMARY KEY AUTOINCREMENT, uid VARCHAR, clid VARCHAR, foreign key (uid) references user_info(uid) on delete cascade on update cascade, foreign key (clid) references collection_info(clid) on delete cascade on update cascade )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS collection_play_history ( clid VARCHAR PRIMARY KEY, vid VARCHAR )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 139
    return-void
.end method
