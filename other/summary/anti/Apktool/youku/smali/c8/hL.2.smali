.class public Lc8/hL;
.super Ljava/lang/Object;
.source "StrategySerializeHelper.java"


# static fields
.field private static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static strategyFolder:Ljava/io/File;

.field private static volatile toDelete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lc8/hL;->strategyFolder:Ljava/io/File;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lc8/hL;->toDelete:Z

    .line 91
    new-instance v0, Lc8/gL;

    invoke-direct {v0}, Lc8/gL;-><init>()V

    sput-object v0, Lc8/hL;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFolderExistOrCreate(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static declared-synchronized clearStrategyFolder()V
    .locals 10

    .prologue
    .line 72
    const-class v6, Lc8/hL;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "awcn.StrategySerializeHelper"

    const-string/jumbo v7, "clear start."

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v5, Lc8/hL;->strategyFolder:Ljava/io/File;

    if-nez v5, :cond_1

    .line 74
    const-string/jumbo v5, "awcn.StrategySerializeHelper"

    const-string/jumbo v7, "folder path not initialized, wait to clear"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const/4 v5, 0x1

    sput-boolean v5, Lc8/hL;->toDelete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .local v2, "files":[Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 79
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    sget-object v5, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 80
    .restart local v2    # "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 83
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 84
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const-string/jumbo v5, "awcn.StrategySerializeHelper"

    const-string/jumbo v7, "clear end."

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized getSortedFiles()[Ljava/io/File;
    .locals 3

    .prologue
    .line 99
    const-class v2, Lc8/hL;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/hL;->strategyFolder:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 106
    .local v0, "files":[Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 102
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    sget-object v1, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 103
    .restart local v0    # "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 104
    sget-object v1, Lc8/hL;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStrategyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-static {v0}, Lc8/hL;->checkFolderExistOrCreate(Ljava/io/File;)Z

    .line 68
    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "awcn_strategy"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    sput-object v3, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-static {v3}, Lc8/hL;->checkFolderExistOrCreate(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "create directory failed!!!"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dir"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    invoke-static {}, Lc8/TI;->isTargetProcess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-static {}, Lc8/TI;->getCurrentProcess()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "process":Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "appendix":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    sput-object v3, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-static {v3}, Lc8/hL;->checkFolderExistOrCreate(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "create directory failed!!!"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dir"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .end local v0    # "appendix":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "StrateyFolder"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "path"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lc8/hL;->strategyFolder:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-boolean v3, Lc8/hL;->toDelete:Z

    if-eqz v3, :cond_3

    .line 48
    invoke-static {}, Lc8/hL;->clearStrategyFolder()V

    .line 49
    const/4 v3, 0x0

    sput-boolean v3, Lc8/hL;->toDelete:Z

    .line 57
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    invoke-static {}, Lc8/hL;->removeInvalidFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "StrategySerializeHelper initialize failed!!!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v10, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static declared-synchronized persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V
    .locals 2
    .param p0, "serializable"    # Ljava/io/Serializable;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sso"    # Lanet/channel/statist/StrategyStatObject;

    .prologue
    .line 136
    const-class v1, Lc8/hL;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lc8/hL;->getStrategyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/aM;->persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v1

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized removeInvalidFile()V
    .locals 12

    .prologue
    .line 110
    const-class v6, Lc8/hL;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lc8/hL;->getSortedFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 133
    :cond_0
    monitor-exit v6

    return-void

    .line 115
    :cond_1
    const/4 v3, 0x0

    .line 116
    .local v3, "numOfTables":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "numOfTables":I
    .local v4, "numOfTables":I
    :goto_0
    :try_start_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 117
    aget-object v0, v1, v2

    .line 118
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf731400

    cmp-long v5, v8, v10

    if-ltz v5, :cond_3

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v3, v4

    .line 116
    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "numOfTables":I
    .restart local v4    # "numOfTables":I
    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "WIFI"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    int-to-long v8, v4

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "numOfTables":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "file":Ljava/io/File;
    .restart local v4    # "numOfTables":I
    :cond_4
    move v3, v4

    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    goto :goto_1
.end method

.method static declared-synchronized restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "sso"    # Lanet/channel/statist/StrategyStatObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lanet/channel/statist/StrategyStatObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 140
    const-class v1, Lc8/hL;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lc8/hL;->getStrategyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/aM;->restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
