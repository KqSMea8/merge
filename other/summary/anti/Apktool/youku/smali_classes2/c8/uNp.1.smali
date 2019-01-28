.class public Lc8/uNp;
.super Ljava/lang/Object;
.source "CacheConfigManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheConfigManager"

.field private static volatile instance:Lc8/uNp;


# instance fields
.field private apiCacheBlockConfigGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;",
            ">;"
        }
    .end annotation
.end field

.field private apiCacheGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheDo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lc8/uNp;->instance:Lc8/uNp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/uNp;->apiCacheGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/uNp;->apiCacheBlockConfigGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    return-void
.end method

.method public static getInstance()Lc8/uNp;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lc8/uNp;->instance:Lc8/uNp;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lc8/uNp;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lc8/uNp;->instance:Lc8/uNp;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/uNp;

    invoke-direct {v0}, Lc8/uNp;-><init>()V

    sput-object v0, Lc8/uNp;->instance:Lc8/uNp;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lc8/uNp;->instance:Lc8/uNp;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addApiCacheBlockConfigToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V
    .locals 1
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "apiCacheBlockConfig"    # Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    .prologue
    .line 88
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lc8/uNp;->apiCacheBlockConfigGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addApiCacheDoToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "apiCacheDo"    # Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    .prologue
    .line 99
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lc8/uNp;->apiCacheGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getApiCacheBlockConfigByBlockName(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;
    .locals 1
    .param p1, "blockName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/uNp;->apiCacheBlockConfigGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    goto :goto_0
.end method

.method public getApiCacheDoByApiInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .locals 1
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lc8/yMp;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/uNp;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    goto :goto_0
.end method

.method public getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/uNp;->apiCacheGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    goto :goto_0
.end method

.method public setCacheBlockConfig(Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;)V
    .locals 8
    .param p1, "apiCacheBlock"    # Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-object v1, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockName:Ljava/lang/String;

    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v1, "INNER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v7, v1, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 114
    .local v7, "cache":Lc8/jO;
    instance-of v1, v7, Lc8/kO;

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Lanetwork/network/cache/CacheBlockConfig;

    iget-object v1, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockName:Ljava/lang/String;

    iget-wide v2, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockSize:J

    iget-boolean v4, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isCompress:Z

    iget-boolean v5, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isEncrypt:Z

    iget-boolean v6, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isRemovable:Z

    invoke-direct/range {v0 .. v6}, Lanetwork/network/cache/CacheBlockConfig;-><init>(Ljava/lang/String;JZZZ)V

    .line 116
    .local v0, "blockConfig":Lanetwork/network/cache/CacheBlockConfig;
    check-cast v7, Lc8/kO;

    .end local v7    # "cache":Lc8/jO;
    invoke-interface {v7, v0}, Lc8/kO;->setCacheBlockConfig(Lanetwork/network/cache/CacheBlockConfig;)Z

    goto :goto_0
.end method
