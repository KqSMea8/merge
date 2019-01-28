.class public Lc8/YK;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Lc8/MK;
.implements Lc8/sL;


# instance fields
.field protected holder:Lc8/WK;

.field private isInitialized:Z

.field private lastPersistentTime:J

.field private listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lc8/NK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/YK;->isInitialized:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/YK;->lastPersistentTime:J

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lc8/YK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic access$000(Lc8/YK;)Z
    .locals 1
    .param p0, "x0"    # Lc8/YK;

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v0

    return v0
.end method

.method private checkHolderIsNull()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lc8/YK;->holder:Lc8/WK;

    if-nez v2, :cond_0

    .line 241
    const-string/jumbo v2, "StrategyCenter not initialized"

    const/4 v3, 0x0

    const-string/jumbo v4, "isInitialized"

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v6, p0, Lc8/YK;->isInitialized:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public forceRefreshStrategy(Ljava/lang/String;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 180
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string/jumbo v0, "awcn.StrategyCenter"

    const-string/jumbo v1, "force refresh strategy"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v0}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getCNameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v0}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, ""

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v0}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/StrategyTable;->clientIp:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 176
    :cond_1
    :goto_0
    return-object v1

    .line 163
    :cond_2
    iget-object v2, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v2}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "cname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    move-object p1, v0

    .line 168
    :cond_3
    iget-object v2, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v2}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lc8/YK;->holder:Lc8/WK;

    iget-object v2, v2, Lc8/WK;->localDnsStrategyTable:Lc8/PK;

    invoke-virtual {v2, p1}, Lc8/PK;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 173
    :cond_4
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string/jumbo v2, "getConnStrategyListByHost"

    const/4 v3, 0x0

    const-string/jumbo v4, "host"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string/jumbo v6, "result"

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "rawUrlString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 127
    invoke-static {p1}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v1

    .line 128
    .local v1, "httpUrl":Lc8/XL;
    if-nez v1, :cond_1

    .line 129
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, "url is invalid."

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "URL"

    aput-object v8, v7, v12

    aput-object p1, v7, v11

    const-string/jumbo v8, "stack"

    aput-object v8, v7, v13

    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "getFormalizeUrl"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lc8/eM;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v4, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :cond_1
    move-object v2, p1

    .line 135
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lc8/YK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "safeAisle":Ljava/lang/String;
    invoke-virtual {v1}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "//"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_2
    const/4 v5, 0x1

    invoke-static {v5}, Lc8/KL;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "raw"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x80

    invoke-static {p1, v10}, Lc8/cM;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "ret"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x80

    invoke-static {v2, v10}, Lc8/cM;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v3    # "safeAisle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.StrategyCenter"

    const-string/jumbo v6, "getFormalizeUrl failed"

    new-array v7, v13, [Ljava/lang/Object;

    const-string/jumbo v8, "raw"

    aput-object v8, v7, v12

    aput-object p1, v7, v11

    invoke-static {v5, v6, v4, v0, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFormalizeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rawUrlString"    # Ljava/lang/String;
    .param p2, "dft"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lc8/YK;->getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/YK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "dftScheme"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v1

    .line 108
    .end local p2    # "dftScheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 91
    .restart local p2    # "dftScheme":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lc8/YK;->holder:Lc8/WK;

    iget-object v2, v2, Lc8/WK;->schemeMap:Lanet/channel/strategy/SafeAislesMap;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/SafeAislesMap;->getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "safeAisles":Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    move-object v0, p2

    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 101
    invoke-static {}, Lc8/RK;->getInstance()Lc8/RK;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/RK;->guessScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    const-string/jumbo v0, "http"

    .line 107
    :cond_3
    const-string/jumbo v2, "awcn.StrategyCenter"

    const-string/jumbo v3, "getSchemeByHost"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "scheme"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v0

    .line 108
    goto :goto_0
.end method

.method public getUnitByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    iget-object v0, v0, Lc8/WK;->hostUnitMap:Lanet/channel/strategy/HostUnitMap;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/HostUnitMap;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/YK;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_1
    :try_start_1
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize started."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Lc8/kL;->setContext(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lc8/hL;->initialize(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lc8/FK;->startListener(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/uL;->addListener(Lc8/sL;)V

    .line 48
    invoke-static {}, Lc8/WK;->newInstance()Lc8/WK;

    move-result-object v1

    iput-object v1, p0, Lc8/YK;->holder:Lc8/WK;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/YK;->isInitialized:Z

    .line 50
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize finished."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "StrategyCenter initialize failed."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategy"    # Lanet/channel/strategy/IConnStrategy;
    .param p3, "connEvent"    # Lc8/JK;

    .prologue
    .line 226
    invoke-direct {p0}, Lc8/YK;->checkHolderIsNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p2, :cond_0

    instance-of v1, p2, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 230
    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 231
    .local v0, "ips":Lanet/channel/strategy/IPConnStrategy;
    iget v1, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 232
    iget-object v1, p0, Lc8/YK;->holder:Lc8/WK;

    iget-object v1, v1, Lc8/WK;->localDnsStrategyTable:Lc8/PK;

    invoke-virtual {v1, p1, p2, p3}, Lc8/PK;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    goto :goto_0

    .line 233
    :cond_2
    iget v1, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v1}, Lc8/WK;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lanet/channel/strategy/StrategyTable;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    goto :goto_0
.end method

.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .locals 7
    .param p1, "event"    # Lanet/channel/strategy/dispatch/DispatchEvent;

    .prologue
    .line 249
    iget v3, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->eventType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lc8/YK;->holder:Lc8/WK;

    if-eqz v3, :cond_0

    .line 250
    const-string/jumbo v3, "awcn.StrategyCenter"

    const-string/jumbo v4, "receive DNS event"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v3, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->extraObject:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lc8/fL;->parse(Lorg/json/JSONObject;)Lc8/eL;

    move-result-object v2

    .line 252
    .local v2, "response":Lc8/eL;
    if-nez v2, :cond_1

    .line 261
    .end local v2    # "response":Lc8/eL;
    :cond_0
    return-void

    .line 255
    .restart local v2    # "response":Lc8/eL;
    :cond_1
    iget-object v3, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v3, v2}, Lc8/WK;->update(Lc8/eL;)V

    .line 256
    invoke-virtual {p0}, Lc8/YK;->saveData()V

    .line 257
    iget-object v3, p0, Lc8/YK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NK;

    .line 258
    .local v1, "listener":Lc8/NK;
    invoke-interface {v1, v2}, Lc8/NK;->onStrategyUpdated(Lc8/eL;)V

    goto :goto_0
