.class public Lc8/kZe;
.super Ljava/lang/Object;
.source "DBHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jZe;
    }
.end annotation


# instance fields
.field cipherDB:Lc8/BZe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/kZe;
    .locals 8
    .param p0, "callback"    # Lc8/jZe;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lc8/kZe;

    invoke-direct {v1}, Lc8/kZe;-><init>()V

    .line 39
    .local v1, "dbHandler":Lc8/kZe;
    if-nez p3, :cond_1

    .line 40
    :try_start_0
    new-instance v0, Lc8/BZe;

    invoke-direct {v0, p1, p2}, Lc8/BZe;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "cipherDB":Lc8/BZe;
    :goto_0
    const v4, 0x220006

    new-instance v5, Lc8/iZe;

    invoke-direct {v5, p0, v1}, Lc8/iZe;-><init>(Lc8/jZe;Lc8/kZe;)V

    invoke-virtual {v0, v4, v5}, Lc8/BZe;->open(ILc8/JZe;)Lc8/DZe;

    move-result-object v3

    .line 54
    .local v3, "err":Lc8/DZe;
    if-eqz v3, :cond_0

    iget v4, v3, Lc8/DZe;->errorCode:I

    if-nez v4, :cond_2

    .line 55
    :cond_0
    iput-object v0, v1, Lc8/kZe;->cipherDB:Lc8/BZe;

    .line 56
    return-object v1

    .line 42
    .end local v0    # "cipherDB":Lc8/BZe;
    .end local v3    # "err":Lc8/DZe;
    :cond_1
    :try_start_1
    new-instance v0, Lc8/BZe;

    invoke-direct {v0, p1, p2, p3}, Lc8/BZe;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "cipherDB":Lc8/BZe;
    goto :goto_0

    .line 43
    .end local v0    # "cipherDB":Lc8/BZe;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v4, Lcom/taobao/android/alivfsdb/AliDBException;

    invoke-virtual {v2}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/taobao/android/alivfsdb/AliDBException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 59
    .end local v2    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .restart local v0    # "cipherDB":Lc8/BZe;
    .restart local v3    # "err":Lc8/DZe;
    :cond_2
    const/4 v4, -0x8

    iget v5, v3, Lc8/DZe;->errorCode:I

    if-ne v4, v5, :cond_3

    .line 60
    const-string/jumbo v4, "The AliVfsDB new version is lower than the old version"

    iput-object v4, v3, Lc8/DZe;->errorMsg:Ljava/lang/String;

    .line 62
    :cond_3
    const-string/jumbo v4, "Init"

    new-instance v5, Lc8/RYe;

    iget v6, v3, Lc8/DZe;->errorCode:I

    iget-object v7, v3, Lc8/DZe;->errorMsg:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lc8/VYe;->logFail(Ljava/lang/String;Lc8/RYe;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lcom/taobao/android/alivfsdb/AliDBException;

    iget v5, v3, Lc8/DZe;->errorCode:I

    iget-object v6, v3, Lc8/DZe;->errorMsg:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/taobao/android/alivfsdb/AliDBException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private executeQuerySql(Lc8/lZe;)Lc8/UYe;
    .locals 5
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 187
    iget-object v1, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    iget-object v2, p1, Lc8/lZe;->sql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/BZe;->execQuery(Ljava/lang/String;)Lc8/FZe;

    move-result-object v0

    .line 193
    .local v0, "queryResult":Lc8/FZe;
    :goto_0
    if-nez v0, :cond_1

    .line 194
    new-instance v1, Lc8/UYe;

    new-instance v2, Lc8/RYe;

    const/4 v3, -0x1

    const-string/jumbo v4, "General error"

    invoke-direct {v2, v3, v4}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 204
    :goto_1
    return-object v1

    .line 191
    .end local v0    # "queryResult":Lc8/FZe;
    :cond_0
    iget-object v1, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    iget-object v2, p1, Lc8/lZe;->sql:Ljava/lang/String;

    iget-object v3, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lc8/BZe;->execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/FZe;

    move-result-object v0

    .restart local v0    # "queryResult":Lc8/FZe;
    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, v0, Lc8/FZe;->cipherDBError:Lc8/DZe;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc8/FZe;->cipherDBError:Lc8/DZe;

    iget v1, v1, Lc8/DZe;->errorCode:I

    if-eqz v1, :cond_2

    .line 199
    new-instance v1, Lc8/UYe;

    new-instance v2, Lc8/RYe;

    iget-object v3, v0, Lc8/FZe;->cipherDBError:Lc8/DZe;

    iget v3, v3, Lc8/DZe;->errorCode:I

    iget-object v4, v0, Lc8/FZe;->cipherDBError:Lc8/DZe;

    iget-object v4, v4, Lc8/DZe;->errorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc8/UYe;-><init>(Lc8/RYe;)V

    goto :goto_1

    .line 204
    :cond_2
    new-instance v1, Lc8/UYe;

    const/4 v2, 0x0

    new-instance v3, Lc8/XYe;

    iget-object v4, v0, Lc8/FZe;->cipherResultSet:Lc8/IZe;

    invoke-direct {v3, v4}, Lc8/XYe;-><init>(Lc8/IZe;)V

    invoke-direct {v1, v2, v3}, Lc8/UYe;-><init>(Lc8/RYe;Lc8/XYe;)V

    goto :goto_1
.end method

.method private executeUpdateSql(Lc8/lZe;)Lc8/UYe;
    .locals 6
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 216
    iget-boolean v3, p1, Lc8/lZe;->isBatch:Z

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    iget-object v4, p1, Lc8/lZe;->sql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/BZe;->execBatchUpdate(Ljava/lang/String;)Lc8/GZe;

    move-result-object v2

    .line 226
    .local v2, "updateResult":Lc8/GZe;
    :goto_0
    if-nez v2, :cond_3

    .line 227
    new-instance v1, Lc8/UYe;

    new-instance v3, Lc8/RYe;

    const/4 v4, -0x1

    const-string/jumbo v5, "General error"

    invoke-direct {v3, v4, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 248
    :cond_0
    :goto_1
    return-object v1

    .line 219
    .end local v2    # "updateResult":Lc8/GZe;
    :cond_1
    iget-object v3, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 220
    iget-object v3, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    iget-object v4, p1, Lc8/lZe;->sql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/BZe;->execUpdate(Ljava/lang/String;)Lc8/GZe;

    move-result-object v2

    .restart local v2    # "updateResult":Lc8/GZe;
    goto :goto_0

    .line 222
    .end local v2    # "updateResult":Lc8/GZe;
    :cond_2
    iget-object v3, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    iget-object v4, p1, Lc8/lZe;->sql:Ljava/lang/String;

    iget-object v5, p1, Lc8/lZe;->arguments:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lc8/BZe;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Lc8/GZe;

    move-result-object v2

    .restart local v2    # "updateResult":Lc8/GZe;
    goto :goto_0

    .line 231
    :cond_3
    iget-object v3, v2, Lc8/GZe;->cipherDBError:Lc8/DZe;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lc8/GZe;->cipherDBError:Lc8/DZe;

    iget v3, v3, Lc8/DZe;->errorCode:I

    if-eqz v3, :cond_4

    .line 232
    new-instance v1, Lc8/UYe;

    new-instance v3, Lc8/RYe;

    iget-object v4, v2, Lc8/GZe;->cipherDBError:Lc8/DZe;

    iget v4, v4, Lc8/DZe;->errorCode:I

    iget-object v5, v2, Lc8/GZe;->cipherDBError:Lc8/DZe;

    iget-object v5, v5, Lc8/DZe;->errorMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    goto :goto_1

    .line 236
    :cond_4
    new-instance v1, Lc8/UYe;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 239
    .local v1, "result":Lc8/UYe;
    iget-boolean v3, p1, Lc8/lZe;->isBatch:Z

    if-eqz v3, :cond_5

    .line 240
    iget-object v3, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/BZe;->getChangeCount(Z)I

    move-result v0

    .line 245
    .local v0, "changeCount":I
    :goto_2
    if-lez v0, :cond_0

    .line 246
    iput v0, v1, Lc8/UYe;->changeCount:I

    goto :goto_1

    .line 242
    .end local v0    # "changeCount":I
    :cond_5
    iget-object v3, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/BZe;->getChangeCount(Z)I

    move-result v0

    .restart local v0    # "changeCount":I
    goto :goto_2
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    invoke-virtual {v2}, Lc8/BZe;->close()Lc8/DZe;

    move-result-object v0

    .line 81
    .local v0, "cipherDBError":Lc8/DZe;
    if-nez v0, :cond_1

    .line 87
    .end local v0    # "cipherDBError":Lc8/DZe;
    :cond_0
    :goto_0
    return v1

    .line 84
    .restart local v0    # "cipherDBError":Lc8/DZe;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public excutePostExt(Lc8/lZe;Lc8/UYe;)Lc8/UYe;
    .locals 1
    .param p1, "task"    # Lc8/lZe;
    .param p2, "sqlResult"    # Lc8/UYe;

    .prologue
    .line 176
    invoke-virtual {p1, p2}, Lc8/lZe;->processExtResultIfNeeded(Lc8/UYe;)Lc8/UYe;

    move-result-object v0

    .line 177
    .local v0, "result":Lc8/UYe;
    return-object v0
.end method

.method public excutePreExt(Lc8/lZe;)Lc8/UYe;
    .locals 2
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 96
    invoke-virtual {p1}, Lc8/lZe;->processExtSqlIfNeeded()Lc8/RYe;

    move-result-object v0

    .line 97
    .local v0, "error":Lc8/RYe;
    new-instance v1, Lc8/UYe;

    invoke-direct {v1, v0}, Lc8/UYe;-><init>(Lc8/RYe;)V

    return-object v1
.end method

.method public execOperation(Lc8/lZe;)Lc8/UYe;
    .locals 1
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 101
    iget-boolean v0, p1, Lc8/lZe;->isRead:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lc8/kZe;->executeQuerySql(Lc8/lZe;)Lc8/UYe;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lc8/kZe;->executeUpdateSql(Lc8/lZe;)Lc8/UYe;

    move-result-object v0

    goto :goto_0
.end method

.method public execTransaction(Lc8/lZe;)Lc8/UYe;
    .locals 6
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 152
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    if-eqz v2, :cond_1

    .line 154
    :try_start_0
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    invoke-virtual {v2}, Lc8/BZe;->beginTransaction()I
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iget-object v2, p1, Lc8/lZe;->transaction:Lc8/qZe;

    iget-object v3, p1, Lc8/lZe;->aliDB:Lc8/QYe;

    invoke-interface {v2, v3}, Lc8/qZe;->onTransaction(Lc8/QYe;)Z

    move-result v1

    .line 160
    .local v1, "rollback":Z
    if-nez v1, :cond_0

    .line 161
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    invoke-virtual {v2}, Lc8/BZe;->setTransactionSuccessful()I

    .line 163
    :cond_0
    iget-object v2, p0, Lc8/kZe;->cipherDB:Lc8/BZe;

    invoke-virtual {v2}, Lc8/BZe;->endTransaction()I

    .line 164
    new-instance v2, Lc8/UYe;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    .line 166
    .end local v1    # "rollback":Z
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v2, Lc8/UYe;

    new-instance v3, Lc8/RYe;

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    goto :goto_0

    .line 166
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    :cond_1
    new-instance v2, Lc8/UYe;

    new-instance v3, Lc8/RYe;

    const/4 v4, -0x3

    const-string/jumbo v5, "Handle is NULL"

    invoke-direct {v3, v4, v5}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Lc8/UYe;-><init>(Lc8/RYe;)V

    goto :goto_0
.end method

.method public executeSql(Lc8/lZe;)Lc8/UYe;
    .locals 11
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 116
    invoke-static {}, Lc8/VYe;->registerCipherDB()V

    .line 117
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v0

    .line 121
    .local v0, "beginTime":D
    iget-boolean v9, p1, Lc8/lZe;->isTranscation:Z

    if-eqz v9, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Lc8/kZe;->execTransaction(Lc8/lZe;)Lc8/UYe;

    move-result-object v8

    .line 127
    .local v8, "sqlResult":Lc8/UYe;
    :goto_0
    iget-object v9, v8, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-nez v9, :cond_0

    iget-boolean v9, p1, Lc8/lZe;->isLog:Z

    if-eqz v9, :cond_0

    .line 128
    invoke-static {}, Lc8/VYe;->getTime()D

    move-result-wide v6

    .line 129
    .local v6, "endTime":D
    sub-double v2, v6, v0

    .line 130
    .local v2, "cost":D
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v5, "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v9, "SQLCost"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v4, "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lc8/lZe;->isExt()Z

    move-result v9

    if-nez v9, :cond_2

    .line 134
    const-string/jumbo v9, "Type"

    const-string/jumbo v10, "SQL"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_1
    iget-boolean v9, p1, Lc8/lZe;->isRead:Z

    if-nez v9, :cond_3

    .line 139
    const-string/jumbo v9, "Operation"

    const-string/jumbo v10, "Update"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_2
    iget-boolean v9, p1, Lc8/lZe;->isTranscation:Z

    if-nez v9, :cond_0

    .line 144
    const-string/jumbo v9, "CipherDBStat"

    invoke-static {v9, v4, v5}, Lc8/VYe;->logStat(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 148
    .end local v2    # "cost":D
    .end local v4    # "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v6    # "endTime":D
    :cond_0
    return-object v8

    .line 124
    .end local v8    # "sqlResult":Lc8/UYe;
    :cond_1
    invoke-virtual {p0, p1}, Lc8/kZe;->execOperation(Lc8/lZe;)Lc8/UYe;

    move-result-object v8

    .restart local v8    # "sqlResult":Lc8/UYe;
    goto :goto_0

    .line 136
    .restart local v2    # "cost":D
    .restart local v4    # "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "measures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .restart local v6    # "endTime":D
    :cond_2
    const-string/jumbo v9, "Type"

    iget-object v10, p1, Lc8/lZe;->extType:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 141
    :cond_3
    const-string/jumbo v9, "Operation"

    const-string/jumbo v10, "Query"

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
