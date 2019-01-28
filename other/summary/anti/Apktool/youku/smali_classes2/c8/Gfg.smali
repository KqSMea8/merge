.class public Lc8/Gfg;
.super Landroid/widget/FrameLayout;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ffg;,
        Lc8/Dfg;,
        Lc8/Efg;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 0.4f

.field private static final INVALID:I = -0x1

.field private static final LOAD_MORE:I = 0x1

.field private static final PULL_REFRESH:I = 0x0

.field private static final overFlow:F = 1.0f


# instance fields
.field private footerView:Lc8/ufg;

.field private headerView:Lc8/ufg;

.field private isConfirm:Z

.field private volatile loadingViewFlowHeight:F

.field private volatile loadingViewHeight:F

.field private mCurrentAction:I

.field private mNestedScrollAcceptedParent:Landroid/view/ViewParent;

.field private mNestedScrollInProgress:Z

.field private mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgressBgColor:I

.field private mProgressColor:I

.field private mPullLoadEnable:Z

.field private mPullRefreshEnable:Z

.field private mRefreshViewBgColor:I

.field private volatile mRefreshing:Z

.field private mTargetView:Landroid/view/View;

.field private onLoadingListener:Lc8/Dfg;

.field private onRefreshListener:Lc8/Efg;

.field private volatile refreshViewFlowHeight:F

