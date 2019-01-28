.class public abstract Lc8/Hbo;
.super Lc8/tbo;
.source "PageRecyclerViewFragment.java"

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
        "Lc8/tbo;",
        "Landroid/view/View$OnClickListener;",
        "Lc8/oao",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Lc8/reo;"
    }
.end annotation


# instance fields
.field protected mAdapter:Lc8/weo;

.field protected mIsLoadData:Z

.field onScrollListener:Lc8/Cv;

.field protected presenter:Lc8/ybo;

.field protected uiHandler:Landroid/os/Handler;

.field protected xRecyclerView:Lc8/veo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-direct {p0}, Lc8/tbo;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    .line 45
    new-instance v0, Lc8/Fbo;

    invoke-direct {v0, p0}, Lc8/Fbo;-><init>(Lc8/Hbo;)V

    iput-object v0, p0, Lc8/Hbo;->onScrollListener:Lc8/Cv;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lc8/Hbo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Hbo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Hbo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Hbo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Hbo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Hbo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Hbo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Hbo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Hbo;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected doSomething()V
    .locals 0

    .prologue
    .line 375
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    return-void
.end method

.method protected fillData(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 3
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
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0}, Lc8/Hbo;->hideStateView()V

    .line 315
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v1}, Lc8/veo;->setCanLoadMore(Z)V

    .line 317
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    if-nez v0, :cond_2

    .line 318
    invoke-virtual {p0, p1}, Lc8/Hbo;->getRecycleViewAdapter(Ljava/util/List;)Lc8/weo;

    move-result-object v0

    iput-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    .line 319
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    iget-object v1, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0, v1}, Lc8/veo;->setAdapter(Lc8/iv;)V

    .line 327
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lc8/Hbo;->fillDateCheckHasNext(Ljava/util/List;)V

    .line 358
    :goto_1
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0}, Lc8/veo;->onLoadComplete()V

    .line 362
    :cond_1
    return-void

    .line 320
    :cond_2
    invoke-virtual {p0}, Lc8/Hbo;->isLoadingMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->notifyDataSetInserted(Ljava/util/List;)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/Hbo;->isNeedRefresh(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->setDatas(Ljava/util/List;)V

    .line 324
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->notifyDataSetChanged()V

    goto :goto_0

    .line 329
    :cond_4
    invoke-virtual {p0}, Lc8/Hbo;->isLoadingFirstPage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 331
    invoke-virtual {p0}, Lc8/Hbo;->needShowEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_6

    .line 332
    :cond_5
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lc8/weo;->setDatas(Ljava/util/List;)V

    .line 333
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0}, Lc8/weo;->notifyDataSetChanged()V

    .line 334
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v2}, Lc8/veo;->setCanLoadMore(Z)V

    .line 335
    invoke-virtual {p0, p2}, Lc8/Hbo;->showEmptyTips(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 337
    :cond_6
    invoke-virtual {p0}, Lc8/Hbo;->doSomething()V

    goto :goto_1

    .line 340
    :cond_7
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v2}, Lc8/veo;->setCanLoadMore(Z)V

    .line 341
    invoke-virtual {p0, p2}, Lc8/Hbo;->showEmptyTips(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 345
    :cond_8
    invoke-virtual {p0}, Lc8/Hbo;->isEmptyPage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {p0, p2}, Lc8/Hbo;->showEmptyTips(Ljava/lang/Throwable;)V

    .line 347
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v2}, Lc8/veo;->setCanLoadMore(Z)V

    goto/16 :goto_1

    .line 349
    :cond_9
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_b

    .line 350
    :cond_a
    invoke-virtual {p0}, Lc8/Hbo;->showLoadMoreFailedTips()V

    goto/16 :goto_1

    .line 352
    :cond_b
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, v1}, Lc8/veo;->setNoMore(Z)V

    goto/16 :goto_1
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
    .line 388
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-interface {v0}, Lc8/ybo;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/veo;->setNoMore(Z)V

    .line 392
    :cond_0
    return-void
.end method