.end method

.method public registerListener(Lc8/NK;)V
    .locals 1
    .param p1, "listener"    # Lc8/NK;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lc8/YK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public declared-synchronized saveData()V
    .locals 6

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "awcn.StrategyCenter"

    const-string/jumbo v3, "saveData"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "now":J
    iget-wide v2, p0, Lc8/YK;->lastPersistentTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 270
    iput-wide v0, p0, Lc8/YK;->lastPersistentTime:J

    .line 272
    new-instance v2, Lc8/XK;

    invoke-direct {v2, p0}, Lc8/XK;-><init>(Lc8/YK;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v4, v5}, Lc8/xL;->scheduleTask(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "unitPrefix"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public declared-synchronized switchEnv()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v0}, Lc8/WK;->clear()V

    .line 59
    invoke-static {}, Lc8/WK;->newInstance()Lc8/WK;

    move-result-object v0

    iput-object v0, p0, Lc8/YK;->holder:Lc8/WK;

    .line 61
    :cond_0
    invoke-static {}, Lc8/hL;->clearStrategyFolder()V

    .line 62
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uL;->switchENV()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lc8/NK;)V
    .locals 1
    .param p1, "listener"    # Lc8/NK;

    .prologue
    .line 197
    iget-object v0, p0, Lc8/YK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method
