.class public Lc8/dJ;
.super Ljava/lang/Object;
.source "SessionPool.java"


# instance fields
.field private final connPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/lJ;",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lc8/dJ;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    iget-object v0, p0, Lc8/dJ;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    iget-object v0, p0, Lc8/dJ;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method


# virtual methods
.method public add(Lc8/lJ;Lanet/channel/Session;)V
    .locals 3
    .param p1, "info"    # Lc8/lJ;
    .param p2, "conn"    # Lanet/channel/Session;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 44
    :try_start_0
    iget-object v1, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 45
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .restart local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    iget-object v1, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 55
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 52
    :cond_3
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public containsValue(Lc8/lJ;Lanet/channel/Session;)Z
    .locals 4
    .param p1, "request"    # Lc8/lJ;
    .param p2, "s"    # Lanet/channel/Session;

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 180
    :try_start_0
    iget-object v2, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_0

    .line 186
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v1

    .line 184
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 186
    :cond_1
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/lJ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 164
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 166
    :try_start_0
    iget-object v2, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 174
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    .local v1, "infos":Ljava/lang/Object;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    :goto_0
    return-object v1

    .line 170
    .end local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    iget-object v2, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 174
    .restart local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    goto :goto_0

    .line 172
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    .end local v1    # "infos":Ljava/lang/Object;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public getSession(Lc8/lJ;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;
    .locals 6
    .param p1, "key"    # Lc8/lJ;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "select":Lanet/channel/Session;
    iget-object v4, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 144
    :try_start_0
    iget-object v4, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    :cond_0
    const/4 v4, 0x0

    .line 157
    iget-object v5, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 159
    :goto_0
    return-object v4

    .line 149
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/Session;

    .line 150
    .local v3, "session":Lanet/channel/Session;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lanet/channel/Session;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_3

    iget-object v4, v3, Lanet/channel/Session;->mConnType:Lc8/BJ;

    invoke-virtual {v4}, Lc8/BJ;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-ne v4, p2, :cond_2

    .line 152
    :cond_3
    move-object v2, v3

    .line 157
    .end local v3    # "session":Lanet/channel/Session;
    :cond_4
    iget-object v4, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v4, v2

    .line 159
    goto :goto_0

    .line 157
    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4
.end method

.method public getSessions(Lc8/lJ;)Ljava/util/List;
    .locals 3
    .param p1, "info"    # Lc8/lJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/lJ;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 78
    :try_start_0
    iget-object v1, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/dJ;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public remove(Lc8/lJ;Lanet/channel/Session;)V
    .locals 3
    .param p1, "info"    # Lc8/lJ;
    .param p2, "conn"    # Lanet/channel/Session;

    .prologue
    .line 60
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 62
    :try_start_0
    iget-object v1, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .local v0, "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-nez v0, :cond_0

    .line 71
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lc8/dJ;->connPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_1
    iget-object v1, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v0    # "entity":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/dJ;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method
