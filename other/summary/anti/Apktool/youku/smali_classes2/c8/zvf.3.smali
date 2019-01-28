.class public Lc8/zvf;
.super Ljava/lang/Object;
.source "MemCacheBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/Fvf",
        "<",
        "Ljava/lang/String;",
        "Lc8/Svf;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_HOT_PERCENT:F = 0.2f

.field private static final MAX_MEM_CACHE_SIZE:I = 0x2300000


# instance fields
.field private mComponentCallbacks:Landroid/content/ComponentCallbacks2;

.field private mContext:Landroid/content/Context;

.field private mHaveBuilt:Z

.field private mHotPercent:Ljava/lang/Float;

.field private mMaxSize:Ljava/lang/Integer;

.field private mMemoryCache:Lc8/Fvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMaxAvailableSize(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 131
    .local v4, "maxRunMemory":J
    const-wide/16 v8, 0x0

    .line 132
    .local v8, "memClassInt":J
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 133
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    .line 135
    .local v6, "memClass":I
    const/high16 v7, 0x100000

    mul-int/2addr v7, v6

    int-to-long v8, v7

    .line 137
    .end local v6    # "memClass":I
    :cond_0
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 139
    .local v2, "maxM":J
    const-wide/32 v10, 0x2000000

    cmp-long v7, v2, v10

    if-gez v7, :cond_1

    .line 140
    const/high16 v1, 0x600000

    .line 146
    .local v1, "finalM":I
    :goto_0
    const/high16 v7, 0x2300000

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    return v7

    .line 141
    .end local v1    # "finalM":I
    :cond_1
    const-wide/32 v10, 0x4000000

    cmp-long v7, v2, v10

    if-gez v7, :cond_2

    .line 142
    const/high16 v1, 0xa00000

    .restart local v1    # "finalM":I
    goto :goto_0

    .line 144
    .end local v1    # "finalM":I
    :cond_2
    const-wide/16 v10, 0x5

    div-long v10, v2, v10

    long-to-int v1, v10

    .restart local v1    # "finalM":I
    goto :goto_0
.end method

.method private registerComponentCallbacks(Lc8/Fvf;)Lc8/Fvf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;)",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "memCache":Lc8/Fvf;, "Lcom/taobao/phenix/cache/LruCache<Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lc8/yvf;

    invoke-direct {v0, p0, p1}, Lc8/yvf;-><init>(Lc8/zvf;Lc8/Fvf;)V

    iput-object v0, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 111
    iget-object v0, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 113
    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized build()Lc8/Fvf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lc8/zvf;->mHaveBuilt:Z

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-object v4

    .line 58
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    .line 59
    iget-object v4, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "Phenix.with(Context) hasn\'t been called before MemCacheBuilder building"

    invoke-static {v4, v5}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/zvf;->mHaveBuilt:Z

    .line 61
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    if-eqz v4, :cond_5

    .line 62
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    invoke-interface {v4}, Lc8/Fvf;->maxSize()I

    move-result v1

    .line 63
    .local v1, "currMaxSize":I
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    invoke-interface {v4}, Lc8/Fvf;->hotPercent()F

    move-result v0

    .line 64
    .local v0, "currHotPercent":F
    move v3, v1

    .line 65
    .local v3, "newMaxSize":I
    move v2, v0

    .line 66
    .local v2, "newHotPercent":F
    iget-object v4, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 69
    :cond_1
    iget-object v4, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 70
    iget-object v4, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 72
    :cond_2
    if-ne v1, v3, :cond_3

    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 73
    :cond_3
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    invoke-interface {v4, v3, v2}, Lc8/Fvf;->resize(IF)V

    .line 75
    :cond_4
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    invoke-direct {p0, v4}, Lc8/zvf;->registerComponentCallbacks(Lc8/Fvf;)Lc8/Fvf;

    move-result-object v4

    goto :goto_0

    .line 78
    .end local v0    # "currHotPercent":F
    .end local v1    # "currMaxSize":I
    .end local v2    # "newHotPercent":F
    .end local v3    # "newMaxSize":I
    :cond_5
    iget-object v4, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    if-nez v4, :cond_6

    .line 79
    iget-object v4, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/zvf;->getMaxAvailableSize(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    .line 81
    :cond_6
    iget-object v4, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    if-nez v4, :cond_7

    .line 82
    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    .line 84
    :cond_7
    new-instance v4, Lc8/Uvf;

    iget-object v5, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lc8/Uvf;-><init>(IF)V

    iput-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    .line 85
    iget-object v4, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    invoke-direct {p0, v4}, Lc8/zvf;->registerComponentCallbacks(Lc8/Fvf;)Lc8/Fvf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto/16 :goto_0

    .line 55
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lc8/zvf;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    throw v0
.end method

.method getComponentCallbacks()Landroid/content/ComponentCallbacks2;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lc8/zvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    return-object v0
.end method

.method public hotPercent(Ljava/lang/Float;)Lc8/zvf;
    .locals 2
    .param p1, "hotPercent"    # Ljava/lang/Float;

    .prologue
    .line 43
    iget-boolean v0, p0, Lc8/zvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "MemCacheBuilder has been built, not allow hotPercent() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lc8/zvf;->mHotPercent:Ljava/lang/Float;

    .line 45
    return-object p0

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize(Ljava/lang/Integer;)Lc8/zvf;
    .locals 2
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lc8/zvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "MemCacheBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lc8/zvf;->mMaxSize:Ljava/lang/Integer;

    .line 39
    return-object p0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method memoryCache()Lc8/Fvf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    return-object v0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/Fvf;

    invoke-virtual {p0, p1}, Lc8/zvf;->with(Lc8/Fvf;)Lc8/zvf;

    move-result-object v0

    return-object v0
.end method

.method public with(Lc8/Fvf;)Lc8/zvf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;)",
            "Lc8/zvf;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "memoryCache":Lc8/Fvf;, "Lcom/taobao/phenix/cache/LruCache<Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;>;"
    iget-boolean v0, p0, Lc8/zvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "MemCacheBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lc8/zvf;->mMemoryCache:Lc8/Fvf;

    .line 33
    return-object p0

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
