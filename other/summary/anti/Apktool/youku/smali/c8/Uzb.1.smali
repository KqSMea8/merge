.class public Lc8/Uzb;
.super Ljava/lang/Object;
.source "ConfigTimeStampMgr.java"


# static fields
.field private static instance:Lc8/Uzb;

.field private static mKvMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;

.field private storeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lc8/Uzb;->instance:Lc8/Uzb;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/Uzb;->mKvMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v3, Lc8/Tzb;

    invoke-direct {v3, p0}, Lc8/Tzb;-><init>(Lc8/Uzb;)V

    iput-object v3, p0, Lc8/Uzb;->storeTask:Ljava/lang/Runnable;

    .line 42
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v3

    const-class v4, Lc8/Vzb;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v6, v6, v5}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "timestampList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;>;"
    if-eqz v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 47
    sget-object v4, Lc8/Uzb;->mKvMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Vzb;

    iget-object v5, v3, Lc8/Vzb;->namespace:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Vzb;

    iget-object v3, v3, Lc8/Vzb;->timestamp:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    .end local v2    # "timestampList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lc8/Uzb;->mKvMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lc8/Uzb;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lc8/Uzb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Uzb;->instance:Lc8/Uzb;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lc8/Uzb;

    invoke-direct {v0}, Lc8/Uzb;-><init>()V

    sput-object v0, Lc8/Uzb;->instance:Lc8/Uzb;

    .line 57
    :cond_0
    sget-object v0, Lc8/Uzb;->instance:Lc8/Uzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lc8/Uzb;->mKvMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v0, "0"

    .line 70
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lc8/Uzb;->mKvMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/Uzb;->future:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/Uzb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/Uzb;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    return-void
.end method
