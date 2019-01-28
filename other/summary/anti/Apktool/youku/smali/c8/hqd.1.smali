.class public abstract Lc8/hqd;
.super Lc8/oqd;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lc8/oqd",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lc8/Kqd;

.field private mIndicatorIvTop:Lc8/Kqd;

.field private mOnLastItemVisibleListener:Lc8/jqd;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mSavedLastVisibleIndex:I

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lc8/oqd;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lc8/hqd;->mSavedLastVisibleIndex:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hqd;->mScrollEmptyView:Z

    .line 61
    iget-object v0, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/oqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lc8/hqd;->mSavedLastVisibleIndex:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hqd;->mScrollEmptyView:Z

    .line 66
    iget-object v0, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 70
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/oqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lc8/hqd;->mSavedLastVisibleIndex:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hqd;->mScrollEmptyView:Z

    .line 71
    iget-object v0, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    return-void
.end method

.method private addIndicatorViews()V
    .locals 8

    .prologue
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 320
    invoke-virtual {p0}, Lc8/hqd;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 321
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-virtual {p0}, Lc8/hqd;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 323
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    if-nez v3, :cond_2

    .line 325
    new-instance v3, Lc8/Kqd;

    invoke-virtual {p0}, Lc8/hqd;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lc8/Kqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    .line 326
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/hqd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-object v3, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    if-nez v3, :cond_3

    .line 340
    new-instance v3, Lc8/Kqd;

    invoke-virtual {p0}, Lc8/hqd;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lc8/Kqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    .line 341
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/hqd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 344
    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    iget-object v3, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 332
    :cond_2
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    if-eqz v3, :cond_0

    .line 334
    iget-object v3, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 335
    iput-object v7, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 350
    iput-object v7, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    goto :goto_1
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lc8/hqd;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/hqd;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 361
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 385
    :goto_0
    return v2

    .line 377
    :cond_1
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 378
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 385
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 389
    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 391
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 421
    :goto_0
    return v5

    .line 397
    :cond_1
    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 398
    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 412
    .local v4, "lastVisiblePosition":I
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 413
    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 414
    .local v1, "childIndex":I
    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 415
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 416
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_3
    move v5, v7

    .line 421
    goto :goto_0
.end method

.method private removeIndicatorViews()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lc8/hqd;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 427
    iput-object v2, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    .line 430
    :cond_0
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lc8/hqd;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 432
    iput-object v2, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    .line 434
    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lc8/hqd;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc8/hqd;->isReadyForPullDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->show()V

    .line 449
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lc8/hqd;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc8/hqd;->isReadyForPullUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->show()V

    .line 460
    :cond_1
    :goto_1
    return-void

    .line 443
    :cond_2
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->hide()V

    goto :goto_0

    .line 455
    :cond_3
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public abstract getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lc8/hqd;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 247
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    sget v1, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lc8/hqd;->isPullToRefreshOverScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc8/hqd;->mShowIndicator:Z

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullDown()Z
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lc8/hqd;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullUp()Z
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lc8/hqd;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 260
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lc8/oqd;->onPullToRefresh()V

    .line 262
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lc8/gqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lc8/hqd;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->pullToRefresh()V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->pullToRefresh()V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 276
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lc8/oqd;->onReleaseToRefresh()V

    .line 278
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lc8/gqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lc8/hqd;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvBottom:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->releaseToRefresh()V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lc8/hqd;->mIndicatorIvTop:Lc8/Kqd;

    invoke-virtual {v0}, Lc8/Kqd;->releaseToRefresh()V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 99
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v1, p0, Lc8/hqd;->mOnLastItemVisibleListener:Lc8/jqd;

    if-eqz v1, :cond_0

    .line 102
    add-int v0, p2, p3

    .line 109
    .local v0, "lastVisibleItemIndex":I
    if-lez p3, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-ne v1, p4, :cond_0

    .line 110
    iget v1, p0, Lc8/hqd;->mSavedLastVisibleIndex:I

    if-eq v0, v1, :cond_0

    .line 111
    iput v0, p0, Lc8/hqd;->mSavedLastVisibleIndex:I

    .line 112
    iget-object v1, p0, Lc8/hqd;->mOnLastItemVisibleListener:Lc8/jqd;

    invoke-interface {v1}, Lc8/jqd;->onLastItemVisible()V

    .line 118
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-direct {p0}, Lc8/hqd;->updateIndicatorViewsVisibility()V

    .line 123
    :cond_1
    iget-object v1, p0, Lc8/hqd;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lc8/hqd;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 126
    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 136
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lc8/oqd;->onScrollChanged(IIII)V

    .line 137
    iget-object v0, p0, Lc8/hqd;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/hqd;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lc8/hqd;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 140
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 129
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lc8/hqd;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/hqd;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 132
    :cond_0
    return-void
.end method

.method protected resetHeader()V
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lc8/oqd;->resetHeader()V

    .line 294
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lc8/hqd;->updateIndicatorViewsVisibility()V

    .line 297
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 151
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, -0x1

    .line 182
    invoke-virtual {p0}, Lc8/hqd;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 185
    .local v1, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lc8/hqd;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lc8/hqd;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 189
    :cond_0
    if-eqz p1, :cond_2

    .line 192
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 195
    .local v0, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 196
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_1
    invoke-virtual {v1, p1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 202
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    instance-of v2, v2, Lc8/Iqd;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Lc8/Iqd;

    invoke-interface {v2, p1}, Lc8/Iqd;->setEmptyViewInternal(Landroid/view/View;)V

    .line 207
    :goto_0
    iput-object p1, p0, Lc8/hqd;->mEmptyView:Landroid/view/View;

    .line 209
    :cond_2
    return-void

    .line 205
    :cond_3
    iget-object v2, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 164
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lc8/hqd;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lc8/jqd;)V
    .locals 0
    .param p1, "listener"    # Lc8/jqd;

    .prologue
    .line 216
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lc8/hqd;->mOnLastItemVisibleListener:Lc8/jqd;

    .line 217
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 220
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lc8/hqd;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 221
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 300
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lc8/oqd;->setRefreshingInternal(Z)V

    .line 302
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lc8/hqd;->updateIndicatorViewsVisibility()V

    .line 305
    :cond_0
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 212
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lc8/hqd;->mScrollEmptyView:Z

    .line 213
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 233
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lc8/hqd;->mShowIndicator:Z

    .line 235
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lc8/hqd;->addIndicatorViews()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lc8/hqd;->removeIndicatorViews()V

    goto :goto_0
.end method

.method protected updateUIForMode()V
    .locals 1

    .prologue
    .line 309
    .local p0, "this":Lc8/hqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lc8/oqd;->updateUIForMode()V

    .line 312
    invoke-direct {p0}, Lc8/hqd;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lc8/hqd;->addIndicatorViews()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lc8/hqd;->removeIndicatorViews()V

    goto :goto_0
.end method