.method public getArrowRefreshHeader()Lc8/keo;
    .locals 2

    .prologue
    .line 164
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    new-instance v0, Lc8/jeo;

    invoke-virtual {p0}, Lc8/Hbo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/jeo;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "arrowRefreshHeader":Lc8/jeo;
    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v0, p1}, Lc8/weo;->getItemView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutManager()Lc8/xv;
    .locals 4

    .prologue
    .line 82
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    new-instance v0, Lc8/oeo;

    invoke-virtual {p0}, Lc8/Hbo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lc8/oeo;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public getLoadFooterView()Lc8/bap;
    .locals 2

    .prologue
    .line 169
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    new-instance v0, Lc8/bap;

    invoke-virtual {p0}, Lc8/Hbo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "aLoadingMoreFooter":Lc8/bap;
    invoke-virtual {v0}, Lc8/bap;->setProgressStyle()V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/bap;->setNoMoreHintStay(Z)V

    .line 172
    return-object v0
.end method

.method protected abstract getPresenter()Lc8/ybo;
.end method

.method public abstract getQueryParams()[Ljava/lang/Object;
.end method

.method public getRecycleViewAdapter()Lc8/weo;
    .locals 1

    .prologue
    .line 414
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

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
    .line 130
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_fragment_standard_recrycle_layout:I

    return v0
.end method

.method public getVisibleItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 186
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v1, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v1}, Lc8/veo;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 187
    .local v0, "layoutManager":Lc8/xv;
    if-eqz v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmptyPage()Z
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

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
    .locals 2

    .prologue
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v1}, Lc8/veo;->isLoadingRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    .line 289
    invoke-interface {v1}, Lc8/ybo;->getCurPage()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoadingMore()Z
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0}, Lc8/veo;->isLoadingMore()Z

    move-result v0

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
    .line 395
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
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
    .line 232
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->getStateView()Lc8/Abo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lc8/Hbo;->showLoadingView()V

    .line 234
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-virtual {p0}, Lc8/Hbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ybo;->loadFirst([Ljava/lang/Object;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0
.end method

.method protected needShowEmpty()Z
    .locals 1

    .prologue
    .line 370
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/tbo;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/Hbo;->uiHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    sget v0, Lcom/youku/phone/R$id;->page_load_fail_layout:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->tv_no_result_1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->tv_no_result_2:I

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/phone/R$id;->iv_no_result_1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p0}, Lc8/Hbo;->onLoadFailClick()V

    .line 281
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/tbo;->onCreate(Landroid/os/Bundle;)V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lc8/Hbo;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Hbo;->parseArguments(Landroid/os/Bundle;)V

    .line 95
    iget-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lc8/Hbo;->getPresenter()Lc8/ybo;

    move-result-object v1

    iput-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    .line 99
    :cond_0
    iget-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-virtual {p0}, Lc8/Hbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/ybo;->preLoad([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "var3":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    invoke-virtual {p0}, Lc8/Hbo;->getRootLayoutId()I

    move-result v2

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/Hbo;->rootView:Landroid/view/View;

    .line 136
    iget-object v2, p0, Lc8/Hbo;->rootView:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$id;->standard_recycleview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/veo;

    iput-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    .line 137
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setHasFixedSize(Z)V

    .line 138
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setLoadingMoreEnabled(Z)V

    .line 139
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setPullRefreshEnabled(Z)V

    .line 140
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setCanRefresh(Z)V

    .line 141
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {p0}, Lc8/Hbo;->getArrowRefreshHeader()Lc8/keo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/veo;->setRefreshHeader(Lc8/keo;)V

    .line 142
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2}, Lc8/veo;->getItemAnimator()Lc8/qv;

    move-result-object v0

    .line 143
    .local v0, "animator":Lc8/qv;
    instance-of v2, v0, Lc8/Ew;

    if-eqz v2, :cond_0

    .line 144
    check-cast v0, Lc8/Ew;

    .end local v0    # "animator":Lc8/qv;
    invoke-virtual {v0, v5}, Lc8/Ew;->setSupportsChangeAnimations(Z)V

    .line 147
    :cond_0
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, p0}, Lc8/veo;->setLoadingListener(Lc8/reo;)V

    .line 148
    invoke-virtual {p0}, Lc8/Hbo;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 149
    .local v1, "layoutManager":Lc8/xv;
    if-nez v1, :cond_1

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "LayoutManager can not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_1
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v2, v1}, Lc8/veo;->setLayoutManager(Lc8/xv;)V

    .line 153
    const/4 v2, 0x0

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v2}, Lc8/Hbo;->getRecycleViewAdapter(Ljava/util/List;)Lc8/weo;

    move-result-object v2

    iput-object v2, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    .line 154
    iget-object v2, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    iget-object v3, p0, Lc8/Hbo;->mAdapter:Lc8/weo;

    invoke-virtual {v2, v3}, Lc8/veo;->setAdapter(Lc8/iv;)V

    .line 158
    :cond_2
    iget-object v2, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {p0, v2}, Lc8/Hbo;->refreshRecyclerAttr(Lc8/veo;)V

    .line 159
    iget-object v2, p0, Lc8/Hbo;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 250
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0}, Lc8/tbo;->onDestroy()V

    .line 251
    return-void
