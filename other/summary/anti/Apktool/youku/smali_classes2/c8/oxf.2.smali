.class public Lc8/oxf;
.super Ljava/lang/Object;
.source "PrefetchCreator.java"


# static fields
.field public static final MAX_PREFETCH_COUNT_ONCE:I = 0x64


# instance fields
.field private mCompleteListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/uxf;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefetchEvent:Lc8/uxf;

.field private mProgressListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/uxf;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrategy:Lc8/Nxf;

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Nxf;Ljava/util/List;)V
    .locals 7
    .param p1, "strategy"    # Lc8/Nxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nxf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x64

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v1, "module strategy for prefetch cannot be null"

    invoke-static {p1, v1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    const-string/jumbo v4, "Urls of prefetch cannot be empty"

    invoke-static {v1, v4}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    .line 31
    iput-object p2, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    .line 32
    new-instance v1, Lc8/uxf;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v4, v5}, Lc8/uxf;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    .line 33
    iget-object v1, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 34
    .local v0, "total":I
    if-le v0, v6, :cond_0

    .line 35
    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v1, v1, Lc8/uxf;->listOfFailed:Ljava/util/List;

    iget-object v4, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v4, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v1, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v1, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    .line 37
    const-string/jumbo v1, "Prefetch"

    const-string/jumbo v4, "fetch count exceed MAX_PREFETCH_COUNT_ONCE(%d), slice the part exceeding to list of failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v2, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lc8/uxf;->totalCount:I

    .line 40
    return-void

    .end local v0    # "total":I
    :cond_1
    move v1, v3

    .line 29
    goto :goto_0
.end method

