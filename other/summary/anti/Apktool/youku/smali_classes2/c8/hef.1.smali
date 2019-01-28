.class public Lc8/hef;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cef;,
        Lc8/eef;,
        Lc8/gef;,
        Lc8/def;
    }
.end annotation


# static fields
.field private static final FILE_POSTFIX:Ljava/lang/String; = ".tmp"

.field private static final FILE_PREFIX:Ljava/lang/String; = "download"

.field private static final FREE_SPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREE_SPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final QUERY_WHERE:Ljava/lang/String; = "hash_code=? AND tag=?"

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileCache"


# instance fields
.field private mCapacity:J

.field private mDbHelper:Lc8/eef;

.field private final mEntryMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lc8/def;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mRootDir:Ljava/io/File;

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    sget-object v0, Lc8/gef;->SCHEMA:Lc8/bef;

    invoke-virtual {v0}, Lc8/bef;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "sum(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lc8/hef;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "filename"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lc8/hef;->FREE_SPACE_PROJECTION:[Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "%s ASC"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/hef;->FREE_SPACE_ORDER_BY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootDir"    # Ljava/io/File;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "capacity"    # J

    .prologue
    .line 90
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lc8/hef;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootDir"    # Ljava/io/File;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "capacity"    # J
    .param p6, "lruCapacity"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/hef;->mInitialized:Z

    .line 94
    iput-object p2, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    .line 95
    iput-wide p4, p0, Lc8/hef;->mCapacity:J

    .line 96
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p6}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    .line 97
    new-instance v0, Lc8/eef;

    invoke-direct {v0, p0, p1, p3}, Lc8/eef;-><init>(Lc8/hef;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    .line 98
    return-void
.end method

.method static synthetic access$300(Lc8/hef;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/hef;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    return-object v0
.end method

.method public static deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 87
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v2    # "files":[Ljava/io/File;
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 79
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "download"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private freeSomeSpaceIfNeed(I)V
    .locals 15
    .param p1, "maxDeleteFileCount"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v0}, Lc8/eef;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lc8/hef;->FREE_SPACE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lc8/hef;->FREE_SPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-lez p1, :cond_2

    :try_start_0
    iget-wide v0, p0, Lc8/hef;->mTotalBytes:J

    iget-wide v2, p0, Lc8/hef;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 274
    .local v10, "id":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "path":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, "url":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 278
    .local v12, "size":J
    iget-object v1, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    :try_start_1
    iget-object v0, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    monitor-exit v1

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "size":J
    .end local v14    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 282
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "id":J
    .restart local v12    # "size":J
    .restart local v14    # "url":Ljava/lang/String;
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    add-int/lit8 p1, p1, -0x1

    .line 285
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-wide v0, p0, Lc8/hef;->mTotalBytes:J

    sub-long/2addr v0, v12

    iput-wide v0, p0, Lc8/hef;->mTotalBytes:J

    .line 287
    iget-object v0, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v0}, Lc8/eef;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 294
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "size":J
    .end local v14    # "url":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    return-void
.end method