.end method

.method public bridge synthetic onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lc8/Hbo;->onLoadComplete(Ljava/util/List;Ljava/lang/Throwable;)V

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
    .line 298
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 300
    invoke-virtual {p0, p1, p2}, Lc8/Hbo;->fillData(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lc8/Hbo;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lc8/Gbo;

    invoke-direct {v1, p0, p1, p2}, Lc8/Gbo;-><init>(Lc8/Hbo;Ljava/util/List;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onLoadFailClick()V
    .locals 0

    .prologue
    .line 284
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->refreshView()V

    .line 285
    return-void
.end method

.method public onLoadMore()V
    .locals 2

    .prologue
    .line 201
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-virtual {p0}, Lc8/Hbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ybo;->loadNext([Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 218
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0}, Lc8/tbo;->onPause()V

    .line 219
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 192
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->hideStateView()V

    .line 193
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-virtual {p0}, Lc8/Hbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ybo;->loadFirst([Ljava/lang/Object;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0}, Lc8/tbo;->onResume()V

    .line 210
    iget-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Hbo;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    .line 212
    invoke-virtual {p0}, Lc8/Hbo;->loadData()V

    .line 214
    :cond_0
    return-void
.end method

.method public onStateViewClick(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 423
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/tbo;->onStateViewClick(I)V

    .line 424
    invoke-virtual {p0}, Lc8/Hbo;->refreshView()V

    .line 425
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 245
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0}, Lc8/tbo;->onStop()V

    .line 246
    return-void
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 113
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    return-void
.end method

.method protected refreshRecyclerAttr(Lc8/veo;)V
    .locals 0
    .param p1, "xRecyclerView"    # Lc8/veo;

    .prologue
    .line 86
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    return-void
.end method

.method public refreshView()V
    .locals 2

    .prologue
    .line 255
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lc8/Hbo;->hideStateView()V

    .line 257
    invoke-virtual {p0}, Lc8/Hbo;->getStateView()Lc8/Abo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lc8/Hbo;->showLoadingView()V

    .line 259
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    invoke-virtual {p0}, Lc8/Hbo;->getQueryParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ybo;->loadFirst([Ljava/lang/Object;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    .line 419
    return-void
.end method

.method public setCanLoadMore(Z)V
    .locals 1
    .param p1, "canLoadMore"    # Z

    .prologue
    .line 116
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, p1}, Lc8/veo;->setLoadingMoreEnabled(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public setCanRefresh(Z)V
    .locals 1
    .param p1, "canRefresh"    # Z

    .prologue
    .line 123
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    invoke-virtual {v0, p1}, Lc8/veo;->setPullRefreshEnabled(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public setPresenter(Lc8/ybo;)V
    .locals 0
    .param p1, "presenter"    # Lc8/ybo;

    .prologue
    .line 72
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    iput-object p1, p0, Lc8/Hbo;->presenter:Lc8/ybo;

    .line 73
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 223
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-super {p0, p1}, Lc8/tbo;->setUserVisibleHint(Z)V

    .line 224
    iget-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Hbo;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hbo;->mIsLoadData:Z

    .line 226
    invoke-virtual {p0}, Lc8/Hbo;->loadData()V

    .line 229
    :cond_0
    return-void
.end method

.method protected showEmptyTips(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 378
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lc8/Hbo;->showNoConnectView()V

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p0, p1}, Lc8/Hbo;->showErrorView(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lc8/Hbo;->showEmptyView()V

    goto :goto_0
.end method

.method protected showLoadMoreFailedTips()V
    .locals 2

    .prologue
    .line 399
    .local p0, "this":Lc8/Hbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment<TE;>;"
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc8/Vao;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->base_uikit_load_more_net_error_tips:I

    .line 401
    invoke-virtual {p0, v1}, Lc8/Hbo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, v1}, Lc8/Nbo;->showBottomTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lc8/Hbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->base_uikit_load_more_data_error_tips:I

    .line 404
    invoke-virtual {p0, v1}, Lc8/Hbo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Lc8/Nbo;->showBottomTips(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