.field private volatile refreshViewHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentScrollConsumed:[I

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentOffsetInWindow:[I

    .line 103
    iput-boolean v2, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    .line 104
    iput-boolean v2, p0, Lc8/Gfg;->mPullLoadEnable:Z

    .line 107
    iput-boolean v2, p0, Lc8/Gfg;->mRefreshing:Z

    .line 110
    iput v1, p0, Lc8/Gfg;->refreshViewHeight:F

    .line 111
    iput v1, p0, Lc8/Gfg;->loadingViewHeight:F

    .line 114
    iput v1, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    .line 115
    iput v1, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 123
    iput-boolean v2, p0, Lc8/Gfg;->isConfirm:Z

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Gfg;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentScrollConsumed:[I

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentOffsetInWindow:[I

    .line 103
    iput-boolean v2, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    .line 104
    iput-boolean v2, p0, Lc8/Gfg;->mPullLoadEnable:Z

    .line 107
    iput-boolean v2, p0, Lc8/Gfg;->mRefreshing:Z

    .line 110
    iput v1, p0, Lc8/Gfg;->refreshViewHeight:F

    .line 111
    iput v1, p0, Lc8/Gfg;->loadingViewHeight:F

    .line 114
    iput v1, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    .line 115
    iput v1, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 123
    iput-boolean v2, p0, Lc8/Gfg;->isConfirm:Z

    .line 137
    invoke-direct {p0, p1, p2}, Lc8/Gfg;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentScrollConsumed:[I

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentOffsetInWindow:[I

    .line 103
    iput-boolean v2, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    .line 104
    iput-boolean v2, p0, Lc8/Gfg;->mPullLoadEnable:Z

    .line 107
    iput-boolean v2, p0, Lc8/Gfg;->mRefreshing:Z

    .line 110
    iput v1, p0, Lc8/Gfg;->refreshViewHeight:F

    .line 111
    iput v1, p0, Lc8/Gfg;->loadingViewHeight:F

    .line 114
    iput v1, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    .line 115
    iput v1, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 123
    iput-boolean v2, p0, Lc8/Gfg;->isConfirm:Z

    .line 142
    invoke-direct {p0, p1, p2}, Lc8/Gfg;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentScrollConsumed:[I

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Lc8/Gfg;->mParentOffsetInWindow:[I

    .line 103
    iput-boolean v2, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    .line 104
    iput-boolean v2, p0, Lc8/Gfg;->mPullLoadEnable:Z

    .line 107
    iput-boolean v2, p0, Lc8/Gfg;->mRefreshing:Z

    .line 110
    iput v1, p0, Lc8/Gfg;->refreshViewHeight:F

    .line 111
    iput v1, p0, Lc8/Gfg;->loadingViewHeight:F

    .line 114
    iput v1, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    .line 115
    iput v1, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 123
    iput-boolean v2, p0, Lc8/Gfg;->isConfirm:Z

    .line 148
    invoke-direct {p0, p1, p2}, Lc8/Gfg;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lc8/Gfg;)Lc8/ufg;
    .locals 1
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Gfg;F)V
    .locals 0
    .param p0, "x0"    # Lc8/Gfg;
    .param p1, "x1"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lc8/Gfg;->moveTargetView(F)V

    return-void
.end method

.method static synthetic access$200(Lc8/Gfg;)Lc8/Efg;
    .locals 1
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Gfg;->onRefreshListener:Lc8/Efg;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Gfg;)V
    .locals 0
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/Gfg;->resetRefreshState()V

    return-void
.end method

.method static synthetic access$400(Lc8/Gfg;)Lc8/ufg;
    .locals 1
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    return-object v0
.end method

.method static synthetic access$500(Lc8/Gfg;)Lc8/Dfg;
    .locals 1
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Gfg;->onLoadingListener:Lc8/Dfg;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Gfg;)V
    .locals 0
    .param p0, "x0"    # Lc8/Gfg;

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/Gfg;->resetLoadmoreState()V

    return-void
.end method

.method private calculateDistanceY(Landroid/view/View;I)D
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dy"    # I

    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 438
    .local v2, "viewHeight":I
    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    const-wide v6, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v0, v4, v6

    .line 439
    .local v0, "ratio":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gtz v3, :cond_0

    .line 441
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 443
    :cond_0
    int-to-double v4, p2

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private handlerAction()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lc8/Gfg;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/Gfg;->isConfirm:Z

    .line 513
    iget-boolean v1, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc8/Gfg;->mCurrentAction:I

    if-nez v1, :cond_2

    .line 514
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v1}, Lc8/ufg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 515
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Gfg;->refreshViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 516
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lc8/Gfg;->startRefresh(I)V

    .line 524
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lc8/Gfg;->mPullLoadEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/Gfg;->mCurrentAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 525
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v1}, Lc8/ufg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 526
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Gfg;->loadingViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 527
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lc8/Gfg;->startLoadmore(I)V

    goto :goto_0

    .line 517
    :cond_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 518
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lc8/Gfg;->resetHeaderView(I)V

    goto :goto_1

    .line 520
    :cond_4
    invoke-direct {p0}, Lc8/Gfg;->resetRefreshState()V

    goto :goto_1

    .line 528
    :cond_5
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_6

    .line 529
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v1}, Lc8/Gfg;->resetFootView(I)V

    goto :goto_0

    .line 531
    :cond_6
    invoke-direct {p0}, Lc8/Gfg;->resetLoadmoreState()V

    goto :goto_0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lc8/Gfg;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "WXSwipeLayout should not have more than one child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Gfg;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 158
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 159
    invoke-virtual {p0, v2}, Lc8/Gfg;->setNestedScrollingEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lc8/Gfg;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_1
    iput v2, p0, Lc8/Gfg;->mRefreshViewBgColor:I

    .line 166
    iput v2, p0, Lc8/Gfg;->mProgressBgColor:I

    .line 167
    const/high16 v0, -0x10000

    iput v0, p0, Lc8/Gfg;->mProgressColor:I

    goto :goto_0
.end method

.method private moveSpinner(F)Z
    .locals 5
    .param p1, "distanceY"    # F

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 452
    iget-boolean v3, p0, Lc8/Gfg;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lc8/Gfg;->mCurrentAction:I

    if-nez v3, :cond_4

    .line 458
    iget-object v3, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v3}, Lc8/ufg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 459
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 460
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v3, :cond_2

    .line 461
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 464
    :cond_2
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v3, :cond_3

    .line 465
    iput-boolean v1, p0, Lc8/Gfg;->isConfirm:Z

    .line 466
    iput v4, p0, Lc8/Gfg;->mCurrentAction:I

    .line 468
    :cond_3
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v1, v0}, Lc8/ufg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v1, p0, Lc8/Gfg;->onRefreshListener:Lc8/Efg;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    invoke-interface {v1, p1, v3, v4}, Lc8/Efg;->onPullingDown(FIF)V

    .line 470
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lc8/ufg;->setProgressRotation(F)V

    .line 471
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lc8/Gfg;->moveTargetView(F)V

    move v1, v2

    .line 472
    goto :goto_0

    .line 473
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollDown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lc8/Gfg;->mPullLoadEnable:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lc8/Gfg;->mCurrentAction:I

    if-ne v3, v2, :cond_0

    .line 475
    iget-object v3, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v3}, Lc8/ufg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 476
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 477
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v3, :cond_5

    .line 478
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 481
    :cond_5
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v3, :cond_6

    .line 482
    iput-boolean v1, p0, Lc8/Gfg;->isConfirm:Z

    .line 483
    iput v4, p0, Lc8/Gfg;->mCurrentAction:I

    .line 485
    :cond_6
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v1, v0}, Lc8/ufg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v1, p0, Lc8/Gfg;->onLoadingListener:Lc8/Dfg;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    invoke-interface {v1, p1, v3, v4}, Lc8/Dfg;->onPullingUp(FIF)V

    .line 487
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lc8/ufg;->setProgressRotation(F)V

    .line 488
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lc8/Gfg;->moveTargetView(F)V

    move v1, v2

    .line 489
    goto/16 :goto_0
