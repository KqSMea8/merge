.class public Lc8/vB;
.super Ljava/lang/Object;
.source "WVMemoryCache.java"


# static fields
.field public static final DEFAULT_CACHE_TIME:J = 0x7d0L

.field private static mMemoryCache:Lc8/vB;


# instance fields
.field private mCachedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/wB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lc8/vB;->mMemoryCache:Lc8/vB;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/vB;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lc8/vB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/vB;->mMemoryCache:Lc8/vB;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lc8/vB;

    invoke-direct {v0}, Lc8/vB;-><init>()V

    sput-object v0, Lc8/vB;->mMemoryCache:Lc8/vB;

    .line 22
    :cond_0
    sget-object v0, Lc8/vB;->mMemoryCache:Lc8/vB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addMemoryCache(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "datas"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    invoke-static {p1}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lc8/dI;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    new-instance v1, Lc8/wB;

    invoke-direct {v1, p2, p3}, Lc8/wB;-><init>(Ljava/util/Map;[B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    return-void
.end method

.method public clearAllCaches()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public clearCacheByUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMemoryCacheByUrl(Ljava/lang/String;)Lc8/wB;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    if-eqz p1, :cond_0

    .line 41
    invoke-static {p1}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lc8/dI;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lc8/vB;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wB;

    goto :goto_0
.end method