.method private queryDatabase(Ljava/lang/String;)Lc8/gef;
    .locals 14
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 188
    invoke-static {p1}, Lc8/ief;->crc64Long(Ljava/lang/String;)J

    move-result-wide v10

    .line 190
    .local v10, "hash":J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 191
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 194
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v0}, Lc8/eef;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lc8/gef;->SCHEMA:Lc8/bef;

    invoke-virtual {v2}, Lc8/bef;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hash_code=? AND tag=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 209
    if-eqz v8, :cond_0

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v13

    :cond_1
    :goto_0
    return-object v9

    .line 200
    :cond_2
    :try_start_1
    new-instance v9, Lc8/gef;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lc8/gef;-><init>(Lc8/cef;)V

    .line 201
    .local v9, "entry":Lc8/gef;
    sget-object v0, Lc8/gef;->SCHEMA:Lc8/bef;

    invoke-virtual {v0, v8, v9}, Lc8/bef;->cursorToObject(Landroid/database/Cursor;Lc8/Zdf;)Lc8/Zdf;

    .line 202
    iget-wide v0, v9, Lc8/gef;->id:J

    invoke-direct {p0, v0, v1}, Lc8/hef;->updateLastAccess(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v8, :cond_1

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 205
    .end local v9    # "entry":Lc8/gef;
    :catch_0
    move-exception v12

    .line 206
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "FileCache"

    const-string/jumbo v1, "query database exception"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    if-eqz v8, :cond_3

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v13

    goto :goto_0

    .line 209
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateLastAccess(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 216
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    :try_start_0
    iget-object v2, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v2}, Lc8/eef;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FileCache"

    const-string/jumbo v3, "update db exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public createFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-string/jumbo v0, "download"

    const-string/jumbo v1, ".tmp"

    iget-object v2, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 10

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/hef;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/hef;->mInitialized:Z

    .line 238
    iget-object v0, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 240
    iget-object v0, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 245
    :cond_2
    const/4 v8, 0x0

    .line 248
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v0}, Lc8/eef;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lc8/hef;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 251
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/hef;->mTotalBytes:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    :cond_3
    if-eqz v8, :cond_4

    .line 258
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_4
    :goto_1
    iget-wide v0, p0, Lc8/hef;->mTotalBytes:J

    iget-wide v2, p0, Lc8/hef;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 263
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lc8/hef;->freeSomeSpaceIfNeed(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v9

    .line 255
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v0, "FileCache"

    const-string/jumbo v1, "query total bytes exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    if-eqz v8, :cond_4

    .line 258
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 257
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_5

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public lookup(Ljava/lang/String;)Lc8/def;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 141
    iget-boolean v2, p0, Lc8/hef;->mInitialized:Z

    if-nez v2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lc8/hef;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    iget-object v2, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/def;

    .line 151
    .local v7, "entry":Lc8/def;
    if-eqz v7, :cond_2

    .line 152
    iget-object v2, v7, Lc8/def;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    invoke-static {v7}, Lc8/def;->access$100(Lc8/def;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lc8/hef;->updateLastAccess(J)V

    .line 155
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v7    # "entry":Lc8/def;
    :goto_0
    return-object v7

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FileCache"

    const-string/jumbo v3, "file cache init exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 146
    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "entry":Lc8/def;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 158
    :cond_1
    iget-object v2, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    monitor-enter p0

    .line 163
    :try_start_3
    invoke-direct {p0, p1}, Lc8/hef;->queryDatabase(Ljava/lang/String;)Lc8/gef;

    move-result-object v8

    .line 164
    .local v8, "fileEntry":Lc8/gef;
    if-nez v8, :cond_3

    .line 165
    monitor-exit p0

    move-object v7, v9

    goto :goto_0

    .line 168
    :cond_3
    new-instance v1, Lc8/def;

    iget-wide v2, v8, Lc8/gef;->id:J

    new-instance v5, Ljava/io/File;

    iget-object v4, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    iget-object v6, v8, Lc8/gef;->filename:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lc8/def;-><init>(JLjava/lang/String;Ljava/io/File;Lc8/cef;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    .end local v7    # "entry":Lc8/def;
    .local v1, "entry":Lc8/def;
    :try_start_4
    iget-object v2, v1, Lc8/def;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 172
    :try_start_5
    iget-object v2, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v2}, Lc8/eef;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lc8/hef;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v10, v8, Lc8/gef;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    iget-wide v2, p0, Lc8/hef;->mTotalBytes:J

    iget-wide v4, v8, Lc8/gef;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc8/hef;->mTotalBytes:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    :goto_1
    :try_start_6
    monitor-exit p0

    move-object v7, v9

    goto :goto_0

    .line 176
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot delete entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lc8/gef;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 184
    .end local v8    # "fileEntry":Lc8/gef;
    :catchall_1
    move-exception v2

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 181
    .restart local v8    # "fileEntry":Lc8/gef;
    :cond_4
    :try_start_7
    iget-object v2, p0, Lc8/hef;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v1

    goto/16 :goto_0

    .line 184
    .end local v1    # "entry":Lc8/def;
    .end local v8    # "fileEntry":Lc8/gef;
    .restart local v7    # "entry":Lc8/def;
    :catchall_2
    move-exception v2

    move-object v1, v7

    .end local v7    # "entry":Lc8/def;
    .restart local v1    # "entry":Lc8/def;
    goto :goto_2
.end method

.method public store(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 101
    iget-boolean v3, p0, Lc8/hef;->mInitialized:Z

    if-nez v3, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lc8/hef;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lc8/hef;->mRootDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lc8/ief;->assertTrue(Z)V

    .line 111
    new-instance v1, Lc8/gef;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lc8/gef;-><init>(Lc8/cef;)V

    .line 112
    .local v1, "entry":Lc8/gef;
    invoke-static {p1}, Lc8/ief;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lc8/gef;->hashCode:J

    .line 113
    iput-object p1, v1, Lc8/gef;->tag:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/gef;->filename:Ljava/lang/String;

    .line 115
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lc8/gef;->size:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lc8/gef;->lastAccess:J

    .line 118
    iget-wide v4, v1, Lc8/gef;->size:J

    iget-wide v6, p0, Lc8/hef;->mCapacity:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lc8/gef;->size:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v1    # "entry":Lc8/gef;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FileCache"

    const-string/jumbo v4, "file cache init exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 123
    .restart local v1    # "entry":Lc8/gef;
    :cond_1
    monitor-enter p0

    .line 124
    :try_start_1
    invoke-direct {p0, p1}, Lc8/hef;->queryDatabase(Ljava/lang/String;)Lc8/gef;

    move-result-object v2

    .line 125
    .local v2, "original":Lc8/gef;
    if-eqz v2, :cond_3

    .line 127
    iget-object v3, v2, Lc8/gef;->filename:Ljava/lang/String;

    iput-object v3, v1, Lc8/gef;->filename:Ljava/lang/String;

    .line 128
    iget-wide v4, v2, Lc8/gef;->size:J

    iput-wide v4, v1, Lc8/gef;->size:J

    .line 133
    :goto_1
    sget-object v3, Lc8/gef;->SCHEMA:Lc8/bef;

    iget-object v4, p0, Lc8/hef;->mDbHelper:Lc8/eef;

    invoke-virtual {v4}, Lc8/eef;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lc8/bef;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lc8/Zdf;)J

    .line 134
    iget-wide v4, p0, Lc8/hef;->mTotalBytes:J

    iget-wide v6, p0, Lc8/hef;->mCapacity:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 135
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lc8/hef;->freeSomeSpaceIfNeed(I)V

    .line 137
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v2    # "original":Lc8/gef;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 130
    .restart local v2    # "original":Lc8/gef;
    :cond_3
    :try_start_2
    iget-wide v4, p0, Lc8/hef;->mTotalBytes:J

    iget-wide v6, v1, Lc8/gef;->size:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lc8/hef;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
