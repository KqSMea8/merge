.class public Lc8/hZe;
.super Ljava/lang/Object;
.source "DBConnectionPool.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<",
        "Lc8/kZe;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_COUNT:I = 0x1

.field private static final MEMORY_DB_NAME:Ljava/lang/String; = ":memory:"


# instance fields
.field private currentDbConnectionCount:I

.field private dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lc8/kZe;",
            ">;"
        }
    .end annotation
.end field

.field private dbKey:Ljava/lang/String;

.field private dbPath:Ljava/lang/String;

.field private dbVersion:I

.field public transactionHandler:Lc8/kZe;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lc8/hZe;->currentDbConnectionCount:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 76
    return-void
.end method

.method private addConnections(ILc8/jZe;)I
    .locals 7
    .param p1, "count"    # I
    .param p2, "callback"    # Lc8/jZe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "addNum":I
    if-lez p1, :cond_2

    iget-object v3, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v3, :cond_2

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 140
    if-nez v2, :cond_1

    .line 141
    iget-object v3, p0, Lc8/hZe;->dbPath:Ljava/lang/String;

    iget v4, p0, Lc8/hZe;->dbVersion:I

    iget-object v5, p0, Lc8/hZe;->dbKey:Ljava/lang/String;

    invoke-static {p2, v3, v4, v5}, Lc8/kZe;->create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/kZe;

    move-result-object v1

    .line 144
    .local v1, "dbh":Lc8/kZe;
    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "dbh":Lc8/kZe;
    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lc8/hZe;->dbPath:Ljava/lang/String;

    iget v5, p0, Lc8/hZe;->dbVersion:I

    iget-object v6, p0, Lc8/hZe;->dbKey:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lc8/kZe;->create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/kZe;

    move-result-object v1

    .restart local v1    # "dbh":Lc8/kZe;
    goto :goto_1

    .line 148
    .end local v1    # "dbh":Lc8/kZe;
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private adjustDBConnectionCount(I)V
    .locals 4
    .param p1, "newCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v3, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v3, :cond_0

    .line 183
    iget v3, p0, Lc8/hZe;->currentDbConnectionCount:I

    sub-int v1, p1, v3

    .line 184
    .local v1, "dvalue":I
    if-lez v1, :cond_1

    .line 185
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lc8/hZe;->addConnections(ILc8/jZe;)I

    move-result v0

    .line 186
    .local v0, "addNum":I
    iget v3, p0, Lc8/hZe;->currentDbConnectionCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lc8/hZe;->currentDbConnectionCount:I

    .line 193
    .end local v0    # "addNum":I
    .end local v1    # "dvalue":I
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v1    # "dvalue":I
    :cond_1
    if-gez v1, :cond_0

    .line 189
    neg-int v3, v1

    invoke-direct {p0, v3}, Lc8/hZe;->subConnections(I)I

    move-result v2

    .line 190
    .local v2, "subNum":I
    iget v3, p0, Lc8/hZe;->currentDbConnectionCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lc8/hZe;->currentDbConnectionCount:I

    goto :goto_0
.end method

