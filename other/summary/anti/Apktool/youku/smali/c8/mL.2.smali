.class public Lc8/mL;
.super Ljava/lang/Object;
.source "AmdcTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lL;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.AmdcThreadPoolExecutor"

.field private static cnt:I


# instance fields
.field private cachedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    sput v0, Lc8/mL;->cnt:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lc8/mL;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/mL;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lc8/mL;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lc8/mL;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 11
    iput-object p1, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public addTask(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "Env"

    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v3, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 22
    iput-object p1, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    .line 24
    sget v3, Lc8/mL;->cnt:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lc8/mL;->cnt:I

    if-lez v3, :cond_0

    const/16 v2, 0x1f4

    .line 25
    .local v2, "delayTime":I
    :goto_0
    const-string/jumbo v3, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v4, "merge amdc request"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "delay"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance v3, Lc8/lL;

    invoke-direct {v3, p0}, Lc8/lL;-><init>(Lc8/mL;)V

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lc8/xL;->scheduleTask(Ljava/lang/Runnable;J)V

    .line 41
    .end local v2    # "delayTime":I
    :goto_1
    monitor-exit p0

    return-void

    .line 24
    :cond_0
    const/16 v2, 0xbb8

    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    const-string/jumbo v4, "hosts"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 29
    .local v0, "cachedHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v3, "hosts"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 31
    .local v1, "currentHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v3, "Env"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    const-string/jumbo v5, "Env"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 33
    iput-object p1, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    goto :goto_1

    .line 41
    .end local v0    # "cachedHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "currentHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 34
    .restart local v0    # "cachedHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "currentHostSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x28

    if-gt v3, v4, :cond_3

    .line 35
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    iput-object p1, p0, Lc8/mL;->cachedParams:Ljava/util/Map;

    goto :goto_1

    .line 38
    :cond_3
    new-instance v3, Lc8/lL;

    invoke-direct {v3, p0, p1}, Lc8/lL;-><init>(Lc8/mL;Ljava/util/Map;)V

    invoke-static {v3}, Lc8/xL;->submitTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