.end method

.method private moveTargetView(F)V
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 499
    iget-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 500
    return-void
.end method

.method private resetFootView(I)V
    .locals 4
    .param p1, "headerViewHeight"    # I

    .prologue
    .line 636
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v1}, Lc8/ufg;->stopAnimation()V

    .line 637
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Lc8/ufg;->setStartEndTrim(FF)V

    .line 638
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 639
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lc8/Bfg;

    invoke-direct {v1, p0}, Lc8/Bfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    new-instance v1, Lc8/Cfg;

    invoke-direct {v1, p0}, Lc8/Cfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 656
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 657
    return-void
.end method

.method private resetHeaderView(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 571
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v1}, Lc8/ufg;->stopAnimation()V

    .line 572
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v4, v2}, Lc8/ufg;->setStartEndTrim(FF)V

    .line 573
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 574
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lc8/xfg;

    invoke-direct {v1, p0}, Lc8/xfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 583
    new-instance v1, Lc8/yfg;

    invoke-direct {v1, p0}, Lc8/yfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 591
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 592
    return-void
.end method

.method private resetLoadmoreState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lc8/Gfg;->mRefreshing:Z

    .line 661
    iput-boolean v0, p0, Lc8/Gfg;->isConfirm:Z

    .line 662
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 664
    return-void
.end method

.method private resetRefreshState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lc8/Gfg;->mRefreshing:Z

    .line 596
    iput-boolean v0, p0, Lc8/Gfg;->isConfirm:Z

    .line 597
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gfg;->mCurrentAction:I

    .line 599
    return-void
.end method

.method private setRefreshView()V
    .locals 7

    .prologue
    const/16 v6, 0x50

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 193
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lc8/ufg;

    invoke-virtual {p0}, Lc8/Gfg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/ufg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    .line 195
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Lc8/ufg;->setStartEndTrim(FF)V

    .line 196
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mRefreshViewBgColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setBackgroundColor(I)V

    .line 197
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mProgressBgColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setProgressBgColor(I)V

    .line 198
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mProgressColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setProgressColor(I)V

    .line 199
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v1, v6}, Lc8/ufg;->setContentGravity(I)V

    .line 200
    iget-object v1, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {p0, v1, v0}, Lc8/Gfg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    new-instance v1, Lc8/ufg;

    invoke-virtual {p0}, Lc8/Gfg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/ufg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    .line 206
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Lc8/ufg;->setStartEndTrim(FF)V

    .line 207
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mRefreshViewBgColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setBackgroundColor(I)V

    .line 208
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mProgressBgColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setProgressBgColor(I)V

    .line 209
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    iget v2, p0, Lc8/Gfg;->mProgressColor:I

    invoke-virtual {v1, v2}, Lc8/ufg;->setProgressColor(I)V

    .line 210
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lc8/ufg;->setContentGravity(I)V

    .line 211
    iget-object v1, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {p0, v1, v0}, Lc8/Gfg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method private startLoadmore(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 606
    iput-boolean v4, p0, Lc8/Gfg;->mRefreshing:Z

    .line 607
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    iget v2, p0, Lc8/Gfg;->loadingViewHeight:F

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 608
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lc8/zfg;

    invoke-direct {v1, p0}, Lc8/zfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 617
    new-instance v1, Lc8/Afg;

    invoke-direct {v1, p0}, Lc8/Afg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 628
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 629
    return-void
.end method

.method private startRefresh(I)V
    .locals 5
    .param p1, "headerViewHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 541
    iput-boolean v4, p0, Lc8/Gfg;->mRefreshing:Z

    .line 542
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    iget v2, p0, Lc8/Gfg;->refreshViewHeight:F

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 543
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lc8/vfg;

    invoke-direct {v1, p0}, Lc8/vfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    new-instance v1, Lc8/wfg;

    invoke-direct {v1, p0}, Lc8/wfg;-><init>(Lc8/Gfg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 563
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 564
    return-void
.end method


# virtual methods
.method public addTargetView(Landroid/view/View;)V
    .locals 2
    .param p1, "mInnerView"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 185
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lc8/Gfg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-direct {p0}, Lc8/Gfg;->setRefreshView()V

    .line 187
    return-void
.end method

.method public canChildScrollDown()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 693
    iget-object v2, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    if-nez v2, :cond_0

    move v2, v3

    .line 712
    :goto_0
    return v2

    .line 696
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v2, v5, :cond_6

    .line 697
    iget-object v2, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 698
    iget-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 699
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 700
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 702
    .local v1, "lastChildBottom":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .end local v1    # "lastChildBottom":I
    :cond_2
    move v2, v3

    .line 705
    goto :goto_0

    .line 709
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v2, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 712
    :cond_6
    iget-object v2, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method public canChildScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 671
    iget-object v3, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_5

    .line 675
    iget-object v3, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 676
    iget-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 677
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 681
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v3, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 684
    :cond_5
    iget-object v1, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public dipToPx(Landroid/content/Context;F)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # F

    .prologue
    .line 717
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 718
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 297
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 284
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 278
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public finishPullLoad()V
    .locals 2

    .prologue
    .line 742
    iget v0, p0, Lc8/Gfg;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 743
    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lc8/Gfg;->resetFootView(I)V

    .line 745
    :cond_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v0}, Lc8/ufg;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public finishPullRefresh()V
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lc8/Gfg;->mCurrentAction:I

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lc8/Gfg;->resetHeaderView(I)V

    .line 736
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v0}, Lc8/ufg;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getFooterView()Lc8/ufg;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    return-object v0
.end method

