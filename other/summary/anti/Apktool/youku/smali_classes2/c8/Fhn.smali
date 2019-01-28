.class public Lc8/Fhn;
.super Ljava/lang/Object;
.source "PushReaderSqlManager.java"


# static fields
.field private static final TABLE_NAME_PUSH_MSG:Ljava/lang/String; = "PUSH_MSG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSQLite()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lc8/YMg;->closeSQLite()V

    .line 110
    return-void
.end method

.method static getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Lc8/YMg;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static hasNewPushMsg()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Fhn;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "select count(*) from PUSH_MSG where isNew=1;"

    const/4 v5, 0x0

    .line 92
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    .line 101
    :goto_0
    return v2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_2
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_3
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    throw v2
.end method

.method public static savePushMsg(Ljava/lang/String;)V
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    :try_start_0
    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Fhn;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 38
    const-string/jumbo v3, "delete from PUSH_MSG where datetime(\'now\',\'localtime\',\'start of day\',\'-14 day\')>datetime(timestamp);"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "msg"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v3, "PUSH_MSG"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 48
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    .line 44
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 48
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lc8/YMg;->endTransaction()V

    .line 48
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    throw v3
.end method

.method public static setAllPushMsgNotNew()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Fhn;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "update PUSH_MSG set isNew=0;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    throw v1
.end method

.method public static setPushMsgRead(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Fhn;->getDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update PUSH_MSG set isRead=1,isNew=0 where msg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {}, Lc8/Fhn;->closeSQLite()V

    throw v1
.end method
