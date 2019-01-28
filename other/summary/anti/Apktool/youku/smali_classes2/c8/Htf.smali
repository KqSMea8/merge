.class public Lc8/Htf;
.super Ljava/lang/Object;
.source "ConfigCache.java"


# static fields
.field private static final CONFIG_STORE_FILE_PRE:Ljava/lang/String; = "oconfig"

.field private static final TAG:Ljava/lang/String; = "ConfigCache"


# instance fields
.field private mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/orange/model/ConfigDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    .line 23
    return-void
.end method

.method private clearLocalConfigCache()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 78
    :try_start_0
    const-string/jumbo v1, "ConfigCache"

    const-string/jumbo v2, "clearLocalConfigCache"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-string/jumbo v1, "/orange_config_content"

    invoke-static {v1}, Lc8/Ztf;->clearCacheFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConfigCache"

    const-string/jumbo v2, "clearLocalConfigCache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    const-string/jumbo v1, "private_orange"

    const-string/jumbo v2, "ORANGE_EXCEPTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearLocalConfigCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public static getConfigPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "oconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cacheConfig(Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "configDO"    # Lcom/taobao/orange/model/ConfigDO;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "/orange_config_content"

    invoke-static {p2, v0, p1}, Lc8/Ztf;->persistentObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public clearConfigCache()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    const-string/jumbo v1, "ConfigCache"

    const-string/jumbo v2, "clearConfigCache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :try_start_0
    iget-object v1, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 69
    invoke-direct {p0}, Lc8/Htf;->clearLocalConfigCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConfigCache"

    const-string/jumbo v2, "clearConfigCache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    const-string/jumbo v1, "private_orange"

    const-string/jumbo v2, "ORANGE_EXCEPTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearConfigCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lc8/Htf;->getConfigDO(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v0

    .line 88
    .local v0, "config":Lcom/taobao/orange/model/ConfigDO;
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, v0, Lcom/taobao/orange/model/ConfigDO;->content:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 92
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lc8/Htf;->getConfigDO(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v0

    .line 98
    .local v0, "config":Lcom/taobao/orange/model/ConfigDO;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v1, v0, Lcom/taobao/orange/model/ConfigDO;->content:Ljava/util/Map;

    .line 101
    :cond_0
    return-object v1
.end method

.method public getConfigDO(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Htf;->getConfigPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/ConfigDO;

    return-object v0
.end method

.method public getConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/orange/model/ConfigDO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public loadLocalConfig(Lcom/taobao/orange/model/IndexDO;)V
    .locals 12
    .param p1, "index"    # Lcom/taobao/orange/model/IndexDO;

    .prologue
    const/4 v11, 0x0

    .line 31
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    :cond_0
    const-string/jumbo v5, "ConfigCache"

    const-string/jumbo v6, "no local index cache, so not load config cache"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string/jumbo v5, "ConfigCache"

    const-string/jumbo v6, "loadLocalConfig start"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lc8/Htf;->getConfigPrefix()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "pre":Ljava/lang/String;
    iget-object v5, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/model/NameSpaceDO;

    .line 39
    .local v3, "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    if-eqz v3, :cond_2

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "/orange_config_content"

    invoke-static {v6, v2}, Lc8/Ztf;->restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/ConfigDO;

    .line 42
    .local v0, "configDO":Lcom/taobao/orange/model/ConfigDO;
    if-eqz v0, :cond_2

    .line 43
    const-string/jumbo v6, "ConfigCache"

    const-string/jumbo v7, "loadLocalConfig"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "configDO"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 45
    iget-object v6, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v6

    iget-object v7, v0, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lc8/Jsf;->notifyListeners(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 54
    .end local v0    # "configDO":Lcom/taobao/orange/model/ConfigDO;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    .end local v4    # "pre":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ConfigCache"

    const-string/jumbo v6, "loadLocalConfig"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v1, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    const-string/jumbo v5, "private_orange"

    const-string/jumbo v6, "ORANGE_EXCEPTION"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadLocalConfig"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDO":Lcom/taobao/orange/model/ConfigDO;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    .restart local v4    # "pre":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v6, "ConfigCache"

    const-string/jumbo v7, "loadLocalConfig config invalid"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "configDO.name"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 53
    .end local v0    # "configDO":Lcom/taobao/orange/model/ConfigDO;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "namespace":Lcom/taobao/orange/model/NameSpaceDO;
    :cond_4
    const-string/jumbo v5, "ConfigCache"

    const-string/jumbo v6, "loadLocalConfig"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "mConfigMap.size"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "mConfigMap.keySet"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lc8/Htf;->mConfigMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
