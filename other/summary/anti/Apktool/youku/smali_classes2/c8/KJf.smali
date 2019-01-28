.class public Lc8/KJf;
.super Ljava/lang/Object;
.source "MsgDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB"
.end annotation


# static fields
.field public static final CONFLICT_VALUES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MsgDao_DB"

.field private static data:Lc8/WJf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Lc8/KJf;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WJf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MsgDao_DB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static execSQL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WJf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WJf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MsgDao_DB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getDb()Lc8/WJf;
    .locals 4

    .prologue
    .line 167
    const-class v1, Lc8/KJf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/KJf;->data:Lc8/WJf;

    if-nez v0, :cond_0

    new-instance v0, Lc8/WJf;

    sget-object v2, Lc8/PJf;->application:Landroid/app/Application;

    const-string/jumbo v3, "message_kit"

    invoke-direct {v0, v2, v3}, Lc8/WJf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/KJf;->data:Lc8/WJf;

    .line 168
    :cond_0
    sget-object v0, Lc8/KJf;->data:Lc8/WJf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "nullColumnHack"    # Ljava/lang/String;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lc8/KJf;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)I

    move-result v0

    return v0
.end method

.method public static insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)I
    .locals 8
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "nullColumnHack"    # Ljava/lang/String;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "conflictAlgorithm"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/WJf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 112
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 80
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MsgDao_DB"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WJf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MsgDao_DB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "nullColumnHack"    # Ljava/lang/String;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 75
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lc8/KJf;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)I

    move-result v0

    return v0
.end method

.method public static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lc8/KJf;->getDb()Lc8/WJf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WJf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MsgDao_DB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v1, -0x1

    goto :goto_0
.end method
