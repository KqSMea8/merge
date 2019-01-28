.class public Lc8/kwf;
.super Ljava/lang/Object;
.source "PrefetchChainProducerSupplier.java"

# interfaces
.implements Lc8/ONf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ONf",
        "<",
        "Lc8/uyf",
        "<",
        "Lc8/dxf;",
        "Lc8/Jxf;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mChainBuilders:Lc8/uvf;

.field private mHeadProducer:Lc8/uyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/uyf",
            "<",
            "Lc8/dxf;",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedulerSupplier:Lc8/Oyf;


# direct methods
.method public constructor <init>(Lc8/uvf;)V
    .locals 1
    .param p1, "chainBuilders"    # Lc8/uvf;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "ChainBuilders cannot be NULL when DrawableChainProducerSupplier constructed"

    invoke-static {p1, v0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lc8/kwf;->mChainBuilders:Lc8/uvf;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized buildChain()V
    .locals 4

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/kwf;->mHeadProducer:Lc8/uyf;

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lc8/kwf;->mChainBuilders:Lc8/uvf;

    invoke-interface {v1}, Lc8/uvf;->schedulerBuilder()Lc8/Avf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v1

    iput-object v1, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 32
    iget-object v1, p0, Lc8/kwf;->mChainBuilders:Lc8/uvf;

    invoke-interface {v1}, Lc8/uvf;->isGenericTypeCheckEnabled()Z

    move-result v0

    .line 33
    .local v0, "enableGenericTypeCheck":Z
    new-instance v1, Lc8/wyf;

    const-class v2, Lc8/dxf;

    invoke-direct {v1, v2}, Lc8/wyf;-><init>(Ljava/lang/Class;)V

    .line 34
    invoke-static {v1, v0}, Lc8/gyf;->newBuilderWithHead(Lc8/syf;Z)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Qvf;

    iget-object v3, p0, Lc8/kwf;->mChainBuilders:Lc8/uvf;

    .line 39
    invoke-interface {v3}, Lc8/uvf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Qvf;-><init>(Lc8/Mvf;)V

    iget-object v3, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 40
    invoke-interface {v3}, Lc8/Oyf;->forIoBound()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Qvf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    iget-object v3, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v3}, Lc8/Oyf;->forIoBound()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/syf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Gxf;

    iget-object v3, p0, Lc8/kwf;->mChainBuilders:Lc8/uvf;

    .line 43
    invoke-interface {v3}, Lc8/uvf;->httpLoaderBuilder()Lc8/xvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xvf;->build()Lc8/Exf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Gxf;-><init>(Lc8/Exf;)V

    iget-object v3, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 44
    invoke-interface {v3}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Gxf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    iget-object v3, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v3}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/syf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lc8/gyf;->build()Lc8/uyf;

    move-result-object v1

    iput-object v1, p0, Lc8/kwf;->mHeadProducer:Lc8/uyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0    # "enableGenericTypeCheck":Z
    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get()Lc8/uyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/uyf",
            "<",
            "Lc8/dxf;",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/kwf;->mHeadProducer:Lc8/uyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lc8/kwf;->get()Lc8/uyf;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulerSupplierUsedInProducer()Lc8/Oyf;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lc8/kwf;->mSchedulerSupplier:Lc8/Oyf;

    return-object v0
.end method
