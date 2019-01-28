.class public Lc8/pZe;
.super Ljava/lang/Object;
.source "DbWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oZe;
    }
.end annotation


# instance fields
.field private dbHandler:Lc8/kZe;

.field private dbTask:Lc8/lZe;

.field private workListener:Lc8/oZe;


# direct methods
.method public constructor <init>(Lc8/lZe;Lc8/kZe;Lc8/oZe;)V
    .locals 0
    .param p1, "task"    # Lc8/lZe;
    .param p2, "connection"    # Lc8/kZe;
    .param p3, "listener"    # Lc8/oZe;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    .line 29
    iput-object p2, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    .line 30
    iput-object p3, p0, Lc8/pZe;->workListener:Lc8/oZe;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lc8/pZe;)Lc8/oZe;
    .locals 1
    .param p0, "x0"    # Lc8/pZe;

    .prologue
    .line 10
    iget-object v0, p0, Lc8/pZe;->workListener:Lc8/oZe;

    return-object v0
.end method

.method static synthetic access$100(Lc8/pZe;)Lc8/lZe;
    .locals 1
    .param p0, "x0"    # Lc8/pZe;

    .prologue
    .line 10
    iget-object v0, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    return-object v0
.end method

.method static synthetic access$200(Lc8/pZe;)Lc8/kZe;
    .locals 1
    .param p0, "x0"    # Lc8/pZe;

    .prologue
    .line 10
    iget-object v0, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    return-object v0
.end method

