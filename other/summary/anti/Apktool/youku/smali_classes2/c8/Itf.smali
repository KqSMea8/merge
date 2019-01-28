.class public Lc8/Itf;
.super Ljava/lang/Object;
.source "IndexCache.java"


# static fields
.field private static final INDEX_STORE_FILE_PRE:Ljava/lang/String; = "oindex"

.field private static final TAG:Ljava/lang/String; = "IndexCache"

.field public static indexUpdCacheMd5:Ljava/lang/String;

.field public static indexUpdCacheUrl:Ljava/lang/String;

.field public static protocol:Ljava/lang/String;


# instance fields
.field private mIndex:Lcom/taobao/orange/model/IndexDO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "https"

    sput-object v0, Lc8/Itf;->protocol:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Itf;->indexUpdCacheUrl:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Itf;->indexUpdCacheMd5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/taobao/orange/model/IndexDO;

    invoke-direct {v0}, Lcom/taobao/orange/model/IndexDO;-><init>()V

    iput-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 27
    return-void
.end method

.method public static getIndexFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "oindex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized cacheIndex(Lcom/taobao/orange/model/IndexDO;)V
    .locals 5
    .param p1, "indexDO"    # Lcom/taobao/orange/model/IndexDO;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "IndexCache"

    const-string/jumbo v1, "cacheIndex indexDO"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 86
    invoke-virtual {p0}, Lc8/Itf;->updateOrangeHeader()V

    .line 87
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    const-string/jumbo v1, "/orange_config"

    invoke-static {}, Lc8/Itf;->getIndexFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Ztf;->persistentObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearIndexCache()V
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "IndexCache"

    const-string/jumbo v1, "clearIndexCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Itf;->indexUpdCacheMd5:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Itf;->indexUpdCacheUrl:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/taobao/orange/model/IndexDO;

    invoke-direct {v0}, Lcom/taobao/orange/model/IndexDO;-><init>()V

    iput-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 96
    invoke-virtual {p0}, Lc8/Itf;->updateOrangeHeader()V

    .line 97
    const-string/jumbo v0, "/orange_config"

    invoke-static {v0}, Lc8/Ztf;->clearCacheFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppIndexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCdnUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x0

    .line 106
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    invoke-virtual {v2}, Lcom/taobao/orange/model/IndexDO;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v2, "http"

    sget-object v3, Lc8/Itf;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "http"

    .line 108
    .local v1, "schema":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v3, v3, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    .end local v1    # "schema":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    :try_start_1
    const-string/jumbo v1, "https"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getHighLevelNameSpaces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/NameSpaceDO;

    .line 34
    .local v0, "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    const-string/jumbo v3, "HIGH"

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->loadLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v0    # "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return-object v1
.end method

.method public declared-synchronized getIndex()Lcom/taobao/orange/model/IndexDO;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 56
    :goto_0
    return-object v0

    .line 47
    :cond_0
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    iget-object v2, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/NameSpaceDO;

    .line 50
    .local v0, "namespaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    monitor-exit p0

    goto :goto_0

    .line 55
    .end local v0    # "namespaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 56
    goto :goto_0
.end method

.method public declared-synchronized getVersionIndexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadLocalIndex()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 60
    const-string/jumbo v4, "IndexCache"

    const-string/jumbo v5, "loadLocalIndex start"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "indexDO":Lcom/taobao/orange/model/IndexDO;
    const-string/jumbo v4, "/orange_config"

    invoke-static {}, Lc8/Itf;->getIndexFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Ztf;->restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/taobao/orange/model/IndexDO;

    move-object v1, v0

    .line 66
    const-string/jumbo v4, "IndexCache"

    const-string/jumbo v5, "loadLocalIndex"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "indexDO"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/orange/model/IndexDO;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iput-object v1, p0, Lc8/Itf;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 75
    invoke-virtual {p0}, Lc8/Itf;->updateOrangeHeader()V

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "IndexCache"

    const-string/jumbo v5, "loadLocalIndex"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 78
    :cond_1
    const-string/jumbo v4, "IndexCache"

    const-string/jumbo v5, "loadLocalIndex invalid"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Jsf;->clearCache()V

    goto :goto_1
.end method

.method public updateOrangeHeader()V
    .locals 6

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "appVersion="

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clientAppIndexVersion="

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lc8/Itf;->getAppIndexVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clientVersionIndexVersion="

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lc8/Itf;->getVersionIndexVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Ksf;->mOrangeHeader:Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "IndexCache"

    const-string/jumbo v2, "updateOrangeHeader"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "mOrangeHeader"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lc8/Ksf;->mOrangeHeader:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method
