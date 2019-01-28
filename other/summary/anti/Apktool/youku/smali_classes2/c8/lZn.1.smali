.class public Lc8/lZn;
.super Ljava/lang/Object;
.source "DBController.java"


# static fields
.field private static mInstance:Lc8/lZn;


# instance fields
.field private mDBhelper:Lc8/mZn;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lc8/mZn;

    invoke-direct {v0, p1}, Lc8/mZn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    .line 24
    iget-object v0, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    invoke-virtual {v0}, Lc8/mZn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/lZn;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lc8/lZn;->mInstance:Lc8/lZn;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/lZn;

    invoke-direct {v0, p0}, Lc8/lZn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/lZn;->mInstance:Lc8/lZn;

    .line 31
    :cond_0
    sget-object v0, Lc8/lZn;->mInstance:Lc8/lZn;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteByUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    const-class v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v2, v3}, Lc8/mZn;->getDao(Ljava/lang/Class;)Lc8/Mtd;

    move-result-object v0

    .line 71
    .local v0, "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Lc8/Mtd;->deleteById(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized newOrUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    const-class v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v2, v3}, Lc8/mZn;->getDao(Ljava/lang/Class;)Lc8/Mtd;

    move-result-object v0

    .line 37
    .local v0, "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Lc8/Mtd;->createOrUpdate(Ljava/lang/Object;)Lc8/Ltd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v0    # "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized queryAll()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    const-class v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v2, v3}, Lc8/mZn;->getDao(Ljava/lang/Class;)Lc8/Mtd;

    move-result-object v0

    .line 47
    .local v0, "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    invoke-interface {v0}, Lc8/Mtd;->queryBuilder()Lc8/Evd;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Evd;->prepare()Lc8/zvd;

    move-result-object v2

    invoke-interface {v0, v2}, Lc8/Mtd;->query(Lc8/zvd;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0    # "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/sZn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized queryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/lZn;->mDBhelper:Lc8/mZn;

    const-class v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v2, v3}, Lc8/mZn;->getDao(Ljava/lang/Class;)Lc8/Mtd;

    move-result-object v0

    .line 57
    .local v0, "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Lc8/Mtd;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "dao":Lc8/Mtd;, "Lcom/j256/ormlite/dao/Dao<Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/sZn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
