.class public Lc8/xeg;
.super Landroid/widget/ScrollView;
.source "WXScrollView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Lc8/Ueg;
.implements Lc8/ceg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/weg;
    }
.end annotation


# instance fields
.field private childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private consumed:[I

.field private mCheckTime:I

.field private mCurrentStickyView:Landroid/view/View;

.field private mHasNotDoneActionDown:Z

.field private mInitialPosition:I

.field private mRedirectTouchToStickyView:Z

.field private mScrollRect:Landroid/graphics/Rect;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/weg;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private mScrollerTask:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mStickyOffset:I

.field private mStickyP:[I

.field private mWAScroller:Lc8/acg;

.field private offsetInWindow:[I

.field private ox:F

.field private oy:F

.field private scrollable:Z

.field private stickyScrollerP:[I

.field private stickyViewP:[I

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 60
    new-array v1, v2, [I

    iput-object v1, p0, Lc8/xeg;->consumed:[I

    .line 61
    new-array v1, v2, [I

    iput-object v1, p0, Lc8/xeg;->offsetInWindow:[I

    .line 72
    iput-boolean v3, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 76
    const/16 v1, 0x64

    iput v1, p0, Lc8/xeg;->mCheckTime:I

    .line 80
    new-array v1, v2, [I

    iput-object v1, p0, Lc8/xeg;->mStickyP:[I

    .line 85
    new-array v1, v2, [I

    iput-object v1, p0, Lc8/xeg;->stickyScrollerP:[I

    .line 86
    new-array v1, v2, [I

    iput-object v1, p0, Lc8/xeg;->stickyViewP:[I

    .line 87
    iput-boolean v3, p0, Lc8/xeg;->scrollable:Z

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    .line 92
    invoke-direct {p0}, Lc8/xeg;->init()V

    .line 94
    :try_start_0
    const-string/jumbo v1, "mMinimumVelocity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lc8/ygg;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXScrollView] WXScrollView: "

    invoke-static {v1, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->consumed:[I

    .line 61
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->offsetInWindow:[I

    .line 72
    iput-boolean v2, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 76
    const/16 v0, 0x64

    iput v0, p0, Lc8/xeg;->mCheckTime:I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->mStickyP:[I

    .line 85
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->stickyScrollerP:[I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->stickyViewP:[I

    .line 87
    iput-boolean v2, p0, Lc8/xeg;->scrollable:Z

    .line 118
    invoke-direct {p0}, Lc8/xeg;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->consumed:[I

    .line 61
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->offsetInWindow:[I

    .line 72
    iput-boolean v2, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 76
    const/16 v0, 0x64

    iput v0, p0, Lc8/xeg;->mCheckTime:I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->mStickyP:[I

    .line 85
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->stickyScrollerP:[I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/xeg;->stickyViewP:[I

    .line 87
    iput-boolean v2, p0, Lc8/xeg;->scrollable:Z

    .line 123
    invoke-virtual {p0, v1}, Lc8/xeg;->setOverScrollMode(I)V

    .line 124
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/xeg;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0}, Lc8/xeg;->startScrollerTask()V

    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/xeg;->setOverScrollMode(I)V

    .line 104
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 105
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 106
    return-void
.end method

.method private procSticky(Ljava/util/Map;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "mStickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 365
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-object v8

    .line 368
    :cond_1
    iget-object v9, p0, Lc8/xeg;->mWAScroller:Lc8/acg;

    invoke-virtual {v9}, Lc8/acg;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 369
    .local v4, "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v4, :cond_0

    .line 373
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/tbg;

    .line 380
    .local v3, "stickyData":Lc8/tbg;
    iget-object v9, p0, Lc8/xeg;->stickyScrollerP:[I

    invoke-virtual {p0, v9}, Lc8/xeg;->getLocationOnScreen([I)V

    .line 381
    invoke-virtual {v3}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lc8/xeg;->stickyViewP:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "parentH":I
    invoke-virtual {v3}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 384
    invoke-virtual {v3}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/scg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 386
    :cond_2
    invoke-virtual {v3}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 387
    .local v7, "stickyViewH":I
    iget-object v9, p0, Lc8/xeg;->stickyScrollerP:[I

    aget v5, v9, v11

    .line 388
    .local v5, "stickyShowPos":I
    neg-int v9, v2

    iget-object v10, p0, Lc8/xeg;->stickyScrollerP:[I

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int v6, v9, v7

    .line 389
    .local v6, "stickyStartHidePos":I
    iget-object v9, p0, Lc8/xeg;->stickyViewP:[I

    aget v9, v9, v11

    if-gt v9, v5, :cond_3

    iget-object v9, p0, Lc8/xeg;->stickyViewP:[I

    aget v9, v9, v11

    sub-int v10, v6, v7

    if-lt v9, v10, :cond_3

    .line 390
    iget-object v8, p0, Lc8/xeg;->stickyViewP:[I

    aget v8, v8, v11

    sub-int/2addr v8, v6

    iput v8, p0, Lc8/xeg;->mStickyOffset:I

    .line 391
    iget-object v8, p0, Lc8/xeg;->stickyViewP:[I

    aget v8, v8, v11

    iget-object v9, p0, Lc8/xeg;->stickyScrollerP:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lc8/tbg;->setStickyOffset(I)V

    .line 392
    invoke-virtual {v3}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 394
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lc8/tbg;->setStickyOffset(I)V

    goto :goto_1
.end method

.method private showStickyView()V
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lc8/xeg;->mWAScroller:Lc8/acg;

    if-nez v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lc8/xeg;->mWAScroller:Lc8/acg;

    invoke-virtual {v1}, Lc8/acg;->getStickMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/xeg;->procSticky(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "curStickyView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 358
    iput-object v0, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public addScrollViewListener(Lc8/weg;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lc8/weg;

    .prologue
    .line 130
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 436
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 169
    iget-object v2, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget-object v2, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    iget-object v3, p0, Lc8/xeg;->mStickyP:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 172
    iget v2, p0, Lc8/xeg;->mStickyOffset:I

    if-gtz v2, :cond_1

    iget v0, p0, Lc8/xeg;->mStickyOffset:I

    .line 173
    .local v0, "realOffset":I
    :goto_0
    iget-object v2, p0, Lc8/xeg;->mStickyP:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    iget-object v2, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 176
    iget-object v1, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    .end local v0    # "realOffset":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 291
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 281
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 276
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iput-boolean v1, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    .line 145
    :cond_0
    iget-boolean v0, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    .line 148
    iget-boolean v0, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    .line 155
    :cond_2
    iget-boolean v0, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    .line 158
    iget-object v0, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc8/xeg;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 160
    :cond_3
    iget-object v0, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    iget-object v2, p0, Lc8/xeg;->stickyViewP:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 161
    const/4 v0, 0x0

    iget-object v2, p0, Lc8/xeg;->stickyViewP:[I

    aget v1, v2, v1

    iget-object v2, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 163
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_5
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method public fling(I)V
    .locals 2
    .param p1, "velocityY"    # I

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 309
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lc8/xeg;->startScrollerTask()V

    .line 313
    return-void
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lc8/xeg;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lc8/xeg;->computeVerticalScrollRange()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 402
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 404
    :pswitch_0
    iget-object v1, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :cond_1
    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v0

    .line 408
    .local v0, "newPosition":I
    iget v1, p0, Lc8/xeg;->mInitialPosition:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 409
    invoke-virtual {p0}, Lc8/xeg;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p0, v1, v2}, Lc8/xeg;->onScrollStopped(Lc8/xeg;II)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p0}, Lc8/xeg;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p0, v1, v2}, Lc8/xeg;->onScroll(Lc8/xeg;II)V

    .line 412
    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v1

    iput v1, p0, Lc8/xeg;->mInitialPosition:I

    .line 413
    iget-object v1, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    iget v2, p0, Lc8/xeg;->mCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lc8/xeg;->scrollable:Z

    return v0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 303
    invoke-virtual {p0, p2, p3, p4}, Lc8/xeg;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 297
    invoke-virtual {p0, p2, p3}, Lc8/xeg;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method protected onScroll(Lc8/xeg;II)V
    .locals 3
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 338
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 339
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 340
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/weg;

    invoke-interface {v2, p0, p2, p3}, Lc8/weg;->onScroll(Lc8/xeg;II)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 342
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Lc8/xeg;->getScrollX()I

    move-result v0

    iput v0, p0, Lc8/xeg;->mScrollX:I

    .line 318
    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v0

    iput v0, p0, Lc8/xeg;->mScrollY:I

    .line 319
    iget v0, p0, Lc8/xeg;->mScrollX:I

    iget v1, p0, Lc8/xeg;->mScrollY:I

    invoke-virtual {p0, p0, v0, v1}, Lc8/xeg;->onScroll(Lc8/xeg;II)V

    .line 320
    invoke-virtual {p0}, Lc8/xeg;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lc8/xeg;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 321
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_0

    .line 335
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 325
    .local v7, "d":I
    invoke-virtual {p0}, Lc8/xeg;->getHeight()I

    move-result v0

    iget v1, p0, Lc8/xeg;->mScrollY:I

    add-int/2addr v0, v1

    sub-int/2addr v7, v0

    .line 326
    if-nez v7, :cond_1

    .line 327
    iget v0, p0, Lc8/xeg;->mScrollX:I

    iget v1, p0, Lc8/xeg;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lc8/xeg;->onScrollToBottom(II)V

    .line 329
    :cond_1
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v6, 0x0

    .line 330
    .local v6, "count":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_3

    .line 331
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/weg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lc8/weg;->onScrollChanged(Lc8/xeg;IIII)V

    .line 330
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 329
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    .line 334
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    :cond_3
    invoke-direct {p0}, Lc8/xeg;->showStickyView()V

    goto :goto_0
.end method

.method protected onScrollStopped(Lc8/xeg;II)V
    .locals 3
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 425
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 426
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 427
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/weg;

    invoke-interface {v2, p0, p2, p3}, Lc8/weg;->onScrollStopped(Lc8/xeg;II)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 429
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onScrollToBottom(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 345
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 346
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 347
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/weg;

    invoke-interface {v2, p0, p1, p2}, Lc8/weg;->onScrollToBottom(Lc8/xeg;II)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 349
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 183
    iget-boolean v6, p0, Lc8/xeg;->scrollable:Z

    if-nez v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v5

    .line 186
    :cond_1
    iget-boolean v6, p0, Lc8/xeg;->mRedirectTouchToStickyView:Z

    if-eqz v6, :cond_3

    .line 188
    iget-object v6, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 189
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    .line 190
    iget-object v6, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lc8/xeg;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 192
    :cond_2
    iget-object v6, p0, Lc8/xeg;->mCurrentStickyView:Landroid/view/View;

    iget-object v7, p0, Lc8/xeg;->stickyViewP:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    const/4 v6, 0x0

    iget-object v7, p0, Lc8/xeg;->stickyViewP:[I

    aget v7, v7, v5

    iget-object v8, p0, Lc8/xeg;->mScrollRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 196
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 197
    iput-boolean v9, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 200
    :cond_4
    iget-boolean v6, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    if-eqz v6, :cond_5

    .line 201
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 202
    .local v2, "down":Landroid/view/MotionEvent;
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 203
    iput-boolean v9, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 204
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 207
    .end local v2    # "down":Landroid/view/MotionEvent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lc8/xeg;->ox:F

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lc8/xeg;->oy:F

    .line 211
    invoke-virtual {p0, v10}, Lc8/xeg;->startNestedScroll(I)Z

    .line 214
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 215
    :cond_7
    iput-boolean v5, p0, Lc8/xeg;->mHasNotDoneActionDown:Z

    .line 217
    invoke-virtual {p0}, Lc8/xeg;->stopNestedScroll()V

    .line 220
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 222
    .local v0, "clampedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 223
    .local v1, "clampedY":F
    iget v6, p0, Lc8/xeg;->ox:F

    sub-float/2addr v6, v0

    float-to-int v3, v6

    .line 224
    .local v3, "dx":I
    iget v6, p0, Lc8/xeg;->oy:F

    sub-float/2addr v6, v1

    float-to-int v4, v6

    .line 226
    .local v4, "dy":I
    iget-object v6, p0, Lc8/xeg;->consumed:[I

    iget-object v7, p0, Lc8/xeg;->offsetInWindow:[I

    invoke-virtual {p0, v3, v4, v6, v7}, Lc8/xeg;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 228
    iget-object v6, p0, Lc8/xeg;->consumed:[I

    aget v6, v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lc8/xeg;->consumed:[I

    aget v7, v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 230
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lc8/xeg;->ox:F

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lc8/xeg;->oy:F

    .line 234
    .end local v0    # "clampedX":F
    .end local v1    # "clampedY":F
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 235
    .local v5, "result":Z
    iget-object v6, p0, Lc8/xeg;->wxGesture:Lc8/Teg;

    if-eqz v6, :cond_0

    .line 236
    iget-object v6, p0, Lc8/xeg;->wxGesture:Lc8/Teg;

    invoke-virtual {v6, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v5, v6

    goto/16 :goto_0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 440
    iput-object p1, p0, Lc8/xeg;->wxGesture:Lc8/Teg;

    .line 441
    return-void
.end method

.method public removeScrollViewListener(Lc8/weg;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lc8/weg;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/xeg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 244
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lc8/xeg;->scrollable:Z

    .line 272
    return-void
.end method

.method public setWAScroller(Lc8/acg;)V
    .locals 0
    .param p1, "mWAScroller"    # Lc8/acg;

    .prologue
    .line 459
    iput-object p1, p0, Lc8/xeg;->mWAScroller:Lc8/acg;

    .line 460
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startScrollerTask()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {p0}, Lc8/VXf;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lc8/xeg;->getScrollY()I

    move-result v0

    iput v0, p0, Lc8/xeg;->mInitialPosition:I

    .line 113
    iget-object v0, p0, Lc8/xeg;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lc8/xeg;->mCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lc8/xeg;->childHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 259
    return-void
.end method
