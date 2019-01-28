.class public Lcom/taobao/accs/statistics/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/statistics/DBHelper$1;,
        Lcom/taobao/accs/statistics/DBHelper$SQLObject;
    }
.end annotation


# static fields
.field private static final MAX_DB_COUNT:I = 0xfa0

.field private static final MAX_SQL_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DBHelper"

.field private static final lock:Ljava/util/concurrent/locks/Lock;

.field private static volatile sInstance:Lcom/taobao/accs/statistics/DBHelper;


# instance fields
.field cachedSql:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/accs/statistics/DBHelper$SQLObject;",
            ">;"
        }
    .end annotation
.end field

.field public curLogsCount:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/statistics/DBHelper;->sInstance:Lcom/taobao/accs/statistics/DBHelper;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taobao/accs/statistics/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/statistics/DBHelper;->curLogsCount:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/statistics/DBHelper;->cachedSql:Ljava/util/LinkedList;

    .line 64
    iput-object p1, p0, Lcom/taobao/accs/statistics/DBHelper;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private declared-synchronized checkTrafficsExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)Z
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "bid"    # Ljava/lang/String;
    .param p4, "isBackground"    # Z
    .param p5, "size"    # J
    .param p7, "date"    # Ljava/lang/String;

    .prologue
    .line 113
    monitor-enter p0

    const/4 v9, 0x0

    .line 115
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/statistics/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 127
    if-eqz v9, :cond_0

    .line 128
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 119
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "serviceid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "bid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "isbackground"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const-string/jumbo v3, "date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p7, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 121
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-lez v1, :cond_2

    .line 122
    const/4 v1, 0x1

    .line 127
    if-eqz v9, :cond_0

    .line 128
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 127
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    if-eqz v9, :cond_3

    .line 128
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v10

    .line 125
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "DBHelper"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    if-eqz v9, :cond_3

    .line 128
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 127
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_4

    .line 128
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private declared-synchronized execSQL(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "force"    # Z

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/statistics/DBHelper;->cachedSql:Ljava/util/LinkedList;

    new-instance v4, Lcom/taobao/accs/statistics/DBHelper$SQLObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/taobao/accs/statistics/DBHelper$SQLObject;-><init>(Lcom/taobao/accs/statistics/DBHelper;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/statistics/DBHelper$1;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/taobao/accs/statistics/DBHelper;->cachedSql:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    if-eqz p3, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/statistics/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 192
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_2

    .line 227
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/taobao/accs/statistics/DBHelper;->cachedSql:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/taobao/accs/statistics/DBHelper;->cachedSql:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;

    .line 202
    .local v2, "sObject":Lcom/taobao/accs/statistics/DBHelper$SQLObject;
    iget-object v3, v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->args:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 203
    iget-object v3, v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->sql:Ljava/lang/String;

    iget-object v4, v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_1
    iget-object v3, v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->sql:Ljava/lang/String;

    const-string/jumbo v4, "INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    iget v3, p0, Lcom/taobao/accs/statistics/DBHelper;->curLogsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/accs/statistics/DBHelper;->curLogsCount:I

    .line 210
    iget v3, p0, Lcom/taobao/accs/statistics/DBHelper;->curLogsCount:I

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_2

    .line 211
    const-string/jumbo v3, "DBHelper"

    const-string/jumbo v4, "db is full!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/taobao/accs/statistics/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 213
    const/4 v3, 0x0

    iput v3, p0, Lcom/taobao/accs/statistics/DBHelper;->curLogsCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v2    # "sObject":Lcom/taobao/accs/statistics/DBHelper$SQLObject;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "DBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 205
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sObject":Lcom/taobao/accs/statistics/DBHelper$SQLObject;
    :cond_4
    :try_start_4
    iget-object v3, v2, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->sql:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 220
    .end local v2    # "sObject":Lcom/taobao/accs/statistics/DBHelper$SQLObject;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/statistics/DBHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/taobao/accs/statistics/DBHelper;->sInstance:Lcom/taobao/accs/statistics/DBHelper;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/taobao/accs/statistics/DBHelper;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/taobao/accs/statistics/DBHelper;->sInstance:Lcom/taobao/accs/statistics/DBHelper;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/taobao/accs/statistics/DBHelper;

    const-string/jumbo v2, "accs.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/taobao/accs/statistics/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/taobao/accs/statistics/DBHelper;->sInstance:Lcom/taobao/accs/statistics/DBHelper;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/taobao/accs/statistics/DBHelper;->sInstance:Lcom/taobao/accs/statistics/DBHelper;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearTraffics()V
    .locals 3

    .prologue
    .line 135
    const-string/jumbo v0, "DELETE FROM traffic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/accs/statistics/DBHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 136
    return-void
.end method

.method public getTraffics(Z)Ljava/util/List;
    .locals 16
    .param p1, "isToday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    .line 141
    const/4 v10, 0x0

    .line 142
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .local v12, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/statistics/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 145
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 146
    const/4 v12, 0x0

    .line 178
    .end local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    if-eqz v10, :cond_0

    .line 179
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v12

    .line 148
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :cond_1
    if-eqz p1, :cond_3

    .line 149
    :try_start_3
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "date"

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "host"

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "serviceid"

    aput-object v14, v2, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "bid"

    aput-object v14, v2, v13

    const/4 v13, 0x5

    const-string/jumbo v14, "isbackground"

    aput-object v14, v2, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "size"

    aput-object v14, v2, v13

    const-string/jumbo v3, "date=?"

    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 156
    :goto_1
    if-nez v10, :cond_4

    .line 157
    const/4 v12, 0x0

    .line 178
    .end local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    if-eqz v10, :cond_2

    .line 179
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 183
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 152
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :cond_3
    :try_start_5
    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "date"

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "host"

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "serviceid"

    aput-object v14, v2, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "bid"

    aput-object v14, v2, v13

    const/4 v13, 0x5

    const-string/jumbo v14, "isbackground"

    aput-object v14, v2, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "size"

    aput-object v14, v2, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    .line 159
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    :cond_5
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "date":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "host":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "bid":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 167
    .local v6, "isbackground":Z
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 168
    .local v8, "size":J
    if-eqz v4, :cond_6

    const-wide/16 v14, 0x0

    cmp-long v1, v8, v14

    if-lez v1, :cond_6

    .line 169
    new-instance v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    invoke-direct/range {v2 .. v9}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resotre traffics from db bid:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " serviceid:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " host:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, " size:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-nez v1, :cond_5

    .line 178
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "bid":Ljava/lang/String;
    .end local v5    # "serviceId":Ljava/lang/String;
    .end local v6    # "isbackground":Z
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "size":J
    :cond_7
    if-eqz v10, :cond_8

    .line 179
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v11

    .line 176
    .local v11, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v1, "DBHelper"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v13}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 178
    if-eqz v10, :cond_8

    .line 179
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 178
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_9

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->checkIsWritable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Lcom/taobao/accs/statistics/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v0, Lcom/taobao/accs/statistics/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/taobao/accs/statistics/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onTraffics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "bid"    # Ljava/lang/String;
    .param p4, "isBackground"    # Z
    .param p5, "size"    # J
    .param p7, "date"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/taobao/accs/statistics/DBHelper;->checkTrafficsExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v0, "INSERT INTO traffic VALUES(null,?,?,?,?,?,?)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p7, v1, v3

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/taobao/accs/statistics/DBHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v0, "UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p7, v1, v4

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1, v4}, Lcom/taobao/accs/statistics/DBHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 89
    if-ge p2, p3, :cond_0

    .line 90
    const-string/jumbo v0, "DROP TABLE IF EXISTS service"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "DROP TABLE IF EXISTS network"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "DROP TABLE IF EXISTS ping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "DROP TABLE IF EXISTS msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "DROP TABLE IF EXISTS ack"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "DROP TABLE IF EXISTS election"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "DROP TABLE IF EXISTS bindApp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "DROP TABLE IF EXISTS bindUser"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "DROP TABLE IF EXISTS traffic"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/taobao/accs/statistics/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    :cond_0
    return-void
.end method
