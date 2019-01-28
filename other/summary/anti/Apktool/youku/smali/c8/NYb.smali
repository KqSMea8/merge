.class public Lc8/NYb;
.super Ljava/lang/Object;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SOTask"
.end annotation


# instance fields
.field public final config:Lc8/PYb;

.field public continuousSelect:Z

.field public final event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

.field public expectedViewSize:I

.field public groupId:Ljava/lang/String;

.field public invokeListener:Lc8/MYb;

.field public isCanceled:Z

.field public masterView:Landroid/view/View;

.field public final operationName:Ljava/lang/String;

.field public final params:Ljava/lang/String;

.field public final selectFromCache:Z

.field public selector:Ljava/lang/String;

.field protected targetViewsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public final taskHandle:Ljava/lang/String;

.field final synthetic this$0:Lc8/OYb;


# direct methods
.method public constructor <init>(Lc8/OYb;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;)V
    .locals 1
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "masterView"    # Landroid/view/View;
    .param p4, "selector"    # Ljava/lang/String;
    .param p5, "taskHandle"    # Ljava/lang/String;
    .param p6, "params"    # Ljava/lang/String;
    .param p7, "selectFromCache"    # Z
    .param p8, "continuousSelect"    # Z
    .param p9, "operationName"    # Ljava/lang/String;
    .param p10, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p11, "config"    # Lc8/PYb;
    .param p12, "listener"    # Lc8/MYb;

    .prologue
    .line 320
    iput-object p1, p0, Lc8/NYb;->this$0:Lc8/OYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x1

    iput v0, p0, Lc8/NYb;->expectedViewSize:I

    .line 321
    iput-object p2, p0, Lc8/NYb;->groupId:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lc8/NYb;->masterView:Landroid/view/View;

    .line 323
    iput-object p5, p0, Lc8/NYb;->taskHandle:Ljava/lang/String;

    .line 324
    iput-object p6, p0, Lc8/NYb;->params:Ljava/lang/String;

    .line 325
    iput-boolean p7, p0, Lc8/NYb;->selectFromCache:Z

    .line 326
    iput-boolean p8, p0, Lc8/NYb;->continuousSelect:Z

    .line 327
    iput-object p9, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    .line 328
    iput-object p10, p0, Lc8/NYb;->event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    .line 329
    iput-object p11, p0, Lc8/NYb;->config:Lc8/PYb;

    .line 330
    iput-object p12, p0, Lc8/NYb;->invokeListener:Lc8/MYb;

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    .line 332
    invoke-direct {p0, p4}, Lc8/NYb;->initOperations(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private executeSelection(Ljava/lang/String;)[Landroid/view/View;
    .locals 7
    .param p1, "operationEventType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 436
    invoke-static {}, Lc8/OYb;->access$400()Lc8/DYb;

    move-result-object v2

    iget-object v3, p0, Lc8/NYb;->selector:Ljava/lang/String;

    iget-boolean v4, p0, Lc8/NYb;->selectFromCache:Z

    invoke-virtual {v2, v3, v4}, Lc8/DYb;->selectViewsBySelector(Ljava/lang/String;Z)[Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "selectedViews":[Landroid/view/View;
    if-eqz v0, :cond_0

    iget v2, p0, Lc8/NYb;->expectedViewSize:I

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 440
    :cond_0
    iget-boolean v2, p0, Lc8/NYb;->continuousSelect:Z

    if-nez v2, :cond_1

    .line 441
    const-string/jumbo v2, "STask$Runner.selectAndOperate.selectedViews.withSelector{%s}.fail.abandonSchedule"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lc8/NYb;->selector:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    const-string/jumbo v2, "Select.NotFound"

    invoke-virtual {p0, p1, v5, v2}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 453
    :goto_0
    return-object v1

    .line 446
    :cond_1
    const-string/jumbo v2, "STask$Runner.selectAndOperate.selectedViews.withSelector{%s}.fail.scheduleLater"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lc8/NYb;->selector:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_2
    array-length v1, v0

    iget v2, p0, Lc8/NYb;->expectedViewSize:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lc8/NYb;->expectedViewSize:I

    if-eqz v1, :cond_3

    .line 451
    iget v1, p0, Lc8/NYb;->expectedViewSize:I

    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 453
    goto :goto_0
.end method

.method private initOperations(Ljava/lang/String;)V
    .locals 7
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const-string/jumbo v4, "\\?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "splitRes":[Ljava/lang/String;
    aget-object v4, v2, v5

    iput-object v4, p0, Lc8/NYb;->selector:Ljava/lang/String;

    .line 342
    array-length v4, v2

    if-gt v4, v6, :cond_1

    .line 343
    iput v6, p0, Lc8/NYb;->expectedViewSize:I

    .line 358
    .end local v2    # "splitRes":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 346
    .restart local v2    # "splitRes":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "split":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 348
    .local v0, "key":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v1, v4

    .line 349
    .local v3, "val":Ljava/lang/String;
    const-string/jumbo v4, "expectedViewSize"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lc8/NYb;->expectedViewSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "split":[Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v4

    iput v6, p0, Lc8/NYb;->expectedViewSize:I

    goto :goto_0
.end method


# virtual methods
.method public cacheSelectedViews(Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v3, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 470
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 473
    .local v2, "len":I
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 474
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 475
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_2
    iput-object v0, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 415
    iget-boolean v2, p0, Lc8/NYb;->isCanceled:Z

    if-eqz v2, :cond_0

    .line 432
    :goto_0
    return-void

    .line 418
    :cond_0
    iput-boolean v3, p0, Lc8/NYb;->isCanceled:Z

    .line 419
    invoke-virtual {p0}, Lc8/NYb;->getCacheSelectedViews()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 420
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lc8/NYb;->invokeListener:Lc8/MYb;

    invoke-interface {v2, v1, p0, v3}, Lc8/MYb;->OnTargetViewRemoved(Landroid/view/View;Lc8/NYb;Z)V

    goto :goto_1

    .line 430
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 431
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/NYb;->masterView:Landroid/view/View;

    goto :goto_0
.end method

.method public getCacheSelectedViews()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v4, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 483
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :cond_1
    return-object v3

    .line 484
    :cond_2
    iget-object v4, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 485
    .local v1, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 487
    iget-object v4, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 488
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 489
    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isCachedViewsKeepAlive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-virtual {p0}, Lc8/NYb;->getCacheSelectedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    .local v0, "cachedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lc8/NYb;->expectedViewSize:I

    if-ne v4, v5, :cond_1

    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 460
    .local v2, "v":Landroid/view/View;
    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->isInActivityContentView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 464
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 462
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isTaskNeedKeepRun(Z)Z
    .locals 4
    .param p1, "isExecutorSuccess"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    const-string/jumbo v2, "mirror"

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "track"

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lc8/NYb;->continuousSelect:Z

    if-eqz v2, :cond_2

    .line 374
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 364
    goto :goto_0

    .line 366
    :cond_3
    const-string/jumbo v2, "unmirror"

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "untrack"

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_5
    const-string/jumbo v2, "info"

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 372
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lc8/NYb;->continuousSelect:Z

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public run()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 382
    :try_start_0
    const-string/jumbo v1, "track"

    iget-object v2, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mirror"

    iget-object v2, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    :cond_0
    invoke-virtual {p0}, Lc8/NYb;->isCachedViewsKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v10

    .line 410
    :cond_1
    :goto_0
    return v0

    .line 390
    :cond_2
    const-string/jumbo v1, "PopLayer.SOTask.Track"

    invoke-direct {p0, v1}, Lc8/NYb;->executeSelection(Ljava/lang/String;)[Landroid/view/View;

    move-result-object v9

    .line 391
    .local v9, "touchViews":[Landroid/view/View;
    invoke-static {}, Lc8/OYb;->access$100()Lc8/CYb;

    move-result-object v1

    const-string/jumbo v2, "PopLayer.SOTask.Track"

    invoke-virtual {v1, v2, v9, p0}, Lc8/CYb;->operStatusUpdate(Ljava/lang/String;[Landroid/view/View;Lc8/NYb;)V

    .line 392
    iget-object v1, p0, Lc8/NYb;->targetViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget v2, p0, Lc8/NYb;->expectedViewSize:I

    if-ne v1, v2, :cond_1

    move v0, v10

    goto :goto_0

    .line 393
    .end local v9    # "touchViews":[Landroid/view/View;
    :cond_3
    const-string/jumbo v1, "untrack"

    iget-object v2, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "unmirror"

    iget-object v2, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    :cond_4
    const-string/jumbo v0, "untrack"

    iget-object v1, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v5, "track"

    .line 395
    .local v5, "doOperationName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lc8/NYb;->this$0:Lc8/OYb;

    invoke-static {}, Lc8/OYb;->access$200()Lc8/KYb;

    move-result-object v1

    iget-object v2, p0, Lc8/NYb;->masterView:Landroid/view/View;

    iget-object v3, p0, Lc8/NYb;->selector:Ljava/lang/String;

    iget-object v4, p0, Lc8/NYb;->taskHandle:Ljava/lang/String;

    iget-object v6, p0, Lc8/NYb;->config:Lc8/PYb;

    invoke-static/range {v0 .. v6}, Lc8/OYb;->access$300(Lc8/OYb;Lc8/KYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 396
    const-string/jumbo v0, "STask$Runner.removeTask success by operation:{%s}."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 397
    goto :goto_0

    .line 394
    .end local v5    # "doOperationName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "mirror"

    goto :goto_1

    .line 398
    :cond_6
    const-string/jumbo v1, "info"

    iget-object v2, p0, Lc8/NYb;->operationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 400
    const-string/jumbo v1, "PopLayer.SOTask.Info"

    invoke-direct {p0, v1}, Lc8/NYb;->executeSelection(Ljava/lang/String;)[Landroid/view/View;

    move-result-object v8

    .line 401
    .local v8, "selectedViews":[Landroid/view/View;
    if-eqz v8, :cond_1

    .line 404
    invoke-static {}, Lc8/OYb;->access$100()Lc8/CYb;

    move-result-object v0

    const-string/jumbo v1, "PopLayer.SOTask.Info"

    invoke-virtual {v0, v1, v8, p0}, Lc8/CYb;->operInfo(Ljava/lang/String;[Landroid/view/View;Lc8/NYb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 405
    goto/16 :goto_0

    .end local v8    # "selectedViews":[Landroid/view/View;
    :cond_7
    move v0, v10

    .line 407
    goto/16 :goto_0

    .line 408
    :catch_0
    move-exception v7

    .line 409
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "STask.Runner.error"

    invoke-static {v0, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v10

    .line 410
    goto/16 :goto_0
.end method

.method sendTaskExecutionEventToMasterView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v0, p0, Lc8/NYb;->masterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/NYb;->masterView:Landroid/view/View;

    instance-of v0, v0, Lc8/jXb;

    if-nez v0, :cond_1

    .line 504
    :cond_0
    const-string/jumbo v0, "STask$Runner.sendTaskExecutionEventToMasterView.error:masterView is empty or isn\'t PopLayerBaseView."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lc8/NYb;->masterView:Landroid/view/View;

    check-cast v0, Lc8/jXb;

    invoke-virtual {v0, p1, p2}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendTaskExecutionEventToMasterView(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "succeed"    # Z
    .param p3, "info"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    if-nez p3, :cond_0

    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    .end local p3    # "info":Ljava/lang/Object;
    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 497
    .restart local p3    # "info":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 498
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "taskHandle"

    iget-object v3, p0, Lc8/NYb;->taskHandle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "succeed"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 499
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "params":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lc8/NYb;->sendTaskExecutionEventToMasterView(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method