.method private newRequest(Ljava/lang/String;)Lc8/Jxf;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lc8/Jxf;

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->getCacheKeyInspector()Lc8/Dvf;

    move-result-object v1

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->isGenericTypeCheckEnabled()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 54
    .local v0, "request":Lc8/Jxf;
    iget-object v1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-object v1, v1, Lc8/Nxf;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Jxf;->setModuleName(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Jxf;->setSchedulePriority(I)V

    .line 56
    iget-object v1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget v1, v1, Lc8/Nxf;->memoryCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Jxf;->setMemoryCachePriority(I)V

    .line 57
    iget-object v1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget v1, v1, Lc8/Nxf;->diskCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Jxf;->setDiskCachePriority(I)V

    .line 58
    iget-object v1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-boolean v1, v1, Lc8/Nxf;->preloadWithSmall:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lc8/Jxf;->allowSizeLevel(ZI)V

    .line 59
    iget-object v1, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-boolean v1, v1, Lc8/Nxf;->scaleFromLarge:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lc8/Jxf;->allowSizeLevel(ZI)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public completeListener(Lc8/qxf;)Lc8/oxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/uxf;",
            ">;)",
            "Lc8/oxf;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "completeListener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/PrefetchEvent;>;"
    iput-object p1, p0, Lc8/oxf;->mCompleteListener:Lc8/qxf;

    .line 44
    return-object p0
.end method

.method public fetch()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 64
    const-string/jumbo v4, "Prefetch"

    const-string/jumbo v5, "Start to prefetch with business=%s, total=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-object v7, v7, Lc8/Nxf;->name:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v8, v8, Lc8/uxf;->totalCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ixf;->getPrefetchProducerSupplier()Lc8/kwf;

    move-result-object v3

    .line 68
    .local v3, "supplier":Lc8/kwf;
    invoke-virtual {v3}, Lc8/kwf;->get()Lc8/uyf;

    move-result-object v2

    .local v2, "producer":Lc8/uyf;, "Lcom/taobao/rxm/produce/Producer<Lcom/taobao/phenix/entity/PrefetchImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    if-nez v2, :cond_1

    .line 69
    const-string/jumbo v4, "Prefetch"

    const-string/jumbo v5, "Cannot prefetch before Phenix.build() calling"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v4, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v4, v4, Lc8/uxf;->listOfFailed:Ljava/util/List;

    iget-object v5, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v4, p0, Lc8/oxf;->mCompleteListener:Lc8/qxf;

    iget-object v5, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    invoke-interface {v4, v5}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 84
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v4, p0, Lc8/oxf;->mUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lc8/lwf;

    .line 77
    invoke-direct {p0, v1}, Lc8/oxf;->newRequest(Ljava/lang/String;)Lc8/Jxf;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lc8/lwf;-><init>(Lc8/Jxf;Lc8/oxf;)V

    .line 81
    .local v0, "lastConsumer":Lc8/lwf;
    invoke-virtual {v3}, Lc8/kwf;->getSchedulerSupplierUsedInProducer()Lc8/Oyf;

    move-result-object v5

    invoke-interface {v5}, Lc8/Oyf;->forUiThread()Lc8/Nyf;

    move-result-object v5

    invoke-virtual {v0, v5}, Lc8/lwf;->consumeOn(Lc8/Nyf;)Lc8/oyf;

    move-result-object v5

    .line 80
    invoke-interface {v2, v5}, Lc8/uyf;->produceResults(Lc8/oyf;)V

    goto :goto_0
.end method

.method public onImageComplete(Lc8/Jxf;Lc8/dxf;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "image"    # Lc8/dxf;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    if-eqz p2, :cond_5

    .line 89
    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v0, v0, Lc8/uxf;->listOfSucceeded:Ljava/util/List;

    invoke-virtual {p1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v1, v0, Lc8/uxf;->completeSize:I

    int-to-long v4, v1

    iget-wide v6, p2, Lc8/dxf;->length:J

    add-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v0, Lc8/uxf;->completeSize:I

    .line 91
    iget-object v4, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v0, v4, Lc8/uxf;->downloadSize:I

    int-to-long v6, v0

    iget-boolean v0, p2, Lc8/dxf;->fromDisk:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, v4, Lc8/uxf;->downloadSize:I

    .line 92
    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v4, v1, Lc8/uxf;->downloadCount:I

    iget-boolean v0, p2, Lc8/dxf;->fromDisk:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    add-int/2addr v0, v4

    iput v0, v1, Lc8/uxf;->downloadCount:I

    .line 99
    :cond_0
    :goto_2
    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v1, v0, Lc8/uxf;->completeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lc8/uxf;->completeCount:I

    .line 100
    iget-object v0, p0, Lc8/oxf;->mProgressListener:Lc8/qxf;

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "Prefetch"

    const-string/jumbo v1, "Progress on happen with business=%s, event=%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-object v5, v5, Lc8/Nxf;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lc8/oxf;->mProgressListener:Lc8/qxf;

    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    invoke-interface {v0, v1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 104
    :cond_1
    iget-object v0, p0, Lc8/oxf;->mCompleteListener:Lc8/qxf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v0, v0, Lc8/uxf;->completeCount:I

    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget v1, v1, Lc8/uxf;->totalCount:I

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v0, v0, Lc8/uxf;->listOfFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    :goto_3
    iput-boolean v0, v1, Lc8/uxf;->allSucceeded:Z

    .line 106
    const-string/jumbo v0, "Prefetch"

    const-string/jumbo v1, "Complete on happen with business=%s, event=%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lc8/oxf;->mStrategy:Lc8/Nxf;

    iget-object v5, v5, Lc8/Nxf;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    aput-object v2, v4, v3

    invoke-static {v0, v1, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lc8/oxf;->mCompleteListener:Lc8/qxf;

    iget-object v1, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    invoke-interface {v0, v1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 109
    :cond_2
    return-void

    .line 91
    :cond_3
    iget-wide v0, p2, Lc8/dxf;->length:J

    goto :goto_0

    :cond_4
    move v0, v3

    .line 92
    goto :goto_1

    .line 94
    :cond_5
    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v0, v0, Lc8/uxf;->listOfFailed:Ljava/util/List;

    invoke-virtual {p1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    if-eqz p3, :cond_0

    .line 96
    iget-object v0, p0, Lc8/oxf;->mPrefetchEvent:Lc8/uxf;

    iget-object v0, v0, Lc8/uxf;->listOfThrowable:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v0, v2

    .line 105
    goto :goto_3
.end method

.method public progressListener(Lc8/qxf;)Lc8/oxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/uxf;",
            ">;)",
            "Lc8/oxf;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "progressListener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/PrefetchEvent;>;"
    iput-object p1, p0, Lc8/oxf;->mProgressListener:Lc8/qxf;

    .line 49
    return-object p0
.end method