.method public static create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/hZe;
    .locals 1
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
    .line 50
    new-instance v0, Lc8/hZe;

    invoke-direct {v0}, Lc8/hZe;-><init>()V

    .line 51
    .local v0, "pool":Lc8/hZe;
    invoke-direct {v0, p0, p1, p2, p3}, Lc8/hZe;->initDBConnections(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    return-object v0
.end method

.method private initDBConnections(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lc8/jZe;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/alivfsdb/AliDBException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 88
    iput-object p2, p0, Lc8/hZe;->dbPath:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lc8/hZe;->dbKey:Ljava/lang/String;

    .line 90
    iput p3, p0, Lc8/hZe;->dbVersion:I

    .line 91
    iget-object v0, p0, Lc8/hZe;->dbPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":memory:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, v2, p1}, Lc8/hZe;->addConnections(ILc8/jZe;)I

    move-result v0

    iput v0, p0, Lc8/hZe;->currentDbConnectionCount:I

    .line 97
    :goto_0
    invoke-direct {p0, p2}, Lc8/hZe;->setTempStoreDir(Ljava/lang/String;)V

    .line 99
    return-void

    .line 94
    :cond_0
    invoke-direct {p0, v2, p1}, Lc8/hZe;->addConnections(ILc8/jZe;)I

    move-result v0

    iput v0, p0, Lc8/hZe;->currentDbConnectionCount:I

    goto :goto_0
.end method

.method private setTempStoreDir(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v4, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 58
    iget-object v4, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/kZe;

    .line 59
    .local v1, "handler":Lc8/kZe;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRAGMA temp_store_directory=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "pPath":Ljava/lang/String;
    iget-object v4, v1, Lc8/kZe;->cipherDB:Lc8/BZe;

    invoke-virtual {v4, v2}, Lc8/BZe;->execUpdate(Ljava/lang/String;)Lc8/GZe;

    move-result-object v3

    .line 63
    .local v3, "updateResult":Lc8/GZe;
    iget-object v4, v3, Lc8/GZe;->cipherDBError:Lc8/DZe;

    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Lcom/taobao/android/alivfsdb/AliDBException;

    iget-object v5, v3, Lc8/GZe;->cipherDBError:Lc8/DZe;

    iget v5, v5, Lc8/DZe;->errorCode:I

    iget-object v6, v3, Lc8/GZe;->cipherDBError:Lc8/DZe;

    iget-object v6, v6, Lc8/DZe;->errorMsg:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/taobao/android/alivfsdb/AliDBException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 68
    .end local v2    # "pPath":Ljava/lang/String;
    .end local v3    # "updateResult":Lc8/GZe;
    :cond_0
    iget-object v4, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "handler":Lc8/kZe;
    :cond_1
    return-void
.end method

.method private subConnections(I)I
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "subNum":I
    if-lez p1, :cond_1

    iget-object v3, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v3, :cond_1

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 160
    iget-object v3, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    .line 161
    .local v0, "hbh":Lc8/kZe;
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lc8/kZe;->close()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "hbh":Lc8/kZe;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method


# virtual methods
.method public add(Lc8/kZe;)Z
    .locals 1
    .param p1, "e"    # Lc8/kZe;

    .prologue
    .line 283
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lc8/kZe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hZe;->add(Lc8/kZe;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lc8/kZe;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/taobao/android/alivfsdb/DBHandler;>;"
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public attachOrDetach(Lc8/lZe;)V
    .locals 4
    .param p1, "task"    # Lc8/lZe;

    .prologue
    .line 200
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/hZe;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 201
    invoke-virtual {p0}, Lc8/hZe;->poll()Lc8/kZe;

    move-result-object v1

    .line 202
    .local v1, "dbHandler":Lc8/kZe;
    invoke-virtual {v1, p1}, Lc8/kZe;->executeSql(Lc8/lZe;)Lc8/UYe;

    move-result-object v0

    .line 203
    .local v0, "aliDBExecResult":Lc8/UYe;
    invoke-virtual {p0, v1}, Lc8/hZe;->offer(Lc8/kZe;)Z

    .line 204
    iget-object v3, v0, Lc8/UYe;->aliDBError:Lc8/RYe;

    if-eqz v3, :cond_1

    .line 208
    .end local v0    # "aliDBExecResult":Lc8/UYe;
    .end local v1    # "dbHandler":Lc8/kZe;
    :cond_0
    return-void

    .line 200
    .restart local v0    # "aliDBExecResult":Lc8/UYe;
    .restart local v1    # "dbHandler":Lc8/kZe;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 278
    return-void
.end method

.method public declared-synchronized closeConnections()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lc8/hZe;->setDbConnectionCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 232
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Lc8/kZe;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    return-object v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/hZe;->element()Lc8/kZe;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDbConnectionCount()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lc8/hZe;->currentDbConnectionCount:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lc8/kZe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Lc8/kZe;)Z
    .locals 1
    .param p1, "e"    # Lc8/kZe;

    .prologue
    .line 290
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lc8/kZe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hZe;->offer(Lc8/kZe;)Z

    move-result v0

    return v0
.end method

.method public peek()Lc8/kZe;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/hZe;->peek()Lc8/kZe;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lc8/kZe;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/hZe;->poll()Lc8/kZe;

    move-result-object v0

    return-object v0
.end method

.method public remove()Lc8/kZe;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kZe;

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/hZe;->remove()Lc8/kZe;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 252
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setDbConnectionCount(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/hZe;->dbPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":memory:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 109
    iget v1, p0, Lc8/hZe;->currentDbConnectionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return v1

    .line 111
    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget v1, p0, Lc8/hZe;->currentDbConnectionCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, p1, :cond_1

    .line 113
    :try_start_2
    invoke-direct {p0, p1}, Lc8/hZe;->adjustDBConnectionCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_1
    :goto_1
    :try_start_3
    iget v1, p0, Lc8/hZe;->currentDbConnectionCount:I

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lc8/hZe;->dbHandlerQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
