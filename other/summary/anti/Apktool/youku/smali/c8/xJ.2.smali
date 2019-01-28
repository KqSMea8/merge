.class public Lc8/xJ;
.super Ljava/lang/Object;
.source "AVFSCacheImpl.java"

# interfaces
.implements Lc8/kN;


# static fields
.field private static isAvfsCacheExist:Z

.field private static nullAllObjectRemoveCallback:Ljava/lang/Object;

.field private static nullObjectSetCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lc8/xJ;->isAvfsCacheExist:Z

    .line 19
    sput-object v3, Lc8/xJ;->nullObjectSetCallback:Ljava/lang/Object;

    .line 20
    sput-object v3, Lc8/xJ;->nullAllObjectRemoveCallback:Ljava/lang/Object;

    .line 23
    :try_start_0
    const-string/jumbo v0, "com.taobao.alivfssdk.cache.AVFSCacheManager"

    invoke-static {v0}, Lc8/xJ;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    new-instance v0, Lc8/vJ;

    invoke-direct {v0}, Lc8/vJ;-><init>()V

    sput-object v0, Lc8/xJ;->nullObjectSetCallback:Ljava/lang/Object;

    .line 29
    new-instance v0, Lc8/wJ;

    invoke-direct {v0}, Lc8/wJ;-><init>()V

    sput-object v0, Lc8/xJ;->nullAllObjectRemoveCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    sput-boolean v2, Lc8/xJ;->isAvfsCacheExist:Z

    .line 36
    const-string/jumbo v0, "anet.AVFSCacheImpl"

    const-string/jumbo v1, "no alivfs sdk!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v1

    const-string/jumbo v2, "networksdk.httpcache"

    invoke-virtual {v1, v2}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    .line 107
    .local v0, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 91
    sget-boolean v2, Lc8/xJ;->isAvfsCacheExist:Z

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lc8/xJ;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 97
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 98
    sget-object v2, Lc8/xJ;->nullAllObjectRemoveCallback:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;

    invoke-interface {v0, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.AVFSCacheImpl"

    const-string/jumbo v3, "clear cache failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    sget-boolean v2, Lc8/xJ;->isAvfsCacheExist:Z

    if-nez v2, :cond_0

    move-object v2, v3

    .line 69
    :goto_0
    return-object v2

    .line 61
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lc8/xJ;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 62
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_1

    .line 63
    invoke-static {p1}, Lc8/cM;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {v0, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->objectForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanetwork/channel/cache/Cache$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.AVFSCacheImpl"

    const-string/jumbo v4, "get cache failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v3, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 69
    goto :goto_0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 41
    sget-boolean v2, Lc8/xJ;->isAvfsCacheExist:Z

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v2

    const-string/jumbo v3, "networksdk.httpcache"

    invoke-virtual {v2, v3}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v1

    .line 46
    .local v1, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>()V

    .line 48
    .local v0, "config":Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    const-wide/32 v2, 0x500000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 49
    const-wide/32 v2, 0x100000

    iput-wide v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 50
    invoke-virtual {v1, v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lanetwork/channel/cache/Cache$Entry;

    .prologue
    .line 74
    sget-boolean v2, Lc8/xJ;->isAvfsCacheExist:Z

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lc8/xJ;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 80
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Lc8/cM;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    sget-object v2, Lc8/xJ;->nullObjectSetCallback:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;

    invoke-interface {v0, p1, p2, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.AVFSCacheImpl"

    const-string/jumbo v3, "put cache failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
