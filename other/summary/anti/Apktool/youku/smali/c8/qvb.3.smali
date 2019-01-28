.class public Lc8/qvb;
.super Ljava/lang/Object;
.source "PreRenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pvb;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "WXPreRenderModule"

.field private static sInstance:Lc8/qvb;


# instance fields
.field private final mInternalCache:Lc8/lvb;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteConfig:Lc8/mvb;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWxInstanceCreator:Lc8/pvb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lc8/qvb;->sInstance:Lc8/qvb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lc8/lvb;

    invoke-direct {v0}, Lc8/lvb;-><init>()V

    iput-object v0, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    .line 36
    new-instance v0, Lc8/mvb;

    invoke-direct {v0}, Lc8/mvb;-><init>()V

    iput-object v0, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/qvb;Ljava/lang/String;Lc8/nVf;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/qvb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lc8/nVf;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/qvb;->saveEntryToCache(Ljava/lang/String;Lc8/nVf;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$100(Lc8/qvb;Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/qvb;
    .param p1, "x1"    # Lc8/EWf;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/qvb;->fireEvent(Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createEntry(Lc8/nVf;Ljava/util/Map;)Lc8/kvb;
    .locals 5
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/nVf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/kvb;"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lc8/kvb;

    invoke-direct {v1}, Lc8/kvb;-><init>()V

    .line 234
    .local v1, "newEntry":Lc8/kvb;
    iput-object p1, v1, Lc8/kvb;->data:Lc8/nVf;

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc8/kvb;->ignoreParams:Ljava/util/List;

    .line 236
    iget-object v2, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v2}, Lc8/mvb;->getTTL()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/kvb;->ttl:J

    .line 237
    const-string/jumbo v2, "1.0"

    iput-object v2, v1, Lc8/kvb;->version:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/kvb;->lastModified:J

    .line 239
    const/4 v2, 0x0

    iput-boolean v2, v1, Lc8/kvb;->used:Z

    .line 241
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "ignore_params"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc8/kvb;->ignoreParams:Ljava/util/List;

    goto :goto_0

    .line 246
    :cond_1
    const-string/jumbo v2, "version"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lc8/kvb;->version:Ljava/lang/String;

    goto :goto_0

    .line 251
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v1
.end method

.method private fireEvent(Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 256
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public static getInstance()Lc8/qvb;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lc8/qvb;->sInstance:Lc8/qvb;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lc8/qvb;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lc8/qvb;->sInstance:Lc8/qvb;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lc8/qvb;

    invoke-direct {v0}, Lc8/qvb;-><init>()V

    sput-object v0, Lc8/qvb;->sInstance:Lc8/qvb;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lc8/qvb;->sInstance:Lc8/qvb;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isCacheGranted()Z
    .locals 5

    .prologue
    .line 211
    iget-object v2, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    invoke-virtual {v2}, Lc8/lvb;->size()I

    move-result v1

    .line 212
    .local v1, "size":I
    iget-object v2, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v2}, Lc8/mvb;->getMaxCacheNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 213
    .local v0, "result":Z
    :goto_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string/jumbo v2, "WXPreRenderModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cacheGranted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [current size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",max size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v4}, Lc8/mvb;->getMaxCacheNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    return v0

    .line 212
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveEntryToCache(Ljava/lang/String;Lc8/nVf;Ljava/util/Map;Z)V
    .locals 4
    .param p1, "targetUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isResumeState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/nVf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    invoke-virtual {v2, p1}, Lc8/lvb;->remove(Ljava/lang/String;)Lc8/kvb;

    move-result-object v0

    .line 222
    .local v0, "evictEntry":Lc8/kvb;
    invoke-direct {p0, p2, p3}, Lc8/qvb;->createEntry(Lc8/nVf;Ljava/util/Map;)Lc8/kvb;

    move-result-object v1

    .line 223
    .local v1, "newEntry":Lc8/kvb;
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 225
    iget-wide v2, v0, Lc8/kvb;->lastModified:J

    iput-wide v2, v1, Lc8/kvb;->lastModified:J

    .line 227
    :cond_0
    iget-object v2, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    invoke-virtual {v2, p1, v1}, Lc8/lvb;->put(Ljava/lang/String;Lc8/kvb;)V

    .line 228
    return-void
.end method