.method public getHeaderView()Lc8/ufg;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPullLoadEnable()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lc8/Gfg;->mPullLoadEnable:Z

    return v0
.end method

.method public isPullRefreshEnable()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lc8/Gfg;->mRefreshing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 173
    iget-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Gfg;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Gfg;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    .line 176
    :cond_0
    iget-object v0, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    if-nez v0, :cond_2

    .line 178
    :cond_1
    invoke-direct {p0}, Lc8/Gfg;->setRefreshView()V

    .line 181
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-boolean v1, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc8/Gfg;->mPullLoadEnable:Z

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lc8/Gfg;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc8/Gfg;->mRefreshing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc8/Gfg;->mNestedScrollInProgress:Z

    if-nez v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 315
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0, p2, p3, p4}, Lc8/Gfg;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 306
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p2, p3}, Lc8/Gfg;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 349
    iget-object v3, p0, Lc8/Gfg;->mParentScrollConsumed:[I

    .line 350
    .local v3, "parentConsumed":[I
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    aget v6, p4, v10

    sub-int v6, p2, v6

    aget v7, p4, v9

    sub-int v7, p3, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v3, v8}, Lc8/Gfg;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    aget v6, p4, v10

    aget v7, v3, v10

    add-int/2addr v6, v7

    aput v6, p4, v10

    .line 353
    aget v6, p4, v9

    aget v7, v3, v9

    add-int/2addr v6, v7

    aput v6, p4, v9

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-boolean v6, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lc8/Gfg;->mPullLoadEnable:Z

    if-eqz v6, :cond_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 366
    iget-object v6, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    iget-object v7, p0, Lc8/Gfg;->mTargetView:Landroid/view/View;

    if-eq v6, v7, :cond_3

    .line 367
    iget-object v1, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    .line 368
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 370
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 372
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v6, :cond_5

    .line 373
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ltz v6, :cond_0

    .line 386
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1, p3}, Lc8/Gfg;->calculateDistanceY(Landroid/view/View;I)D

    move-result-wide v6

    double-to-int v4, v6

    .line 388
    .local v4, "spinnerDy":I
    iget-boolean v6, p0, Lc8/Gfg;->isConfirm:Z

    if-nez v6, :cond_4

    .line 389
    if-gez v4, :cond_6

    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_6

    .line 390
    iput v10, p0, Lc8/Gfg;->mCurrentAction:I

    .line 391
    iput-boolean v9, p0, Lc8/Gfg;->isConfirm:Z

    .line 398
    :cond_4
    :goto_2
    neg-int v6, v4

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lc8/Gfg;->moveSpinner(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 399
    aget v6, p4, v9

    add-int/2addr v6, v4

    aput v6, p4, v9

    goto :goto_0

    .line 370
    .end local v4    # "spinnerDy":I
    .restart local v0    # "count":I
    .restart local v1    # "group":Landroid/view/ViewGroup;
    .restart local v2    # "i":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "spinnerDy":I
    :cond_6
    if-lez v4, :cond_4

    invoke-virtual {p0}, Lc8/Gfg;->canChildScrollDown()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lc8/Gfg;->mRefreshing:Z

    if-nez v6, :cond_4

    .line 393
    iput v9, p0, Lc8/Gfg;->mCurrentAction:I

    .line 394
    iput-boolean v9, p0, Lc8/Gfg;->isConfirm:Z

    goto :goto_2
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v5, p0, Lc8/Gfg;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Gfg;->dispatchNestedScroll(IIII[I)Z

    .line 430
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 332
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lc8/Gfg;->startNestedScroll(I)Z

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Gfg;->mNestedScrollInProgress:Z

    .line 336
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lc8/Gfg;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/Gfg;->mRefreshing:Z

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 326
    .local v0, "result":Z
    :goto_0
    return v0

    .line 323
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 417
    invoke-direct {p0}, Lc8/Gfg;->handlerAction()V

    .line 418
    invoke-virtual {p0}, Lc8/Gfg;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Gfg;->mNestedScrollInProgress:Z

    .line 420
    invoke-virtual {p0}, Lc8/Gfg;->stopNestedScroll()V

    .line 422
    :cond_0
    return-void
.end method

.method public setLoadingBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lc8/Gfg;->footerView:Lc8/ufg;

    invoke-virtual {v0, p1}, Lc8/ufg;->setBackgroundColor(I)V

    .line 791
    return-void
.end method

.method public setLoadingHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 781
    int-to-float v0, p1

    iput v0, p0, Lc8/Gfg;->loadingViewHeight:F

    .line 782
    iget v0, p0, Lc8/Gfg;->loadingViewHeight:F

    iput v0, p0, Lc8/Gfg;->loadingViewFlowHeight:F

    .line 783
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 232
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 233
    return-void
.end method

.method public setOnLoadingListener(Lc8/Dfg;)V
    .locals 0
    .param p1, "onLoadingListener"    # Lc8/Dfg;

    .prologue
    .line 722
    iput-object p1, p0, Lc8/Gfg;->onLoadingListener:Lc8/Dfg;

    .line 723
    return-void
.end method

.method public setOnRefreshListener(Lc8/Efg;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lc8/Efg;

    .prologue
    .line 726
    iput-object p1, p0, Lc8/Gfg;->onRefreshListener:Lc8/Efg;

    .line 727
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 0
    .param p1, "mPullLoadEnable"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, Lc8/Gfg;->mPullLoadEnable:Z

    .line 761
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 0
    .param p1, "mPullRefreshEnable"    # Z

    .prologue
    .line 768
    iput-boolean p1, p0, Lc8/Gfg;->mPullRefreshEnable:Z

    .line 769
    return-void
.end method

.method public setRefreshBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lc8/Gfg;->headerView:Lc8/ufg;

    invoke-virtual {v0, p1}, Lc8/ufg;->setBackgroundColor(I)V

    .line 787
    return-void
.end method

.method public setRefreshHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 776
    int-to-float v0, p1

    iput v0, p0, Lc8/Gfg;->refreshViewHeight:F

    .line 777
    iget v0, p0, Lc8/Gfg;->refreshViewHeight:F

    iput v0, p0, Lc8/Gfg;->refreshViewFlowHeight:F

    .line 778
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4
    .param p1, "axes"    # I

    .prologue
    .line 242
    iget-object v3, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    .line 243
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 244
    iget-object v3, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-nez v3, :cond_0

    .line 245
    invoke-virtual {p0}, Lc8/Gfg;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 246
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v0, p0

    .line 247
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 248
    invoke-static {v1, v0, p0, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iput-object v1, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    .line 259
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v2

    .line 252
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 253
    check-cast v0, Landroid/view/View;

    .line 255
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 265
    iget-object v0, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Gfg;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    .line 268
    :cond_0
    return-void
.end method
