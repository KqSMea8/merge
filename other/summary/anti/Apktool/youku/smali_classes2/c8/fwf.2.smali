.class public Lc8/fwf;
.super Ljava/lang/Object;
.source "NormalChainProducerSupplier.java"

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
        "Lc8/Yvf;",
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
            "Lc8/Yvf;",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation
.end field

.field private mPreBuildProducer:Lc8/uyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/uyf",
            "<",
            "Lc8/Yvf;",
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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "ChainBuilders cannot be NULL when DrawableChainProducerSupplier constructed"

    invoke-static {p1, v0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized buildChain()V
    .locals 4

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/fwf;->mHeadProducer:Lc8/uyf;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    invoke-interface {v1}, Lc8/uvf;->schedulerBuilder()Lc8/Avf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v1

    iput-object v1, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 44
    iget-object v1, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    invoke-interface {v1}, Lc8/uvf;->isGenericTypeCheckEnabled()Z

    move-result v0

    .line 45
    .local v0, "enableGenericTypeCheck":Z
    new-instance v1, Lc8/Wvf;

    iget-object v2, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 48
    invoke-interface {v2}, Lc8/uvf;->memCacheBuilder()Lc8/zvf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Wvf;-><init>(Lc8/Fvf;)V

    .line 46
    invoke-static {v1, v0}, Lc8/gyf;->newBuilderWithHead(Lc8/syf;Z)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/wyf;

    const-class v3, Lc8/axf;

    invoke-direct {v2, v3}, Lc8/wyf;-><init>(Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Nvf;

    iget-object v3, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 55
    invoke-interface {v3}, Lc8/uvf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Nvf;-><init>(Lc8/Mvf;)V

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 56
    invoke-interface {v3}, Lc8/Oyf;->forIoBound()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Nvf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/mvf;

    invoke-direct {v2}, Lc8/mvf;-><init>()V

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 58
    invoke-interface {v3}, Lc8/Oyf;->forCpuBound()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/mvf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Ywf;

    invoke-direct {v2}, Lc8/Ywf;-><init>()V

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 60
    invoke-interface {v3}, Lc8/Oyf;->forDecode()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Ywf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Bxf;

    iget-object v3, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 63
    invoke-interface {v3}, Lc8/uvf;->fileLoaderBuilder()Lc8/wvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/wvf;->build()Lc8/Axf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Bxf;-><init>(Lc8/Axf;)V

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 64
    invoke-interface {v3}, Lc8/Oyf;->forIoBound()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Bxf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Lvf;

    iget-object v3, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 67
    invoke-interface {v3}, Lc8/uvf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Lvf;-><init>(Lc8/Mvf;)V

    .line 65
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    new-instance v2, Lc8/Gxf;

    iget-object v3, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 71
    invoke-interface {v3}, Lc8/uvf;->httpLoaderBuilder()Lc8/xvf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xvf;->build()Lc8/Exf;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Gxf;-><init>(Lc8/Exf;)V

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 72
    invoke-interface {v3}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Gxf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    iget-object v3, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v3}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/syf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lc8/gyf;->build()Lc8/uyf;

    move-result-object v1

    iput-object v1, p0, Lc8/fwf;->mHeadProducer:Lc8/uyf;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/fwf;->mPreBuildProducer:Lc8/uyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v0    # "enableGenericTypeCheck":Z
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get()Lc8/uyf;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/uyf",
            "<",
            "Lc8/Yvf;",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fwf;->mHeadProducer:Lc8/uyf;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/fwf;->mHeadProducer:Lc8/uyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-object v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/fwf;->mPreBuildProducer:Lc8/uyf;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lc8/dwf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/16 v6, 0x5dc

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    invoke-direct/range {v0 .. v9}, Lc8/dwf;-><init>(Lc8/Nyf;IIIIIIII)V

    iput-object v0, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 99
    new-instance v0, Lc8/Wvf;

    new-instance v1, Lc8/Xvf;

    invoke-direct {v1}, Lc8/Xvf;-><init>()V

    invoke-direct {v0, v1}, Lc8/Wvf;-><init>(Lc8/Fvf;)V

    iget-object v1, p0, Lc8/fwf;->mChainBuilders:Lc8/uvf;

    .line 104
    invoke-interface {v1}, Lc8/uvf;->isGenericTypeCheckEnabled()Z

    move-result v1

    .line 100
    invoke-static {v0, v1}, Lc8/gyf;->newBuilderWithHead(Lc8/syf;Z)Lc8/gyf;

    move-result-object v0

    new-instance v1, Lc8/wyf;

    const-class v2, Lc8/axf;

    invoke-direct {v1, v2}, Lc8/wyf;-><init>(Ljava/lang/Class;)V

    .line 105
    invoke-virtual {v0, v1}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v0

    new-instance v1, Lc8/Ywf;

    invoke-direct {v1}, Lc8/Ywf;-><init>()V

    iget-object v2, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 108
    invoke-interface {v2}, Lc8/Oyf;->forDecode()Lc8/Nyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Ywf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v0

    new-instance v1, Lc8/Bxf;

    new-instance v2, Lc8/zxf;

    invoke-direct {v2}, Lc8/zxf;-><init>()V

    invoke-direct {v1, v2}, Lc8/Bxf;-><init>(Lc8/Axf;)V

    iget-object v2, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 112
    invoke-interface {v2}, Lc8/Oyf;->forIoBound()Lc8/Nyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Bxf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v0

    new-instance v1, Lc8/Gxf;

    new-instance v2, Lc8/Cxf;

    invoke-direct {v2}, Lc8/Cxf;-><init>()V

    invoke-direct {v1, v2}, Lc8/Gxf;-><init>(Lc8/Exf;)V

    iget-object v2, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 116
    invoke-interface {v2}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Gxf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v1

    iget-object v2, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v2}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/syf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lc8/gyf;->next(Lc8/syf;)Lc8/gyf;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lc8/gyf;->build()Lc8/uyf;

    move-result-object v0

    iput-object v0, p0, Lc8/fwf;->mPreBuildProducer:Lc8/uyf;

    .line 119
    :cond_1
    const-string/jumbo v0, "NormalChain"

    const-string/jumbo v1, "use temporary chain producer before Phenix.instance().build() calling"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lc8/fwf;->mPreBuildProducer:Lc8/uyf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lc8/fwf;->get()Lc8/uyf;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulerSupplierUsedInProducer()Lc8/Oyf;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/fwf;->mSchedulerSupplier:Lc8/Oyf;

    return-object v0
.end method
