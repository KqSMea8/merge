.class public Lc8/SIf;
.super Ljava/lang/Object;
.source "MonitorDAO.java"


# static fields
.field private static final MAX_SIZE:I = 0x1388

.field private static memReportInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lc8/UIf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/List;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/UIf;

    invoke-static {v1}, Lc8/SIf;->put(Lc8/UIf;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 173
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS MonitorManager(id VARCHAR(128) not null,bizCode INTEGER,topic VARCHAR(128),bizTag VARCHAR(64),code INTEGER,source INTEGER,type INTEGER,taskId VARCHAR(128),mode INTEGER,time INTEGER,mtopTime INTEGER,serverTime INTEGER,mark INTEGER,key INTEGER,ext1 VARCHAR(128),ext2 VARCHAR(128));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static get(I)Ljava/util/List;
    .locals 7
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    sget-object v3, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    .local v0, "count":I
    sget-object v3, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/UIf;

    .line 54
    .local v2, "record":Lc8/UIf;
    if-ltz p0, :cond_3

    if-ge v0, p0, :cond_4

    .line 56
    :cond_3
    if-eqz v2, :cond_2

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    .end local v2    # "record":Lc8/UIf;
    :cond_4
    invoke-static {v1, v6}, Lc8/SIf;->remove(Ljava/util/List;Z)V

    .line 62
    const-string/jumbo v3, "MonitorManager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "dump count >> "

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static put(Lc8/UIf;)V
    .locals 4
    .param p0, "item"    # Lc8/UIf;

    .prologue
    .line 31
    sget-object v0, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    .line 32
    const-string/jumbo v0, "MonitorManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "!!! ReportInfoList reach MAX "

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    iget-wide v2, p0, Lc8/UIf;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static query()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 122
    const/4 v9, 0x0

    .line 124
    .local v9, "q":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "SELECT * FROM MonitorManager LIMIT 5000"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/KJf;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 126
    if-eqz v9, :cond_1

    .line 127
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string/jumbo v2, "id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "fromId":Ljava/lang/String;
    const-string/jumbo v2, "key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 130
    .local v10, "key":J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    .line 131
    new-instance v0, Lc8/UIf;

    const-string/jumbo v2, "type"

    .line 133
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "bizCode"

    .line 134
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "topic"

    .line 135
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bizTag"

    .line 136
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "code"

    .line 137
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v7, "mode"

    .line 138
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lc8/UIf;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    .line 140
    .local v0, "info":Lc8/UIf;
    const-string/jumbo v2, "source"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lc8/UIf;->source:I

    .line 141
    const-string/jumbo v2, "taskId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/UIf;->taskId:Ljava/lang/String;

    .line 142
    const-string/jumbo v2, "time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/UIf;->time:J

    .line 143
    const-string/jumbo v2, "mtopTime"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/UIf;->mtopTime:J

    .line 144
    const-string/jumbo v2, "serverTime"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/UIf;->serverTime:J

    .line 145
    const-string/jumbo v2, "mark"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lc8/UIf;->mark:I

    .line 146
    iput-wide v10, v0, Lc8/UIf;->key:J

    .line 147
    invoke-static {v0}, Lc8/SIf;->put(Lc8/UIf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 150
    .end local v0    # "info":Lc8/UIf;
    .end local v1    # "fromId":Ljava/lang/String;
    .end local v10    # "key":J
    :catch_0
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "MonitorManager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v3}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v9, :cond_0

    .line 154
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 158
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string/jumbo v2, "MonitorManager"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "query from db >"

    aput-object v4, v3, v12

    const/4 v4, 0x1

    sget-object v5, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void

    .line 153
    :cond_1
    if-eqz v9, :cond_0

    .line 154
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_2

    .line 154
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static record(Lc8/UIf;)V
    .locals 6
    .param p0, "item"    # Lc8/UIf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-static {p0}, Lc8/SIf;->put(Lc8/UIf;)V

    .line 74
    const-string/jumbo v1, "MonitorManager"

    const-string/jumbo v2, "taskId"

    invoke-virtual {p0}, Lc8/UIf;->toContentValue()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/KJf;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 75
    .local v0, "result":I
    if-gtz v0, :cond_0

    .line 76
    const-string/jumbo v1, "MonitorManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "insert error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/UIf;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "io"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lc8/dKf;->commitCount(Ljava/lang/String;Ljava/lang/String;D)V

    .line 79
    :cond_0
    return-void
.end method

.method private static remove(Lc8/UIf;)V
    .locals 4
    .param p0, "item"    # Lc8/UIf;

    .prologue
    .line 39
    sget-object v0, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    iget-wide v2, p0, Lc8/UIf;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static remove(Ljava/util/List;Z)V
    .locals 6
    .param p1, "alsoDB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DELETE FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "MonitorManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IN ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    .local v2, "set":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/UIf;

    iget-wide v4, v3, Lc8/UIf;->key:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 101
    .local v1, "key":Ljava/lang/Long;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/UIf;

    invoke-static {v3}, Lc8/SIf;->remove(Lc8/UIf;)V

    .line 103
    if-eqz p1, :cond_1

    .line 104
    if-eqz v0, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "key":Ljava/lang/Long;
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/KJf;->execSQL(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .end local v0    # "i":I
    .end local v2    # "set":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/SIf;->memReportInfoList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 193
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 194
    const-string/jumbo v0, "MonitorManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "upgradeTable >>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string/jumbo v0, "DROP TABLE IF EXISTS MonitorManager;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lc8/SIf;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    :cond_0
    return-void
.end method
