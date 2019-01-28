.class public Lc8/veo;
.super Lc8/Rv;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/reo;,
        Lc8/ueo;,
        Lc8/qeo;,
        Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;
    }
.end annotation


# static fields
.field private static final DRAG_RATE:F = 2.0f

.field private static final HEADER_INIT_INDEX:I = 0x2710

.field private static final TYPE_FOOTER:I = -0x3

.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_REFRESH_HEADER:I = -0x5

.field private static sHeaderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private canLoadMore:Z

.field private canRefresh:Z

.field private canScrollEnable:Z

.field private isLoadingData:Z

.field private isNoMore:Z

.field private loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

.field private loadingMoreEnabled:Z

.field private mCanSwipe:Z

.field private final mDataObserver:Lc8/kv;

.field private mDownX:F

.field private mDownY:F

.field private mEmptyView:Landroid/view/View;

.field private mFootViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSwip:Z

.field private mIsYScroll:Z

.field private mLastY:F

.field private mLoadingListener:Lc8/reo;

.field private mPageCount:I

.field private mRefreshHeader:Lc8/keo;

.field private mShowMoreView:Z

.field private mWrapAdapter:Lc8/ueo;

.field private pullRefreshEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/veo;->sHeaderTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/veo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/veo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lc8/Rv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/veo;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v2, p0, Lc8/veo;->isLoadingData:Z

    .line 30
    iput-boolean v2, p0, Lc8/veo;->isNoMore:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/veo;->mLastY:F

    .line 38
    iput-boolean v2, p0, Lc8/veo;->pullRefreshEnabled:Z

    .line 39
    iput-boolean v2, p0, Lc8/veo;->loadingMoreEnabled:Z

    .line 45
    iput v2, p0, Lc8/veo;->mPageCount:I

    .line 48
    new-instance v0, Lc8/qeo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/qeo;-><init>(Lc8/veo;Lc8/peo;)V

    iput-object v0, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    .line 52
    iput-boolean v3, p0, Lc8/veo;->canRefresh:Z

    .line 53
    iput-boolean v3, p0, Lc8/veo;->canLoadMore:Z

    .line 72
    iput-boolean v2, p0, Lc8/veo;->mCanSwipe:Z

    .line 77
    iput-boolean v3, p0, Lc8/veo;->mShowMoreView:Z

    .line 340
    iput-boolean v3, p0, Lc8/veo;->canScrollEnable:Z

    .line 89
    invoke-direct {p0}, Lc8/veo;->init()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lc8/veo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/veo;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lc8/veo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-boolean v0, p0, Lc8/veo;->pullRefreshEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lc8/veo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-boolean v0, p0, Lc8/veo;->loadingMoreEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lc8/veo;)Lc8/ueo;
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/veo;->mWrapAdapter:Lc8/ueo;

    return-object v0
.end method

.method static synthetic access$500(Lc8/veo;)Lc8/kv;
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    return-object v0
.end method

