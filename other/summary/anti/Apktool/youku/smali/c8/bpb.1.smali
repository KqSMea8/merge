.class public Lc8/bpb;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/PN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/epb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugInterceptor"
.end annotation


# instance fields
.field private mStatistics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/bpb;->mStatistics:Ljava/util/Map;

    .line 338
    return-void
.end method

.method static synthetic access$100(Lc8/bpb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/bpb;

    .prologue
    .line 332
    iget-object v0, p0, Lc8/bpb;->mStatistics:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getRecord(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/bpb;->mStatistics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public intercept(Lc8/ON;)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "chain"    # Lc8/ON;

    .prologue
    .line 350
    invoke-interface {p1}, Lc8/ON;->request()Lc8/eK;

    move-result-object v1

    .line 351
    .local v1, "request":Lc8/eK;
    invoke-interface {p1}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    .line 352
    .local v0, "callback":Lc8/NN;
    const-string/jumbo v2, "weex"

    invoke-interface {p1}, Lc8/ON;->request()Lc8/eK;

    move-result-object v3

    invoke-virtual {v3}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "f-refer"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    new-instance v0, Lc8/apb;

    .end local v0    # "callback":Lc8/NN;
    invoke-direct {v0, p0, p1}, Lc8/apb;-><init>(Lc8/bpb;Lc8/ON;)V

    .line 397
    .restart local v0    # "callback":Lc8/NN;
    :cond_0
    invoke-interface {p1, v1, v0}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized record(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/bpb;->mStatistics:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
