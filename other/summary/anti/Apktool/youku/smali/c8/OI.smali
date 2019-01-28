.class public Lc8/OI;
.super Ljava/lang/Object;
.source "AccsSessionManager.java"


# instance fields
.field instance:Lanet/channel/SessionCenter;

.field lastKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 1
    .param p1, "instance"    # Lanet/channel/SessionCenter;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lc8/OI;->lastKeys:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    .line 32
    return-void
.end method

.method private closeSessions(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string/jumbo v1, "awcn.AccsSessionManager"

    const-string/jumbo v2, "closeSessions"

    iget-object v3, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    iget-object v3, v3, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "host"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    invoke-virtual {v1, p1}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lc8/lJ;

    move-result-object v0

    .line 106
    .local v0, "sr":Lc8/lJ;
    invoke-virtual {v0, v6}, Lc8/lJ;->closeSessions(Z)V

    goto :goto_0
.end method

.method private isNeedCheckSession()Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string/jumbo v2, "awcn.AccsSessionManager"

    const-string/jumbo v3, "app is background not need check accs session, return"

    iget-object v4, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "bg"

    aput-object v6, v5, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const-string/jumbo v2, "awcn.AccsSessionManager"

    const-string/jumbo v3, "network is not available, not need check accs session, return"

    iget-object v4, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "network"

    aput-object v6, v5, v0

    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkAndStartSession()V
    .locals 11

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    iget-object v6, v6, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    invoke-virtual {v6}, Lc8/YI;->getSessionInfos()Ljava/util/Collection;

    move-result-object v5

    .line 37
    .local v5, "sessionInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lanet/channel/SessionInfo;>;"
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 38
    .local v1, "newKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 42
    .restart local v1    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/cJ;

    .line 43
    .local v4, "sessionInfo":Lc8/cJ;
    iget-boolean v6, v4, Lc8/cJ;->isKeepAlive:Z

    if-eqz v6, :cond_1

    .line 44
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v7

    iget-object v8, v4, Lc8/cJ;->host:Ljava/lang/String;

    iget-boolean v6, v4, Lc8/cJ;->isAccs:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "https"

    :goto_1
    invoke-interface {v7, v8, v6}, Lc8/MK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "://"

    iget-object v7, v4, Lc8/cJ;->host:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "sessionInfo":Lc8/cJ;
    .end local v5    # "sessionInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lanet/channel/SessionInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 44
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "newKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "sessionInfo":Lc8/cJ;
    .restart local v5    # "sessionInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lanet/channel/SessionInfo;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v6, "http"

    goto :goto_1

    .line 50
    .end local v4    # "sessionInfo":Lc8/cJ;
    :cond_3
    iget-object v6, p0, Lc8/OI;->lastKeys:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 52
    invoke-direct {p0, v2}, Lc8/OI;->closeSessions(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lc8/OI;->isNeedCheckSession()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_6

    .line 69
    :goto_3
    monitor-exit p0

    return-void

    .line 60
    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .restart local v2    # "s":Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    sget-object v7, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v2, v7, v8, v9}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 64
    :catch_0
    move-exception v6

    :try_start_4
    const-string/jumbo v6, "start session failed"

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 68
    .end local v2    # "s":Ljava/lang/String;
    :cond_7
    iput-object v1, p0, Lc8/OI;->lastKeys:Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized forceCloseSession(Z)V
    .locals 8
    .param p1, "recreate"    # Z

    .prologue
    .line 76
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "awcn.AccsSessionManager"

    const-string/jumbo v3, "forceCloseSession"

    iget-object v4, p0, Lc8/OI;->instance:Lanet/channel/SessionCenter;

    iget-object v4, v4, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "reCreate"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lc8/OI;->lastKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "host":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/OI;->closeSessions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 83
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lc8/OI;->checkAndStartSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized forceReCreateSession()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lc8/OI;->forceCloseSession(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
