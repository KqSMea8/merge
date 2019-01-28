.class public abstract Lc8/nbo;
.super Lc8/pbo;
.source "ARecycleViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lc8/oao;
.implements Lc8/reo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/pbo;",
        "Landroid/view/View$OnClickListener;",
        "Lc8/oao",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Lc8/reo;"
    }
.end annotation


# instance fields
.field protected mIsLoadData:Z

.field protected mRecyclerViewAdapter:Lc8/weo;

.field onScrollListener:Lc8/Cv;

.field protected presenter:Lc8/nao;

.field protected uiHandler:Landroid/os/Handler;

.field protected xRecyclerView:Lc8/veo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-direct {p0}, Lc8/pbo;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    .line 281
    new-instance v0, Lc8/lbo;

    invoke-direct {v0, p0}, Lc8/lbo;-><init>(Lc8/nbo;)V

    iput-object v0, p0, Lc8/nbo;->onScrollListener:Lc8/Cv;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lc8/nbo;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lc8/nbo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lc8/nbo;->fillData(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method private fillData(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 432
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    if-nez v0, :cond_2

    .line 433
    invoke-virtual {p0, p1}, Lc8/nbo;->getRecycleViewAdapter(Ljava/util/List;)Lc8/weo;

    move-result-object v0

    iput-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    .line 434
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    iget-object v1, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0, v1}, Lc8/veo;->setAdapter(Lc8/iv;)V

    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lc8/nbo;->fillDateCheckHasNext(Ljava/util/List;)V

    .line 475
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/nbo;->toggleLoadingLayout(Z)V

    .line 478
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0}, Lc8/veo;->onLoadComplete()V

    .line 481
    :cond_1
    return-void

    .line 436
    :cond_2
    invoke-virtual {p0}, Lc8/nbo;->isLoadingMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->notifyDataSetInserted(Ljava/util/List;)V

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/nbo;->isNeedRefresh(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->setDatas(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->notifyDataSetChanged()V

    .line 443
    invoke-virtual {p0}, Lc8/nbo;->hideNothingUI()V

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {p0}, Lc8/nbo;->isLoadingFirstPage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 451
    invoke-virtual {p0}, Lc8/nbo;->needShowEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lc8/weo;->setDatas(Ljava/util/List;)V

    .line 453
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->notifyDataSetChanged()V

    .line 454
    invoke-direct {p0, p2}, Lc8/nbo;->showEmptyTips(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p0}, Lc8/nbo;->doSomething()V

    goto :goto_1

    .line 459
    :cond_6
    invoke-direct {p0, p2}, Lc8/nbo;->showEmptyTips(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 463
    :cond_7
    invoke-virtual {p0}, Lc8/nbo;->isEmptyPage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 464
    invoke-direct {p0, p2}, Lc8/nbo;->showEmptyTips(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 466
    :cond_8
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_a

    .line 467
    :cond_9
    invoke-virtual {p0}, Lc8/nbo;->showLoadMoreFailedTips()V

    goto/16 :goto_1

    .line 470
    :cond_a
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/veo;->setNoMore(Z)V

    goto/16 :goto_1
.end method

.method private showEmptyTips(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 502
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lc8/nbo;->showNoConnectUI()V

    .line 509
    :goto_0
    return-void

    .line 504
    :cond_0
    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p0, p1}, Lc8/nbo;->showConnectErrorUI(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p0}, Lc8/nbo;->showNothingUI()V

    goto :goto_0
.end method


# virtual methods
.method protected doSomething()V
    .locals 0

    .prologue
    .line 494
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    return-void
.end method

.method protected fillDateCheckHasNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-interface {v0}, Lc8/nao;->getPageInfo()Lc8/iao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-interface {v0}, Lc8/nao;->getPageInfo()Lc8/iao;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iao;->isHasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/veo;->setNoMore(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method public getArrowRefreshHeader()Lc8/keo;
    .locals 2

    .prologue
    .line 211
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    new-instance v0, Lc8/jeo;

    invoke-virtual {p0}, Lc8/nbo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/jeo;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "arrowRefreshHeader":Lc8/jeo;
    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 240
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutManager()Lc8/xv;
    .locals 4

    .prologue
    .line 106
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    new-instance v0, Lc8/oeo;

    invoke-virtual {p0}, Lc8/nbo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lc8/oeo;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public getLoadFooterView()Lc8/bap;
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    new-instance v0, Lc8/bap;

    invoke-virtual {p0}, Lc8/nbo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, "aLoadingMoreFooter":Lc8/bap;
    invoke-virtual {v0}, Lc8/bap;->setProgressStyle()V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/bap;->setNoMoreHintStay(Z)V

    .line 224
    return-object v0
.end method

.method getPageLoadFailLayout()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 548
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->rootView:Landroid/view/View;

    sget v1, Lcom/youku/phone/R$id;->page_load_fail_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method getPageLoadingLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 558
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lc8/nbo;->rootView:Landroid/view/View;

    sget v1, Lcom/youku/phone/R$id;->page_loading_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getPresenter()Lc8/nao;
.end method

.method public abstract getQueryParams()[Ljava/lang/Object;
.end method

.method public getRecycleViewAdapter()Lc8/weo;
    .locals 1

    .prologue
    .line 574
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    return-object v0
.end method

.method public abstract getRecycleViewAdapter(Ljava/util/List;)Lc8/weo;
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)",
            "Lc8/weo;"
        }
    .end annotation
.end method

.method protected getRootLayoutId()I
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_fragment_standard_recrycle_layout:I

    return v0
.end method

.method public getVisibleItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 253
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v1, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v1}, Lc8/veo;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 254
    .local v0, "layoutManager":Lc8/xv;
    if-eqz v0, :cond_0

    .line 256
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 258
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmptyPage()Z
    .locals 1

    .prologue
    .line 570
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->isEmptyAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingFirstPage()Z
    .locals 1

    .prologue
    .line 390
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0}, Lc8/veo;->isLoadingRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-interface {v0}, Lc8/nao;->getPageInfo()Lc8/iao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    .line 392
    invoke-interface {v0}, Lc8/nao;->getPageInfo()Lc8/iao;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iao;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoadingMore()Z
    .locals 1

    .prologue
    .line 401
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0}, Lc8/veo;->isLoadingMore()Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNeedRefresh(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    .local p1, "remoteList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "localList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p1, p2}, Lc8/abo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v1, 0x1

    .line 333
    invoke-virtual {p0}, Lc8/nbo;->getPageLoadingLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0, v1}, Lc8/nbo;->toggleLoadingLayout(Z)V

    .line 335
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-virtual {p0}, Lc8/nbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/nao;->loadFirstPage([Ljava/lang/Object;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0
.end method

.method protected needShowEmpty()Z
    .locals 1

    .prologue
    .line 489
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/pbo;->onActivityCreated(Landroid/os/Bundle;)V

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/nbo;->uiHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 369
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    sget v0, Lcom/youku/phone/R$id;->page_load_fail_layout:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->tv_no_result_1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->tv_no_result_2:I

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->iv_no_result_1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lc8/nbo;->onLoadFailClick()V

    .line 378
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/pbo;->onCreate(Landroid/os/Bundle;)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lc8/nbo;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/nbo;->parseArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    invoke-virtual {p0}, Lc8/nbo;->getRootLayoutId()I

    move-result v2

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/nbo;->rootView:Landroid/view/View;

    .line 172
    iget-object v2, p0, Lc8/nbo;->rootView:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$id;->standard_recycleview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/veo;

    iput-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    .line 173
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setHasFixedSize(Z)V

    .line 174
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setLoadingMoreEnabled(Z)V

    .line 175
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setPullRefreshEnabled(Z)V

    .line 176
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {p0}, Lc8/nbo;->getArrowRefreshHeader()Lc8/keo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/veo;->setRefreshHeader(Lc8/keo;)V

    .line 177
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2}, Lc8/veo;->getItemAnimator()Lc8/qv;

    move-result-object v0

    .line 178
    .local v0, "animator":Lc8/qv;
    instance-of v2, v0, Lc8/Ew;

    if-eqz v2, :cond_0

    .line 179
    check-cast v0, Lc8/Ew;

    .end local v0    # "animator":Lc8/qv;
    invoke-virtual {v0, v5}, Lc8/Ew;->setSupportsChangeAnimations(Z)V

    .line 181
    :cond_0
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, p0}, Lc8/veo;->setLoadingListener(Lc8/reo;)V

    .line 183
    invoke-virtual {p0}, Lc8/nbo;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 184
    .local v1, "layoutManager":Lc8/xv;
    if-nez v1, :cond_1

    .line 185
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "LayoutManager can not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_1
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v1}, Lc8/veo;->setLayoutManager(Lc8/xv;)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/nbo;->getRecycleViewAdapter(Ljava/util/List;)Lc8/weo;

    move-result-object v2

    iput-object v2, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    .line 190
    iget-object v2, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    iget-object v3, p0, Lc8/nbo;->mRecyclerViewAdapter:Lc8/weo;

    invoke-virtual {v2, v3}, Lc8/veo;->setAdapter(Lc8/iv;)V

    .line 193
    :cond_2
    iget-object v2, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {p0, v2}, Lc8/nbo;->refreshRecyclerAttr(Lc8/veo;)V

    .line 195
    iget-object v2, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-nez v2, :cond_3

    .line 196
    invoke-virtual {p0}, Lc8/nbo;->getPresenter()Lc8/nao;

    move-result-object v2

    iput-object v2, p0, Lc8/nbo;->presenter:Lc8/nao;

    .line 202
    :cond_3
    iget-object v2, p0, Lc8/nbo;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public bridge synthetic onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lc8/nbo;->onLoadComplete(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoadComplete(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 413
    invoke-direct {p0, p1, p2}, Lc8/nbo;->fillData(Ljava/util/List;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lc8/nbo;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lc8/mbo;

    invoke-direct {v1, p0, p1, p2}, Lc8/mbo;-><init>(Lc8/nbo;Ljava/util/List;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onLoadFailClick()V
    .locals 0

    .prologue
    .line 381
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/nbo;->refreshView()V

    .line 382
    return-void
.end method

.method public onLoadMore()V
    .locals 2

    .prologue
    .line 272
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-virtual {p0}, Lc8/nbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/nao;->loadNextPage([Ljava/lang/Object;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 264
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/nbo;->hideNothingUI()V

    .line 265
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-virtual {p0}, Lc8/nbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/nao;->loadFirstPage([Ljava/lang/Object;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-super {p0}, Lc8/pbo;->onResume()V

    .line 314
    iget-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/nbo;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    .line 316
    invoke-virtual {p0}, Lc8/nbo;->loadData()V

    .line 318
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 347
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-super {p0}, Lc8/pbo;->onStop()V

    .line 348
    return-void
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 136
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    return-void
.end method

.method protected refreshRecyclerAttr(Lc8/veo;)V
    .locals 0
    .param p1, "xRecyclerView"    # Lc8/veo;

    .prologue
    .line 116
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    return-void
.end method

.method public refreshView()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v1, 0x1

    .line 352
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lc8/nbo;->hideNothingUI()V

    .line 356
    invoke-virtual {p0}, Lc8/nbo;->getPageLoadingLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0, v1}, Lc8/nbo;->toggleLoadingLayout(Z)V

    .line 358
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lc8/nbo;->presenter:Lc8/nao;

    invoke-virtual {p0}, Lc8/nbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/nao;->loadFirstPage([Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 582
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    .line 583
    return-void
.end method

.method public setCanLoadMore(Z)V
    .locals 1
    .param p1, "canLoadMore"    # Z

    .prologue
    .line 144
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, p1}, Lc8/veo;->setLoadingMoreEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public setCanRefresh(Z)V
    .locals 1
    .param p1, "canRefresh"    # Z

    .prologue
    .line 155
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, p1}, Lc8/veo;->setPullRefreshEnabled(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setPresenter(Lc8/nao;)V
    .locals 0
    .param p1, "presenter"    # Lc8/nao;

    .prologue
    .line 75
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    iput-object p1, p0, Lc8/nbo;->presenter:Lc8/nao;

    .line 76
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 322
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/pbo;->setUserVisibleHint(Z)V

    .line 323
    iget-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/nbo;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nbo;->mIsLoadData:Z

    .line 325
    invoke-virtual {p0}, Lc8/nbo;->loadData()V

    .line 327
    :cond_0
    return-void
.end method

.method protected showLoadMoreFailedTips()V
    .locals 2

    .prologue
    .line 539
    .local p0, "this":Lc8/nbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->base_uikit_load_more_net_error_tips:I

    invoke-virtual {p0, v1}, Lc8/nbo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Nbo;->showBottomTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lc8/nbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->base_uikit_load_more_data_error_tips:I

    invoke-virtual {p0, v1}, Lc8/nbo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Nbo;->showBottomTips(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