# virtual methods
.method addTaskInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lc8/EWf;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isResumeState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 134
    iget-object v0, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v0}, Lc8/mvb;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string/jumbo v0, "WXPreRenderModule"

    const-string/jumbo v1, "addTask failed. switch is off"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-nez p5, :cond_3

    invoke-direct {p0}, Lc8/qvb;->isCacheGranted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    if-eqz p4, :cond_2

    .line 140
    const-string/jumbo v0, "failed"

    const-string/jumbo v1, "cache_num_exceed"

    invoke-direct {p0, p4, p2, v0, v1}, Lc8/qvb;->fireEvent(Lc8/EWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preRender failed because of exceed max cache num. [targetUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add task begin. url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v7, 0x0

    .line 150
    .local v7, "newInstance":Lc8/nVf;
    iget-object v0, p0, Lc8/qvb;->mWxInstanceCreator:Lc8/pvb;

    if-eqz v0, :cond_4

    .line 152
    :try_start_0
    iget-object v0, p0, Lc8/qvb;->mWxInstanceCreator:Lc8/pvb;

    invoke-interface {v0, p1}, Lc8/pvb;->create(Landroid/content/Context;)Lc8/nVf;

    move-result-object v7

    .line 153
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create instance use InstanceCreator. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_4
    :goto_1
    if-nez v7, :cond_5

    .line 162
    new-instance v7, Lc8/nVf;

    .end local v7    # "newInstance":Lc8/nVf;
    invoke-direct {v7, p1}, Lc8/nVf;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v7    # "newInstance":Lc8/nVf;
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/nVf;->setPreRenderMode(Z)V

    .line 165
    new-instance v0, Lc8/nvb;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/nvb;-><init>(Lc8/qvb;Ljava/lang/String;Ljava/util/Map;ZLc8/EWf;)V

    invoke-virtual {v7, v0}, Lc8/nVf;->setLayoutFinishListener(Lc8/SUf;)V

    .line 179
    new-instance v0, Lc8/ovb;

    invoke-direct {v0, p0, p4, p2}, Lc8/ovb;-><init>(Lc8/qvb;Lc8/EWf;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lc8/nVf;->registerRenderListener(Lc8/NUf;)V

    .line 207
    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p2

    move-object v3, v8

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "WXPreRenderModule"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v7, Lc8/nVf;

    .end local v7    # "newInstance":Lc8/nVf;
    invoke-direct {v7, p1}, Lc8/nVf;-><init>(Landroid/content/Context;)V

    .restart local v7    # "newInstance":Lc8/nVf;
    goto :goto_1
.end method

.method getInternalCache()Lc8/lvb;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    return-object v0
.end method

.method public renderFromCache(Landroid/content/Context;Lc8/nVf;Lc8/NUf;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedInstance"    # Lc8/nVf;
    .param p3, "listener"    # Lc8/NUf;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 97
    :cond_0
    const-string/jumbo v0, "WXPreRenderModule"

    const-string/jumbo v1, "illegal arguments"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lc8/nVf;->setRenderStartTime(J)V

    .line 101
    iget-object v0, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v0}, Lc8/mvb;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    const-string/jumbo v0, "WXPreRenderModule"

    const-string/jumbo v1, "renderFromCache failed. switch is off"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p2}, Lc8/nVf;->isPreRenderMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    const-string/jumbo v0, "WXPreRenderModule"

    const-string/jumbo v1, "illegal state"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p2, p1}, Lc8/nVf;->setContext(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lc8/nVf;->setPreRenderMode(Z)V

    .line 112
    if-eqz p3, :cond_5

    .line 113
    invoke-virtual {p2, p3}, Lc8/nVf;->registerRenderListener(Lc8/NUf;)V

    .line 117
    :cond_5
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v0

    invoke-virtual {p2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/EYf;->postRenderTask(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renderFromCache begin. instance id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInstanceCreator(Lc8/pvb;)V
    .locals 0
    .param p1, "creator"    # Lc8/pvb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    iput-object p1, p0, Lc8/qvb;->mWxInstanceCreator:Lc8/pvb;

    .line 59
    return-void
.end method

.method public takeCachedInstance(Ljava/lang/String;)Lc8/nVf;
    .locals 5
    .param p1, "targetUrl"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lc8/qvb;->mRemoteConfig:Lc8/mvb;

    invoke-virtual {v2}, Lc8/mvb;->isSwitchOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lc8/qvb;->mInternalCache:Lc8/lvb;

    invoke-virtual {v2, p1}, Lc8/lvb;->get(Ljava/lang/String;)Lc8/kvb;

    move-result-object v0

    .line 76
    .local v0, "entry":Lc8/kvb;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lc8/kvb;->data:Lc8/nVf;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lc8/kvb;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lc8/kvb;->used:Z

    if-nez v2, :cond_2

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/kvb;->used:Z

    .line 79
    iget-object v1, v0, Lc8/kvb;->data:Lc8/nVf;

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v2, "WXPreRenderModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeCachedInstance return null.[fresh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lc8/kvb;->isFresh()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",used:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lc8/kvb;->used:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
