.class public Lc8/UVe;
.super Ljava/lang/Object;
.source "RSContentSqliteStore.java"


# static fields
.field private static mInstance:Lc8/UVe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lc8/UVe;->mInstance:Lc8/UVe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private clearOldLogByCount(I)I
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 42
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v1

    const-class v2, Lc8/TVe;

    invoke-virtual {v1, v2}, Lc8/xVe;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v1

    const-class v2, Lc8/TVe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " _id in ( select _id from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY _id ASC LIMIT "

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

    invoke-virtual {v1, v2, v3, v4}, Lc8/xVe;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private count()I
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v0

    const-class v1, Lc8/TVe;

    invoke-virtual {v0, v1}, Lc8/xVe;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lc8/UVe;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lc8/UVe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/UVe;->mInstance:Lc8/UVe;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lc8/UVe;

    invoke-direct {v0}, Lc8/UVe;-><init>()V

    sput-object v0, Lc8/UVe;->mInstance:Lc8/UVe;

    .line 18
    :cond_0
    sget-object v0, Lc8/UVe;->mInstance:Lc8/UVe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v0

    const-class v1, Lc8/TVe;

    invoke-virtual {v0, v1}, Lc8/xVe;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized find(Ljava/lang/String;)I
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v0

    const-class v1, Lc8/TVe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/xVe;->count(Ljava/lang/Class;Ljava/lang/String;)I
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

.method public declared-synchronized insertStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 26
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lc8/UVe;->count()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_2

    .line 27
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lc8/UVe;->clearOldLogByCount(I)I

    .line 30
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "log":Ljava/lang/String;
    new-instance v3, Lc8/TVe;

    invoke-direct {v3, v0}, Lc8/TVe;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 22
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 34
    .restart local v1    # "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/xVe;->insert(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
