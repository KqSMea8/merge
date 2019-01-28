.class public Lc8/hbp;
.super Lc8/Rv;
.source "XRecyclerView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gbp;,
        Lc8/cbp;,
        Lc8/fbp;,
        Lc8/bbp;
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

.field private isLoadingData:Z

.field private isNoMore:Z

.field private loadingMoreEnabled:Z

.field private final mDataObserver:Lc8/kv;

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

.field private mLastY:F

.field private mLoadingListener:Lc8/cbp;

.field private mLoadingListenerExtra:Lc8/aap;

.field private mPageCount:I

.field private mRefreshHeader:Lc8/jYo;

.field private mWrapAdapter:Lc8/iv;

.field private preloadItemNumber:I

.field private pullRefreshEnabled:Z

.field private spanSizeLookup:Lc8/lu;

.field private xonGestureListener:Lc8/gbp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/hbp;->sHeaderTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/hbp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/hbp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lc8/Rv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hbp;->TAG:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lc8/hbp;->isLoadingData:Z

    .line 25
    iput-boolean v1, p0, Lc8/hbp;->isNoMore:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/hbp;->mLastY:F

    .line 34
    iput-boolean v1, p0, Lc8/hbp;->pullRefreshEnabled:Z

    .line 35
    iput-boolean v1, p0, Lc8/hbp;->loadingMoreEnabled:Z

    .line 41
    iput v1, p0, Lc8/hbp;->mPageCount:I

    .line 44
    new-instance v0, Lc8/bbp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/bbp;-><init>(Lc8/hbp;Lc8/abp;)V

    iput-object v0, p0, Lc8/hbp;->mDataObserver:Lc8/kv;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lc8/hbp;->preloadItemNumber:I

    .line 58
    invoke-direct {p0}, Lc8/hbp;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/hbp;->sHeaderTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/hbp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lc8/hbp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hbp;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lc8/hbp;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-boolean v0, p0, Lc8/hbp;->pullRefreshEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lc8/hbp;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-boolean v0, p0, Lc8/hbp;->loadingMoreEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lc8/hbp;)Lc8/iv;
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    return-object v0
.end method

.method static synthetic access$700(Lc8/hbp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lc8/hbp;)Lc8/lu;
    .locals 1
    .param p0, "x0"    # Lc8/hbp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/hbp;->spanSizeLookup:Lc8/lu;

    return-object v0
.end method

