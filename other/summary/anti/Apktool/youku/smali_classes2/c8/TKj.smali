.class public Lc8/TKj;
.super Ljava/lang/Object;
.source "StepDbUtils.java"


# static fields
.field public static helper:Lc8/SKj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDb()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lc8/TKj;->helper:Lc8/SKj;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    sget-object v0, Lc8/TKj;->helper:Lc8/SKj;

    invoke-virtual {v0}, Lc8/SKj;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createDb(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lc8/TKj;->helper:Lc8/SKj;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/SKj;->getInstance(Landroid/content/Context;)Lc8/SKj;

    move-result-object v0

    sput-object v0, Lc8/TKj;->helper:Lc8/SKj;

    .line 24
    :cond_0
    return-void
.end method

.method public static getQueryByDate(Ljava/lang/String;[Ljava/lang/String;)Lc8/WKj;
    .locals 14
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # [Ljava/lang/String;

    .prologue
    .line 60
    const/4 v12, 0x0

    .line 61
    .local v12, "stepData":Lc8/WKj;
    sget-object v1, Lc8/TKj;->helper:Lc8/SKj;

    if-eqz v1, :cond_3

    .line 64
    :try_start_0
    invoke-static {}, Lc8/TKj;->openDb()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lc8/TKj;->closeDb()V

    move-object v13, v12

    .line 90
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "stepData":Lc8/WKj;
    .local v13, "stepData":Lc8/WKj;
    :goto_0
    return-object v13

    .line 68
    .end local v13    # "stepData":Lc8/WKj;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "stepData":Lc8/WKj;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "setp_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "step"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "sensor"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 72
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 87
    invoke-static {}, Lc8/TKj;->closeDb()V

    move-object v13, v12

    .end local v12    # "stepData":Lc8/WKj;
    .restart local v13    # "stepData":Lc8/WKj;
    goto :goto_0

    .line 75
    .end local v13    # "stepData":Lc8/WKj;
    .restart local v12    # "stepData":Lc8/WKj;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string/jumbo v1, "date"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "date":Ljava/lang/String;
    const-string/jumbo v1, "step"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "step":Ljava/lang/String;
    const-string/jumbo v1, "sensor"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "sensor":Ljava/lang/String;
    new-instance v13, Lc8/WKj;

    invoke-direct {v13, v9}, Lc8/WKj;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v12    # "stepData":Lc8/WKj;
    .restart local v13    # "stepData":Lc8/WKj;
    :try_start_3
    invoke-virtual {v13, v11}, Lc8/WKj;->setStep(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v13, v10}, Lc8/WKj;->setSensor(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v13

    .line 83
    .end local v9    # "date":Ljava/lang/String;
    .end local v10    # "sensor":Ljava/lang/String;
    .end local v11    # "step":Ljava/lang/String;
    .end local v13    # "stepData":Lc8/WKj;
    .restart local v12    # "stepData":Lc8/WKj;
    :cond_2
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    invoke-static {}, Lc8/TKj;->closeDb()V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    move-object v13, v12

    .line 90
    .end local v12    # "stepData":Lc8/WKj;
    .restart local v13    # "stepData":Lc8/WKj;
    goto :goto_0

    .line 87
    .end local v13    # "stepData":Lc8/WKj;
    .restart local v12    # "stepData":Lc8/WKj;
    :catch_0
    move-exception v1

    :goto_2
    invoke-static {}, Lc8/TKj;->closeDb()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    invoke-static {}, Lc8/TKj;->closeDb()V

    throw v1

    .end local v12    # "stepData":Lc8/WKj;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "date":Ljava/lang/String;
    .restart local v10    # "sensor":Ljava/lang/String;
    .restart local v11    # "step":Ljava/lang/String;
    .restart local v13    # "stepData":Lc8/WKj;
    :catchall_1
    move-exception v1

    move-object v12, v13

    .end local v13    # "stepData":Lc8/WKj;
    .restart local v12    # "stepData":Lc8/WKj;
    goto :goto_3

    .end local v12    # "stepData":Lc8/WKj;
    .restart local v13    # "stepData":Lc8/WKj;
    :catch_1
    move-exception v1

    move-object v12, v13

    .end local v13    # "stepData":Lc8/WKj;
    .restart local v12    # "stepData":Lc8/WKj;
    goto :goto_2
.end method

.method public static getStepsByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0}, Lc8/TKj;->createDb(Landroid/content/Context;)V

    .line 145
    const-string/jumbo v1, "date"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lc8/TKj;->getQueryByDate(Ljava/lang/String;[Ljava/lang/String;)Lc8/WKj;

    move-result-object v0

    .line 146
    .local v0, "stepData":Lc8/WKj;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lc8/WKj;->getStep()Ljava/lang/String;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getTodayDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 162
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTodaySteps(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {}, Lc8/TKj;->getTodayDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/TKj;->getStepsByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYesterdayDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 168
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getYesterdaySteps(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {}, Lc8/TKj;->getYesterdayDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/TKj;->getStepsByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Lc8/WKj;)V
    .locals 5
    .param p0, "data"    # Lc8/WKj;

    .prologue
    .line 32
    sget-object v2, Lc8/TKj;->helper:Lc8/SKj;

    if-eqz v2, :cond_0

    .line 35
    :try_start_0
    invoke-static {}, Lc8/TKj;->openDb()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 36
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 47
    invoke-static {}, Lc8/TKj;->closeDb()V

    .line 50
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "date"

    invoke-virtual {p0}, Lc8/WKj;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "step"

    invoke-virtual {p0}, Lc8/WKj;->getStep()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0}, Lc8/WKj;->getSensor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "setp_table"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lc8/TKj;->closeDb()V

    goto :goto_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    invoke-static {}, Lc8/TKj;->closeDb()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lc8/TKj;->closeDb()V

    throw v2
.end method

.method public static openDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    sget-object v1, Lc8/TKj;->helper:Lc8/SKj;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    sget-object v1, Lc8/TKj;->helper:Lc8/SKj;

    invoke-virtual {v1}, Lc8/SKj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method
