.class public Lc8/PAb;
.super Ljava/lang/Object;
.source "LogSqliteStore.java"

# interfaces
.implements Lc8/OAb;


# static fields
.field private static final TAG:Ljava/lang/String; = "UTSqliteLogStore"


# instance fields
.field countSql:Ljava/lang/String;

.field deleteSql:Ljava/lang/String;

.field querySql:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "SELECT * FROM %s ORDER BY %s ASC LIMIT %d"

    iput-object v0, p0, Lc8/PAb;->querySql:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "SELECT count(*) FROM %s"

    iput-object v0, p0, Lc8/PAb;->countSql:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "DELETE FROM  %s where _id in ( select _id from %s  ORDER BY priority ASC ,  _id ASC LIMIT %d )"

    iput-object v0, p0, Lc8/PAb;->deleteSql:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/tAb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearOldLogByCount(I)I
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 65
    invoke-static {}, Lc8/NBb;->d()V

    .line 66
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    const-class v2, Lc8/tAb;

    invoke-virtual {v1, v2}, Lc8/Wzb;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    const-class v2, Lc8/tAb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " _id in ( select _id from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ASC , _id ASC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lc8/Wzb;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public declared-synchronized clearOldLogByField(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "logField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V

    .line 60
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/tAb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lc8/Wzb;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized count()I
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/tAb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->count(Ljava/lang/Class;)I
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

.method public declared-synchronized delete(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Wzb;->delete(Ljava/util/List;)I
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

.method public declared-synchronized get(I)Ljava/util/List;
    .locals 4
    .param p1, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/tAb;

    const/4 v2, 0x0

    const-string/jumbo v3, "priority DESC , time DESC "

    invoke-virtual {v0, v1, v2, v3, p1}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDbFileSize()D
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Wzb;->getDbFileSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Wzb;->insert(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Wzb;->update(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateLogPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Wzb;->updateLogPriority(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