.method private findMax([I)I
    .locals 4
    .param p1, "lastPositions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 323
    aget v0, p1, v2

    .line 324
    .local v0, "max":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 325
    .local v1, "value":I
    if-le v1, v0, :cond_0

    .line 326
    move v0, v1

    .line 324
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private findMin([I)I
    .locals 4
    .param p1, "firstPositions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 333
    aget v0, p1, v2

    .line 334
    .local v0, "min":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 335
    .local v1, "value":I
    if-ge v1, v0, :cond_0

    .line 336
    move v0, v1

    .line 334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lc8/bap;

    invoke-virtual {p0}, Lc8/hbp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "footView":Lc8/bap;
    invoke-virtual {v0}, Lc8/bap;->setProgressStyle()V

    .line 64
    invoke-virtual {p0, v0}, Lc8/hbp;->addFootView(Landroid/view/View;)V

    .line 65
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method private isOnTop()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

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


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-boolean v1, p0, Lc8/hbp;->pullRefreshEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/iYo;

    if-nez v1, :cond_0

    .line 95
    new-instance v0, Lc8/iYo;

    invoke-virtual {p0}, Lc8/hbp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/iYo;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "refreshHeader":Lc8/iYo;
    iget-object v1, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    iput-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    .line 99
    .end local v0    # "refreshHeader":Lc8/iYo;
    :cond_0
    iget-object v1, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lc8/hbp;->sHeaderTypes:Ljava/util/List;

    iget-object v2, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    .line 348
    iget-object v0, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    check-cast v0, Lc8/fbp;

    iget-object v1, p0, Lc8/hbp;->mDataObserver:Lc8/kv;

    invoke-static {v0, v1}, Lc8/fbp;->access$200(Lc8/fbp;Lc8/kv;)V

    .line 349
    return-void
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/hbp;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLoadingMore()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lc8/hbp;->isLoadingData:Z

    return v0
.end method

.method public isRefreshHeaderSetted()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 677
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 680
    :cond_0
    return v0
.end method

.method public loadMoreComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lc8/hbp;->isLoadingData:Z

    .line 114
    iget-boolean v1, p0, Lc8/hbp;->loadingMoreEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    .local v0, "footView":Landroid/view/View;
    instance-of v1, v0, Lc8/bap;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Lc8/bap;

    .end local v0    # "footView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/bap;->setState(I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v0    # "footView":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 385
    iget-object v0, p0, Lc8/hbp;->xonGestureListener:Lc8/gbp;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lc8/hbp;->xonGestureListener:Lc8/gbp;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/gbp;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x0

    .line 237
    invoke-super {p0, p1}, Lc8/Rv;->onScrollStateChanged(I)V

    .line 239
    if-nez p1, :cond_2

    iget-object v4, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    if-nez v4, :cond_0

    iget-object v4, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v4, :cond_2

    :cond_0
    iget-boolean v4, p0, Lc8/hbp;->isLoadingData:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lc8/hbp;->loadingMoreEnabled:Z

    if-eqz v4, :cond_2

    .line 240
    invoke-virtual {p0}, Lc8/hbp;->getLayoutManager()Lc8/xv;

    move-result-object v3

    .line 242
    .local v3, "layoutManager":Lc8/xv;
    instance-of v4, v3, Lc8/mu;

    if-eqz v4, :cond_3

    move-object v4, v3

    .line 243
    check-cast v4, Lc8/mu;

    invoke-virtual {v4}, Lc8/mu;->findLastVisibleItemPosition()I

    move-result v2

    .line 252
    .local v2, "lastVisibleItemPosition":I
    :goto_0
    invoke-virtual {v3}, Lc8/xv;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 253
    invoke-virtual {v3}, Lc8/xv;->getItemCount()I

    move-result v4

    iget v5, p0, Lc8/hbp;->preloadItemNumber:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_2

    invoke-virtual {v3}, Lc8/xv;->getItemCount()I

    move-result v4

    invoke-virtual {v3}, Lc8/xv;->getChildCount()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-boolean v4, p0, Lc8/hbp;->isNoMore:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v4}, Lc8/jYo;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 255
    iget-boolean v4, p0, Lc8/hbp;->loadingMoreEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 256
    iget-object v4, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 257
    .local v0, "footView":Landroid/view/View;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/hbp;->isLoadingData:Z

    .line 258
    instance-of v4, v0, Lc8/bap;

    if-eqz v4, :cond_5

    .line 259
    check-cast v0, Lc8/bap;

    .end local v0    # "footView":Landroid/view/View;
    invoke-virtual {v0, v6}, Lc8/bap;->setState(I)V

    .line 263
    :goto_1
    iget-object v4, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    if-eqz v4, :cond_1

    .line 264
    iget-object v4, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    invoke-interface {v4}, Lc8/cbp;->onLoadMore()V

    .line 266
    :cond_1
    iget-object v4, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v4, :cond_2

    .line 267
    iget-object v4, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    invoke-interface {v4}, Lc8/aap;->onLoadMore()V

    .line 272
    .end local v2    # "lastVisibleItemPosition":I
    .end local v3    # "layoutManager":Lc8/xv;
    :cond_2
    return-void

    .line 244
    .restart local v3    # "layoutManager":Lc8/xv;
    :cond_3
    instance-of v4, v3, Lc8/Qw;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 245
    check-cast v4, Lc8/Qw;

    invoke-virtual {v4}, Lc8/Qw;->getSpanCount()I

    move-result v4

    new-array v1, v4, [I

    .local v1, "into":[I
    move-object v4, v3

    .line 246
    check-cast v4, Lc8/Qw;

    invoke-virtual {v4, v1}, Lc8/Qw;->findLastVisibleItemPositions([I)[I

    .line 247
    invoke-direct {p0, v1}, Lc8/hbp;->findMax([I)I

    move-result v2

    .line 248
    .restart local v2    # "lastVisibleItemPosition":I
    goto :goto_0

    .end local v1    # "into":[I
    .end local v2    # "lastVisibleItemPosition":I
    :cond_4
    move-object v4, v3

    .line 249
    check-cast v4, Lc8/wu;

    invoke-virtual {v4}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v2

    .restart local v2    # "lastVisibleItemPosition":I
    goto :goto_0

    .line 261
    .restart local v0    # "footView":Landroid/view/View;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 366
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 276
    iget v1, p0, Lc8/hbp;->mLastY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/hbp;->mLastY:F

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 298
    :pswitch_0
    iput v2, p0, Lc8/hbp;->mLastY:F

    .line 299
    invoke-direct {p0}, Lc8/hbp;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc8/hbp;->pullRefreshEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->releaseAction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    iget-object v1, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    invoke-interface {v1}, Lc8/cbp;->onRefresh()V

    .line 304
    :cond_1
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 306
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    invoke-interface {v1}, Lc8/aap;->onFullScreenShow()V

    .line 319
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 282
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/hbp;->mLastY:F

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lc8/hbp;->mLastY:F

    sub-float v0, v1, v2

    .line 286
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lc8/hbp;->mLastY:F

    .line 287
    invoke-direct {p0}, Lc8/hbp;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc8/hbp;->pullRefreshEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    invoke-interface {v1, v2}, Lc8/jYo;->onMove(F)V

    .line 289
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    iget-object v2, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v2}, Lc8/jYo;->getVisibleHeight()I

    move-result v2

    iget-object v3, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v3}, Lc8/jYo;->getInitHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lc8/aap;->onMove(F)V

    .line 292
    :cond_3
    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->getVisibleHeight()I

    move-result v1

    iget-object v2, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v2}, Lc8/jYo;->getInitHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 293
    const/4 v1, 0x0

    goto :goto_1

    .line 308
    .end local v0    # "deltaY":F
    :cond_4
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    invoke-interface {v1}, Lc8/aap;->onRefresh()V

    goto :goto_0

    .line 312
    :cond_5
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lc8/aap;->onMove(F)V

    goto :goto_0

    .line 280
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
    .line 161
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v0}, Lc8/jYo;->refreshComplete()V

    .line 163
    :cond_0
    return-void
.end method

.method public refreshComplete(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "info"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 166
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v0, p1}, Lc8/jYo;->refreshComplete(Landroid/text/SpannableStringBuilder;)V

    .line 168
    :cond_0
    return-void
.end method

.method public removeRefreshHeader()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    .line 180
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/hbp;->setNoMore(Z)V

    .line 156
    invoke-virtual {p0}, Lc8/hbp;->loadMoreComplete()V

    .line 157
    invoke-virtual {p0}, Lc8/hbp;->refreshComplete()V

    .line 158
    return-void
.end method

.method public setAdapter(Lc8/iv;)V
    .locals 2
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 229
    new-instance v0, Lc8/fbp;

    invoke-direct {v0, p0, p1}, Lc8/fbp;-><init>(Lc8/hbp;Lc8/iv;)V

    iput-object v0, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    .line 230
    iget-object v0, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    invoke-super {p0, v0}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    .line 231
    iget-object v0, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    check-cast v0, Lc8/fbp;

    iget-object v1, p0, Lc8/hbp;->mDataObserver:Lc8/kv;

    invoke-static {v0, v1}, Lc8/fbp;->access$100(Lc8/fbp;Lc8/kv;)V

    .line 232
    iget-object v0, p0, Lc8/hbp;->mDataObserver:Lc8/kv;

    invoke-virtual {v0}, Lc8/kv;->onChanged()V

    .line 233
    return-void
.end method

.method public setArrowBgImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    instance-of v0, v0, Lc8/iYo;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    check-cast v0, Lc8/iYo;

    invoke-virtual {v0, p1}, Lc8/iYo;->setBgImage(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    instance-of v0, v0, Lc8/iYo;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    check-cast v0, Lc8/iYo;

    invoke-virtual {v0, p1}, Lc8/iYo;->setArrowImageView(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 219
    iput-object p1, p0, Lc8/hbp;->mEmptyView:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lc8/hbp;->mDataObserver:Lc8/kv;

    invoke-virtual {v0}, Lc8/kv;->onChanged()V

    .line 221
    return-void
.end method

.method public setLayoutManager(Lc8/xv;)V
    .locals 1
    .param p1, "layout"    # Lc8/xv;

    .prologue
    .line 449
    invoke-super {p0, p1}, Lc8/Rv;->setLayoutManager(Lc8/xv;)V

    .line 450
    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/mu;

    if-eqz v0, :cond_0

    .line 451
    check-cast p1, Lc8/mu;

    .end local p1    # "layout":Lc8/xv;
    invoke-virtual {p1}, Lc8/mu;->getSpanSizeLookup()Lc8/lu;

    move-result-object v0

    iput-object v0, p0, Lc8/hbp;->spanSizeLookup:Lc8/lu;

    .line 453
    :cond_0
    return-void
.end method

.method public setLoadingListener(Lc8/cbp;)V
    .locals 0
    .param p1, "listener"    # Lc8/cbp;

    .prologue
    .line 648
    iput-object p1, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    .line 649
    return-void
.end method

.method public setLoadingListenerExtra(Lc8/aap;)V
    .locals 0
    .param p1, "listener"    # Lc8/aap;

    .prologue
    .line 652
    iput-object p1, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    .line 653
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lc8/hbp;->loadingMoreEnabled:Z

    .line 196
    if-nez p1, :cond_0

    iget-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    :cond_0
    return-void
.end method

.method public setNoMore(Z)V
    .locals 3
    .param p1, "noMore"    # Z

    .prologue
    const/4 v2, 0x0

    .line 125
    iput-boolean p1, p0, Lc8/hbp;->isNoMore:Z

    .line 126
    iput-boolean v2, p0, Lc8/hbp;->isLoadingData:Z

    .line 128
    iget-boolean v1, p0, Lc8/hbp;->loadingMoreEnabled:Z

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    .line 132
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 133
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "footView":Landroid/view/View;
    move-object v1, v0

    .line 134
    check-cast v1, Lc8/bap;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lc8/bap;->setState(I)V

    .line 135
    check-cast v0, Lc8/bap;

    .end local v0    # "footView":Landroid/view/View;
    invoke-virtual {v0}, Lc8/bap;->isNoMoreHintStay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v1, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->notifyDataSetChanged()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 142
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 143
    .restart local v0    # "footView":Landroid/view/View;
    check-cast v0, Lc8/bap;

    .end local v0    # "footView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/bap;->setState(I)V

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Lc8/bap;

    invoke-virtual {p0}, Lc8/hbp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "footView":Lc8/bap;
    invoke-virtual {v0}, Lc8/bap;->setProgressStyle()V

    .line 147
    invoke-virtual {p0, v0}, Lc8/hbp;->addFootView(Landroid/view/View;)V

    .line 148
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lc8/hbp;->mWrapAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setNoMoreHintStay(Z)V
    .locals 3
    .param p1, "noMoreHintStay"    # Z

    .prologue
    .line 352
    iget-boolean v1, p0, Lc8/hbp;->loadingMoreEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 353
    iget-object v1, p0, Lc8/hbp;->mFootViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    .local v0, "footView":Landroid/view/View;
    check-cast v0, Lc8/bap;

    .end local v0    # "footView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lc8/bap;->setNoMoreHintStay(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public setOnGestureListener(Lc8/gbp;)V
    .locals 0
    .param p1, "listener"    # Lc8/gbp;

    .prologue
    .line 689
    iput-object p1, p0, Lc8/hbp;->xonGestureListener:Lc8/gbp;

    .line 690
    return-void
.end method

.method public setPreloadItemNumber(I)V
    .locals 0
    .param p1, "preloadItemNumber"    # I

    .prologue
    .line 109
    iput p1, p0, Lc8/hbp;->preloadItemNumber:I

    .line 110
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lc8/hbp;->pullRefreshEnabled:Z

    .line 192
    return-void
.end method

.method public setRefreshHeader(Lc8/jYo;)V
    .locals 3
    .param p1, "refreshHeader"    # Lc8/jYo;

    .prologue
    .line 171
    iget-boolean v0, p0, Lc8/hbp;->pullRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lc8/hbp;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    iput-object p1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    .line 175
    :cond_0
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3
    .param p1, "refreshing"    # Z

    .prologue
    .line 664
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lc8/hbp;->pullRefreshEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    iget-object v1, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v1}, Lc8/jYo;->getRefreshingHeight()I

    move-result v1

    iget-object v2, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v2}, Lc8/jYo;->getInitHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lc8/jYo;->onMove(F)V

    .line 666
    iget-object v0, p0, Lc8/hbp;->mRefreshHeader:Lc8/jYo;

    invoke-interface {v0}, Lc8/jYo;->releaseAction()Z

    .line 667
    iget-object v0, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lc8/hbp;->mLoadingListener:Lc8/cbp;

    invoke-interface {v0}, Lc8/cbp;->onRefresh()V

    .line 670
    :cond_1
    iget-object v0, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lc8/hbp;->mLoadingListenerExtra:Lc8/aap;

    invoke-interface {v0}, Lc8/aap;->onRefresh()V

    .line 674
    :cond_2
    return-void
.end method
