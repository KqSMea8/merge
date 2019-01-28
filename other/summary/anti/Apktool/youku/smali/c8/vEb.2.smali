.class public Lc8/vEb;
.super Ljava/lang/Object;
.source "BalancedPool.java"

# interfaces
.implements Lc8/wEb;


# static fields
.field private static instance:Lc8/vEb;


# instance fields
.field private reuseItemPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc8/xEb;",
            ">;",
            "Lc8/yEb",
            "<+",
            "Lc8/xEb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lc8/vEb;

    invoke-direct {v0}, Lc8/vEb;-><init>()V

    sput-object v0, Lc8/vEb;->instance:Lc8/vEb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/vEb;->reuseItemPools:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static getInstance()Lc8/vEb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/vEb;->instance:Lc8/vEb;

    return-object v0
.end method

.method protected static getMaxMemAllocatedSize(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 79
    .local v4, "maxRunMemory":J
    const-wide/16 v6, 0x0

    .line 80
    .local v6, "memClassInt":J
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 81
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 83
    .local v1, "memClass":I
    const/high16 v8, 0x100000

    mul-int/2addr v8, v1

    int-to-long v6, v8

    .line 86
    .end local v1    # "memClass":I
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 87
    .local v2, "maxM":J
    const-wide/32 v8, 0x4000000

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 88
    const-wide/32 v8, 0x20000

    .line 90
    :goto_0
    return-wide v8

    :cond_1
    const-wide/32 v8, 0x40000

    goto :goto_0
.end method

.method private declared-synchronized getPool(Ljava/lang/Class;)Lc8/yEb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc8/xEb;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/yEb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/vEb;->reuseItemPools:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/yEb;

    .line 68
    .local v0, "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lc8/yEb;

    .end local v0    # "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    invoke-direct {v0}, Lc8/yEb;-><init>()V

    .line 70
    .restart local v0    # "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    iget-object v1, p0, Lc8/vEb;->reuseItemPools:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-object v0

    .line 67
    .end local v0    # "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public offer(Lc8/xEb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc8/xEb;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "item":Lc8/xEb;, "TT;"
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, v1}, Lc8/vEb;->getPool(Ljava/lang/Class;)Lc8/yEb;

    move-result-object v0

    .line 61
    .local v0, "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    invoke-virtual {v0, p1}, Lc8/yEb;->offer(Lc8/xEb;)V

    .line 63
    .end local v0    # "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    return-void
.end method

.method public varargs poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;
    .locals 5
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc8/xEb;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lc8/vEb;->getPool(Ljava/lang/Class;)Lc8/yEb;

    move-result-object v3

    .line 41
    .local v3, "pool":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    invoke-virtual {v3}, Lc8/yEb;->poll()Lc8/xEb;

    move-result-object v2

    .line 42
    .local v2, "item":Lc8/xEb;, "TT;"
    if-nez v2, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/xEb;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {v2, p2}, Lc8/xEb;->fill([Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-object v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v4, v1}, Lc8/MAb;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