.method private logInfo(Lc8/lZe;Lc8/UYe;)V
    .locals 8
    .param p1, "task"    # Lc8/lZe;
    .param p2, "result"    # Lc8/UYe;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p1}, Lc8/lZe;->isExt()Z

    move-result v4

    if-nez v4, :cond_4

    .line 113
    iget-object v4, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v4, :cond_2

    .line 114
    iget-boolean v4, p1, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_1

    .line 115
    const-string/jumbo v4, "SQLUpdate"

    iget-object v5, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    invoke-static {v4, v5, v6}, Lc8/VYe;->logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string/jumbo v4, "SQLQuery"

    iget-object v5, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    invoke-static {v4, v5, v6}, Lc8/VYe;->logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-boolean v4, p1, Lc8/lZe;->isLog:Z

    if-eqz v4, :cond_0

    .line 120
    iget-wide v4, p1, Lc8/lZe;->endTime:D

    iget-wide v6, p1, Lc8/lZe;->beginTime:D

    sub-double v0, v4, v6

    .line 121
    .local v0, "cost":D
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v3, "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v4, "SQLCost"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v2, "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Type"

    const-string/jumbo v5, "SQL"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-boolean v4, p1, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_3

    .line 127
    const-string/jumbo v4, "Operation"

    const-string/jumbo v5, "Update"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v4, "AliVfsDBStat"

    invoke-static {v4, v2, v3}, Lc8/VYe;->logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 131
    :cond_3
    const-string/jumbo v4, "Operation"

    const-string/jumbo v5, "Query"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v4, "AliVfsDBStat"

    invoke-static {v4, v2, v3}, Lc8/VYe;->logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 137
    .end local v0    # "cost":D
    .end local v2    # "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_4
    iget-object v4, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v4, :cond_6

    .line 138
    iget-boolean v4, p1, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_5

    .line 139
    const-string/jumbo v4, "SQLExtUpdate"

    iget-object v5, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v6, p1, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lc8/VYe;->logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    const-string/jumbo v4, "SQLExtQuery"

    iget-object v5, p2, Lc8/UYe;->aliDBError:Lc8/RYe;

    iget-object v6, p1, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lc8/VYe;->logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_6
    iget-boolean v4, p1, Lc8/lZe;->isLog:Z

    if-eqz v4, :cond_0

    .line 144
    iget-wide v4, p1, Lc8/lZe;->endTime:D

    iget-wide v6, p1, Lc8/lZe;->beginTime:D

    sub-double v0, v4, v6

    .line 145
    .restart local v0    # "cost":D
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 146
    .restart local v3    # "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v4, "SQLCost"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    .restart local v2    # "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Type"

    iget-object v5, p1, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-boolean v4, p1, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_7

    .line 151
    const-string/jumbo v4, "Operation"

    const-string/jumbo v5, "Update"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v4, "AliVfsDBStat"

    invoke-static {v4, v2, v3}, Lc8/VYe;->logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 155
    :cond_7
    const-string/jumbo v4, "Operation"

    const-string/jumbo v5, "Query"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v4, "AliVfsDBStat"

    invoke-static {v4, v2, v3}, Lc8/VYe;->logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 38
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, "result":Lc8/UYe;
    :try_start_0
    iget-object v4, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4, v5}, Lc8/kZe;->excutePreExt(Lc8/lZe;)Lc8/UYe;

    move-result-object v2

    .line 43
    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v4, :cond_0

    .line 44
    iget-object v4, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4, v5}, Lc8/kZe;->executeSql(Lc8/lZe;)Lc8/UYe;

    move-result-object v2

    .line 45
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v6

    iput-wide v6, v4, Lc8/lZe;->endTime:D

    .line 48
    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v4, :cond_0

    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-boolean v4, v4, Lc8/lZe;->isRead:Z

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, v2, Lc8/UYe;->aliResultSet:Lc8/XYe;

    new-instance v5, Lc8/mZe;

    invoke-direct {v5, p0}, Lc8/mZe;-><init>(Lc8/pZe;)V

    invoke-virtual {v4, v5}, Lc8/XYe;->setOnCloseListener(Lc8/uZe;)V

    .line 57
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4}, Lc8/lZe;->isExt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4, v5, v2}, Lc8/kZe;->excutePostExt(Lc8/lZe;Lc8/UYe;)Lc8/UYe;
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 67
    :cond_0
    if-nez v2, :cond_1

    .line 68
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v4, Lc8/RYe;

    const-string/jumbo v5, "General error"

    invoke-direct {v4, v8, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v4}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 72
    .restart local v2    # "result":Lc8/UYe;
    :cond_1
    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-boolean v4, v4, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_4

    .line 73
    :cond_2
    iget-object v4, p0, Lc8/pZe;->workListener:Lc8/oZe;

    if-eqz v4, :cond_3

    .line 74
    iget-object v4, p0, Lc8/pZe;->workListener:Lc8/oZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-object v6, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    invoke-interface {v4, v5, v6}, Lc8/oZe;->onWorkDone(Lc8/lZe;Lc8/kZe;)V

    .line 75
    :cond_3
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4}, Lc8/lZe;->isExt()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    :try_start_1
    iget-object v4, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4, v5, v2}, Lc8/kZe;->excutePostExt(Lc8/lZe;Lc8/UYe;)Lc8/UYe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v4, Lc8/RYe;

    const-string/jumbo v5, "General error"

    invoke-direct {v4, v8, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v4}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 86
    .restart local v2    # "result":Lc8/UYe;
    :cond_4
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4}, Lc8/lZe;->isExt()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v4, :cond_5

    .line 87
    new-instance v3, Lc8/TYe;

    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    invoke-direct {v3, v4}, Lc8/TYe;-><init>(Lc8/RYe;)V

    .end local v2    # "result":Lc8/UYe;
    .local v3, "result":Lc8/UYe;
    move-object v2, v3

    .line 89
    .end local v3    # "result":Lc8/UYe;
    .restart local v2    # "result":Lc8/UYe;
    :cond_5
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-direct {p0, v4, v2}, Lc8/pZe;->logInfo(Lc8/lZe;Lc8/UYe;)V

    .line 90
    move-object v1, v2

    .line 91
    .local v1, "finalResult":Lc8/UYe;
    invoke-static {}, Lc8/bZe;->getInstance()Lc8/bZe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/bZe;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lc8/nZe;

    invoke-direct {v5, p0, v1}, Lc8/nZe;-><init>(Lc8/pZe;Lc8/UYe;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 103
    :goto_0
    return-void

    .line 79
    .end local v1    # "finalResult":Lc8/UYe;
    :catchall_0
    move-exception v4

    if-nez v2, :cond_6

    .line 80
    new-instance v5, Lc8/UYe;

    new-instance v6, Lc8/RYe;

    const-string/jumbo v7, "General error"

    invoke-direct {v6, v8, v7}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v5, v6}, Lc8/UYe;-><init>(Lc8/RYe;)V

    :cond_6
    throw v4

    .line 62
    :catch_0
    move-exception v0

    move-object v3, v2

    .line 63
    .end local v2    # "result":Lc8/UYe;
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .restart local v3    # "result":Lc8/UYe;
    :try_start_2
    new-instance v2, Lc8/UYe;

    new-instance v4, Lc8/RYe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v4}, Lc8/UYe;-><init>(Lc8/RYe;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 67
    .end local v3    # "result":Lc8/UYe;
    .restart local v2    # "result":Lc8/UYe;
    if-nez v2, :cond_7

    .line 68
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v4, Lc8/RYe;

    const-string/jumbo v5, "General error"

    invoke-direct {v4, v8, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v4}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 72
    .restart local v2    # "result":Lc8/UYe;
    :cond_7
    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v4, :cond_8

    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-boolean v4, v4, Lc8/lZe;->isRead:Z

    if-nez v4, :cond_a

    .line 73
    :cond_8
    iget-object v4, p0, Lc8/pZe;->workListener:Lc8/oZe;

    if-eqz v4, :cond_9

    .line 74
    iget-object v4, p0, Lc8/pZe;->workListener:Lc8/oZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-object v6, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    invoke-interface {v4, v5, v6}, Lc8/oZe;->onWorkDone(Lc8/lZe;Lc8/kZe;)V

    .line 75
    :cond_9
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4}, Lc8/lZe;->isExt()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 77
    :try_start_3
    iget-object v4, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4, v5, v2}, Lc8/kZe;->excutePostExt(Lc8/lZe;Lc8/UYe;)Lc8/UYe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 79
    if-nez v2, :cond_a

    .line 80
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v4, Lc8/RYe;

    const-string/jumbo v5, "General error"

    invoke-direct {v4, v8, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v4}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 86
    .restart local v2    # "result":Lc8/UYe;
    :cond_a
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v4}, Lc8/lZe;->isExt()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v4, :cond_b

    .line 87
    new-instance v3, Lc8/TYe;

    iget-object v4, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    invoke-direct {v3, v4}, Lc8/TYe;-><init>(Lc8/RYe;)V

    .end local v2    # "result":Lc8/UYe;
    .restart local v3    # "result":Lc8/UYe;
    move-object v2, v3

    .line 89
    .end local v3    # "result":Lc8/UYe;
    .restart local v2    # "result":Lc8/UYe;
    :cond_b
    iget-object v4, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-direct {p0, v4, v2}, Lc8/pZe;->logInfo(Lc8/lZe;Lc8/UYe;)V

    .line 90
    move-object v1, v2

    .line 91
    .restart local v1    # "finalResult":Lc8/UYe;
    invoke-static {}, Lc8/bZe;->getInstance()Lc8/bZe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/bZe;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lc8/nZe;

    invoke-direct {v5, p0, v1}, Lc8/nZe;-><init>(Lc8/pZe;Lc8/UYe;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 79
    .end local v1    # "finalResult":Lc8/UYe;
    :catchall_1
    move-exception v4

    if-nez v2, :cond_c

    .line 80
    new-instance v5, Lc8/UYe;

    new-instance v6, Lc8/RYe;

    const-string/jumbo v7, "General error"

    invoke-direct {v6, v8, v7}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v5, v6}, Lc8/UYe;-><init>(Lc8/RYe;)V

    :cond_c
    throw v4

    .line 67
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    :catchall_2
    move-exception v4

    :goto_1
    if-nez v2, :cond_d

    .line 68
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v5, Lc8/RYe;

    const-string/jumbo v6, "General error"

    invoke-direct {v5, v8, v6}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v5}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 72
    .restart local v2    # "result":Lc8/UYe;
    :cond_d
    iget-object v5, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v5, :cond_e

    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-boolean v5, v5, Lc8/lZe;->isRead:Z

    if-nez v5, :cond_10

    .line 73
    :cond_e
    iget-object v5, p0, Lc8/pZe;->workListener:Lc8/oZe;

    if-eqz v5, :cond_f

    .line 74
    iget-object v5, p0, Lc8/pZe;->workListener:Lc8/oZe;

    iget-object v6, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    iget-object v7, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    invoke-interface {v5, v6, v7}, Lc8/oZe;->onWorkDone(Lc8/lZe;Lc8/kZe;)V

    .line 75
    :cond_f
    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v5}, Lc8/lZe;->isExt()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 77
    :try_start_4
    iget-object v5, p0, Lc8/pZe;->dbHandler:Lc8/kZe;

    iget-object v6, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v5, v6, v2}, Lc8/kZe;->excutePostExt(Lc8/lZe;Lc8/UYe;)Lc8/UYe;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    .line 79
    if-nez v2, :cond_10

    .line 80
    new-instance v2, Lc8/UYe;

    .end local v2    # "result":Lc8/UYe;
    new-instance v5, Lc8/RYe;

    const-string/jumbo v6, "General error"

    invoke-direct {v5, v8, v6}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v5}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 86
    .restart local v2    # "result":Lc8/UYe;
    :cond_10
    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-virtual {v5}, Lc8/lZe;->isExt()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v5, :cond_11

    .line 87
    new-instance v3, Lc8/TYe;

    iget-object v5, v2, Lc8/UYe;->aliDBError:Lc8/RYe;

    invoke-direct {v3, v5}, Lc8/TYe;-><init>(Lc8/RYe;)V

    .end local v2    # "result":Lc8/UYe;
    .restart local v3    # "result":Lc8/UYe;
    move-object v2, v3

    .line 89
    .end local v3    # "result":Lc8/UYe;
    .restart local v2    # "result":Lc8/UYe;
    :cond_11
    iget-object v5, p0, Lc8/pZe;->dbTask:Lc8/lZe;

    invoke-direct {p0, v5, v2}, Lc8/pZe;->logInfo(Lc8/lZe;Lc8/UYe;)V

    .line 90
    move-object v1, v2

    .line 91
    .restart local v1    # "finalResult":Lc8/UYe;
    invoke-static {}, Lc8/bZe;->getInstance()Lc8/bZe;

    move-result-object v5

    invoke-virtual {v5}, Lc8/bZe;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    new-instance v6, Lc8/nZe;

    invoke-direct {v6, p0, v1}, Lc8/nZe;-><init>(Lc8/pZe;Lc8/UYe;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 103
    throw v4

    .line 79
    .end local v1    # "finalResult":Lc8/UYe;
    :catchall_3
    move-exception v4

    if-nez v2, :cond_12

    .line 80
    new-instance v5, Lc8/UYe;

    new-instance v6, Lc8/RYe;

    const-string/jumbo v7, "General error"

    invoke-direct {v6, v8, v7}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v5, v6}, Lc8/UYe;-><init>(Lc8/RYe;)V

    :cond_12
    throw v4

    .line 67
    .end local v2    # "result":Lc8/UYe;
    .restart local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .restart local v3    # "result":Lc8/UYe;
    :catchall_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "result":Lc8/UYe;
    .restart local v2    # "result":Lc8/UYe;
    goto/16 :goto_1
.end method