.method static synthetic access$600(Lc8/veo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lc8/veo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-boolean v0, p0, Lc8/veo;->mShowMoreView:Z

    return v0
.end method

.method static synthetic access$800(Lc8/veo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/veo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lc8/veo;->sHeaderTypes:Ljava/util/List;

    return-object v0
.end method

.method private findMax([I)I
    .locals 4
    .param p1, "lastPositions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 432
    aget v0, p1, v2

    .line 433
    .local v0, "max":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 434
    .local v1, "value":I
    if-le v1, v0, :cond_0

    .line 435
    move v0, v1

    .line 433
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private findMin([I)I
    .locals 4
    .param p1, "firstPositions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 442
    aget v0, p1, v2

    .line 443
    .local v0, "min":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 444
    .local v1, "value":I
    if-ge v1, v0, :cond_0

    .line 445
    move v0, v1

    .line 443
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lc8/veo;->addFooterView()V

    .line 101
    return-void
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public addFooterView()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lc8/meo;

    invoke-virtual {p0}, Lc8/veo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/meo;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "footView":Lc8/meo;
    invoke-virtual {v0}, Lc8/meo;->setProgressStyle()V

    .line 95
    invoke-virtual {p0, v0}, Lc8/veo;->addFootView(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-boolean v1, p0, Lc8/veo;->pullRefreshEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/jeo;

    if-nez v1, :cond_0

    .line 105
    new-instance v0, Lc8/jeo;

    invoke-virtual {p0}, Lc8/veo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/jeo;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "refreshHeader":Lc8/jeo;
    iget-object v1, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    iput-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    .line 109
    .end local v0    # "refreshHeader":Lc8/jeo;
    :cond_0
    iget-object v1, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lc8/veo;->sHeaderTypes:Ljava/util/List;

    iget-object v2, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    .line 457
    iget-object v0, p0, Lc8/veo;->mWrapAdapter:Lc8/ueo;

    iget-object v1, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    invoke-virtual {v0, v1}, Lc8/ueo;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 458
    return-void
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lc8/veo;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisibiPosition()I
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lc8/veo;->getLayoutManager()Lc8/xv;

    move-result-object v2

    .line 320
    .local v2, "layoutManager":Lc8/xv;
    instance-of v3, v2, Lc8/mu;

    if-eqz v3, :cond_0

    .line 321
    check-cast v2, Lc8/mu;

    .end local v2    # "layoutManager":Lc8/xv;
    invoke-virtual {v2}, Lc8/mu;->findFirstVisibleItemPosition()I

    move-result v0

    .line 329
    .local v0, "firstVisibleItemPosition":I
    :goto_0
    return v0

    .line 322
    .end local v0    # "firstVisibleItemPosition":I
    .restart local v2    # "layoutManager":Lc8/xv;
    :cond_0
    instance-of v3, v2, Lc8/Qw;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 323
    check-cast v3, Lc8/Qw;

    invoke-virtual {v3}, Lc8/Qw;->getSpanCount()I

    move-result v3

    new-array v1, v3, [I

    .line 324
    .local v1, "into":[I
    check-cast v2, Lc8/Qw;

    .end local v2    # "layoutManager":Lc8/xv;
    invoke-virtual {v2, v1}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    .line 325
    invoke-direct {p0, v1}, Lc8/veo;->findMax([I)I

    move-result v0

    .line 326
    .restart local v0    # "firstVisibleItemPosition":I
    goto :goto_0

    .line 327
    .end local v0    # "firstVisibleItemPosition":I
    .end local v1    # "into":[I
    .restart local v2    # "layoutManager":Lc8/xv;
    :cond_1
    check-cast v2, Lc8/wu;

    .end local v2    # "layoutManager":Lc8/xv;
    invoke-virtual {v2}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v0

    .restart local v0    # "firstVisibleItemPosition":I
    goto :goto_0
.end method

.method public getFooterCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanLoadMore()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lc8/veo;->canLoadMore:Z

    return v0
.end method

.method public isCanRefresh()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lc8/veo;->canRefresh:Z

    return v0
.end method

.method public isCanScrollEnable()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lc8/veo;->canScrollEnable:Z

    return v0
.end method

.method public isLoadingMore()Z
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_MORE:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingRefresh()Z
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnTop()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRefreshHeaderSetted()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMoreComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lc8/veo;->isLoadingData:Z

    .line 140
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 142
    .local v0, "footView":Landroid/view/View;
    instance-of v1, v0, Lc8/meo;

    if-eqz v1, :cond_2

    .line 143
    iget-boolean v1, p0, Lc8/veo;->isNoMore:Z

    if-eqz v1, :cond_1

    .line 144
    check-cast v0, Lc8/meo;

    .end local v0    # "footView":Landroid/view/View;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/meo;->setState(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0    # "footView":Landroid/view/View;
    :cond_1
    check-cast v0, Lc8/meo;

    .end local v0    # "footView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/meo;->setState(I)V

    goto :goto_0

    .line 149
    .restart local v0    # "footView":Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lc8/veo;->mDownX:F

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lc8/veo;->mDownY:F

    .line 348
    :cond_0
    invoke-super {p0, p1}, Lc8/Rv;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLoadComplete()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lc8/veo;->isLoadingMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lc8/veo;->loadMoreComplete()V

    .line 135
    :cond_0
    :goto_0
    sget-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_NORMAL:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    iput-object v0, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 136
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lc8/veo;->isLoadingRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lc8/veo;->refreshComplete()V

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x0

    .line 276
    invoke-super {p0, p1}, Lc8/Rv;->onScrollStateChanged(I)V

    .line 277
    if-nez p1, :cond_0

    iget-object v4, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lc8/veo;->isLoadingData:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lc8/veo;->loadingMoreEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lc8/veo;->canLoadMore:Z

    if-eqz v4, :cond_0

    .line 279
    invoke-virtual {p0}, Lc8/veo;->getLayoutManager()Lc8/xv;

    move-result-object v3

    .line 281
    .local v3, "layoutManager":Lc8/xv;
    instance-of v4, v3, Lc8/mu;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 282
    check-cast v4, Lc8/mu;

    invoke-virtual {v4}, Lc8/mu;->findLastVisibleItemPosition()I

    move-result v2

    .line 290
    .local v2, "lastVisibleItemPosition":I
    :goto_0
    iget-object v4, p0, Lc8/veo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onScrollStateChanged layoutManager.getChildCount() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lc8/xv;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lastVisibleItemPosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " layoutManager.getItemCount() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    invoke-virtual {v3}, Lc8/xv;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-static {v4, v5}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lc8/veo;->mWrapAdapter:Lc8/ueo;

    invoke-virtual {v4}, Lc8/ueo;->getDataCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 294
    invoke-virtual {v3}, Lc8/xv;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt v2, v4, :cond_0

    iget-boolean v4, p0, Lc8/veo;->isNoMore:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    .line 296
    invoke-interface {v4}, Lc8/keo;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 297
    iget-boolean v4, p0, Lc8/veo;->loadingMoreEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 298
    iget-object v4, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 299
    .local v0, "footView":Landroid/view/View;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/veo;->isLoadingData:Z

    .line 300
    instance-of v4, v0, Lc8/meo;

    if-eqz v4, :cond_3

    .line 301
    check-cast v0, Lc8/meo;

    .end local v0    # "footView":Landroid/view/View;
    invoke-virtual {v0, v7}, Lc8/meo;->setState(I)V

    .line 305
    :goto_1
    sget-object v4, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_MORE:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    iput-object v4, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 306
    iget-object v4, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    invoke-interface {v4}, Lc8/reo;->onLoadMore()V

    .line 310
    .end local v2    # "lastVisibleItemPosition":I
    .end local v3    # "layoutManager":Lc8/xv;
    :cond_0
    return-void

    .line 283
    .restart local v3    # "layoutManager":Lc8/xv;
    :cond_1
    instance-of v4, v3, Lc8/Qw;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 284
    check-cast v4, Lc8/Qw;

    invoke-virtual {v4}, Lc8/Qw;->getSpanCount()I

    move-result v4

    new-array v1, v4, [I

    .local v1, "into":[I
    move-object v4, v3

    .line 285
    check-cast v4, Lc8/Qw;

    invoke-virtual {v4, v1}, Lc8/Qw;->findLastVisibleItemPositions([I)[I

    .line 286
    invoke-direct {p0, v1}, Lc8/veo;->findMax([I)I

    move-result v2

    .line 287
    .restart local v2    # "lastVisibleItemPosition":I
    goto/16 :goto_0

    .end local v1    # "into":[I
    .end local v2    # "lastVisibleItemPosition":I
    :cond_2
    move-object v4, v3

    .line 288
    check-cast v4, Lc8/wu;

    invoke-virtual {v4}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v2

    .restart local v2    # "lastVisibleItemPosition":I
    goto/16 :goto_0

    .line 303
    .restart local v0    # "footView":Landroid/view/View;
    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 353
    iget v2, p0, Lc8/veo;->mLastY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lc8/veo;->mLastY:F

    .line 356
    :cond_0
    iget-boolean v2, p0, Lc8/veo;->canScrollEnable:Z

    if-nez v2, :cond_1

    .line 428
    :goto_0
    return v1

    .line 359
    :cond_1
    iget-boolean v2, p0, Lc8/veo;->canRefresh:Z

    if-nez v2, :cond_2

    .line 360
    invoke-super {p0, p1}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 395
    :pswitch_0
    iput v3, p0, Lc8/veo;->mLastY:F

    .line 396
    invoke-virtual {p0}, Lc8/veo;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lc8/veo;->pullRefreshEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    invoke-interface {v1}, Lc8/keo;->releaseAction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    sget-object v1, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    iput-object v1, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 399
    iput-boolean v5, p0, Lc8/veo;->isNoMore:Z

    .line 400
    invoke-virtual {p0}, Lc8/veo;->loadMoreComplete()V

    .line 401
    iget-object v1, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    invoke-interface {v1}, Lc8/reo;->onRefresh()V

    .line 428
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/veo;->mLastY:F

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lc8/veo;->mDownX:F

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/veo;->mDownY:F

    goto :goto_1

    .line 369
    :pswitch_2
    iget-boolean v2, p0, Lc8/veo;->mCanSwipe:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lc8/veo;->mIsYScroll:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lc8/veo;->mIsSwip:Z

    if-nez v2, :cond_5

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lc8/veo;->mDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 371
    iput-boolean v1, p0, Lc8/veo;->mIsYScroll:Z

    .line 373
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lc8/veo;->mDownX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 374
    iput-boolean v1, p0, Lc8/veo;->mIsSwip:Z

    .line 380
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lc8/veo;->mIsSwip:Z

    if-nez v2, :cond_3

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lc8/veo;->mLastY:F

    sub-float v0, v2, v3

    .line 382
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lc8/veo;->mLastY:F

    .line 383
    invoke-virtual {p0}, Lc8/veo;->isOnTop()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lc8/veo;->pullRefreshEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    if-eqz v2, :cond_3

    .line 384
    iget-object v2, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lc8/keo;->onMove(FF)V

    .line 385
    iget-object v2, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    invoke-interface {v2}, Lc8/keo;->getVisibleHeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    .line 386
    invoke-interface {v2}, Lc8/keo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    goto/16 :goto_0

    .line 376
    .end local v0    # "deltaY":F
    :cond_6
    iput-boolean v5, p0, Lc8/veo;->mIsSwip:Z

    goto :goto_2

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshComplete()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/veo;->isLoadingData:Z

    .line 191
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    invoke-interface {v0}, Lc8/keo;->refreshComplete()V

    .line 194
    :cond_0
    return-void
.end method

.method public removeRefreshHeader()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    .line 206
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/veo;->setNoMore(Z)V

    .line 166
    invoke-virtual {p0}, Lc8/veo;->loadMoreComplete()V

    .line 167
    invoke-virtual {p0}, Lc8/veo;->refreshComplete()V

    .line 168
    return-void
.end method

.method public setAdapter(Lc8/iv;)V
    .locals 1
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 268
    new-instance v0, Lc8/ueo;

    invoke-direct {v0, p0, p1}, Lc8/ueo;-><init>(Lc8/veo;Lc8/iv;)V

    iput-object v0, p0, Lc8/veo;->mWrapAdapter:Lc8/ueo;

    .line 269
    iget-object v0, p0, Lc8/veo;->mWrapAdapter:Lc8/ueo;

    invoke-super {p0, v0}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    .line 270
    iget-object v0, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    invoke-virtual {p1, v0}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 271
    iget-object v0, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    invoke-virtual {v0}, Lc8/kv;->onChanged()V

    .line 272
    return-void
.end method

.method public setCanLoadMore(Z)V
    .locals 0
    .param p1, "canLoadMore"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, Lc8/veo;->canLoadMore:Z

    .line 761
    return-void
.end method

.method public setCanRefresh(Z)V
    .locals 0
    .param p1, "canRefresh"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, Lc8/veo;->canRefresh:Z

    .line 753
    return-void
.end method

.method public setCanScrollEnable(Z)V
    .locals 0
    .param p1, "canScrollEnable"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lc8/veo;->canScrollEnable:Z

    .line 338
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 249
    iput-object p1, p0, Lc8/veo;->mEmptyView:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lc8/veo;->mDataObserver:Lc8/kv;

    invoke-virtual {v0}, Lc8/kv;->onChanged()V

    .line 251
    return-void
.end method

.method public setLoadingListener(Lc8/reo;)V
    .locals 0
    .param p1, "listener"    # Lc8/reo;

    .prologue
    .line 703
    iput-object p1, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    .line 704
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lc8/veo;->loadingMoreEnabled:Z

    .line 232
    if-nez p1, :cond_1

    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 234
    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lc8/veo;->addFooterView()V

    goto :goto_0
.end method

.method public setNoMore(Z)V
    .locals 3
    .param p1, "noMore"    # Z

    .prologue
    const/4 v2, 0x0

    .line 155
    iput-boolean p1, p0, Lc8/veo;->isNoMore:Z

    .line 156
    iput-boolean v2, p0, Lc8/veo;->isLoadingData:Z

    .line 157
    iget-boolean v1, p0, Lc8/veo;->loadingMoreEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 158
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, "footView":Landroid/view/View;
    check-cast v0, Lc8/meo;

    .end local v0    # "footView":Landroid/view/View;
    iget-boolean v1, p0, Lc8/veo;->isNoMore:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lc8/meo;->setState(I)V

    .line 162
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lc8/veo;->pullRefreshEnabled:Z

    .line 223
    return-void
.end method

.method public setRefreshHeader(Lc8/keo;)V
    .locals 3
    .param p1, "refreshHeader"    # Lc8/keo;

    .prologue
    .line 197
    iget-boolean v0, p0, Lc8/veo;->pullRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lc8/veo;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    iput-object p1, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    .line 201
    :cond_0
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 714
    iget-object v0, p0, Lc8/veo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRefreshing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lc8/veo;->pullRefreshEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v3, v1}, Lc8/keo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 717
    iget-boolean v0, p0, Lc8/veo;->canRefresh:Z

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    iget-object v1, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    invoke-interface {v1}, Lc8/keo;->getRefreshingHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/keo;->onMove(FF)V

    .line 719
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/keo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lc8/veo;->mRefreshHeader:Lc8/keo;

    invoke-interface {v0}, Lc8/keo;->releaseAction()Z

    .line 722
    iput-boolean v3, p0, Lc8/veo;->isNoMore:Z

    .line 723
    invoke-virtual {p0}, Lc8/veo;->loadMoreComplete()V

    .line 724
    sget-object v0, Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;->LOAD_STATE_REFRESH:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    iput-object v0, p0, Lc8/veo;->loadState:Lcom/youku/us/baseuikit/widget/recycleview/XRecyclerView$LoadState;

    .line 725
    iget-object v0, p0, Lc8/veo;->mLoadingListener:Lc8/reo;

    invoke-interface {v0}, Lc8/reo;->onRefresh()V

    .line 727
    :cond_1
    return-void
.end method

.method public setShowMoreView(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lc8/veo;->mShowMoreView:Z

    .line 246
    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0
    .param p1, "swipeable"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lc8/veo;->mCanSwipe:Z

    .line 264
    return-void
.end method

.method public showNoMoreState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iput-boolean v2, p0, Lc8/veo;->isLoadingData:Z

    .line 175
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 176
    iget-object v1, p0, Lc8/veo;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 177
    .local v0, "footView":Landroid/view/View;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/veo;->isNoMore:Z

    .line 178
    instance-of v1, v0, Lc8/meo;

    if-eqz v1, :cond_1

    .line 179
    check-cast v0, Lc8/meo;

    .end local v0    # "footView":Landroid/view/View;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/meo;->setState(I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v0    # "footView":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
