.class public Lc8/vZo;
.super Lc8/iYo;
.source "FullScreenRefreshHeader.java"


# instance fields
.field public isEnableFullPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/iYo;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vZo;->isEnableFullPull:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 10

    .prologue
    .line 35
    invoke-virtual {p0}, Lc8/vZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 36
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lc8/Mzo;->isTransparentStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lc8/vZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->recycler_view_header_height_with_status_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/vZo;->mInitHeight:I

    .line 42
    :goto_0
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lc8/vZo;->mMaxPullDownDistance:I

    .line 44
    iget v0, p0, Lc8/vZo;->mMaxPullDownDistance:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iget v1, p0, Lc8/vZo;->mInitHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lc8/vZo;->mArrowRotateHeight:I

    .line 45
    iget v0, p0, Lc8/vZo;->mMaxPullDownDistance:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iget v1, p0, Lc8/vZo;->mInitHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lc8/vZo;->mRefreshingHeight:I

    .line 49
    invoke-virtual {p0}, Lc8/vZo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->listview_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lc8/vZo;->mContainer:Landroid/widget/FrameLayout;

    .line 51
    iget-object v0, p0, Lc8/vZo;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/youku/phone/R$id;->bg_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/DOf;

    iput-object v0, p0, Lc8/vZo;->mBgImage:Lc8/DOf;

    .line 53
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    invoke-virtual {p0, v9}, Lc8/vZo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/vZo;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lc8/vZo;->mContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lc8/vZo;->mInitHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/vZo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lc8/vZo;->setGravity(I)V

    .line 61
    sget v0, Lcom/youku/phone/R$id;->listview_header_title:I

    invoke-virtual {p0, v0}, Lc8/vZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/vZo;->mHintView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/youku/phone/R$id;->listview_header_arrow:I

    invoke-virtual {p0, v0}, Lc8/vZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/vZo;->mArrowImageView:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/vZo;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 67
    iget-object v0, p0, Lc8/vZo;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    iget-object v0, p0, Lc8/vZo;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 69
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/vZo;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 71
    iget-object v0, p0, Lc8/vZo;->mRotateDownAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    iget-object v0, p0, Lc8/vZo;->mRotateDownAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 73
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/vZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    .line 75
    iget-object v0, p0, Lc8/vZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    iget-object v0, p0, Lc8/vZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 77
    iget-object v0, p0, Lc8/vZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 78
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 79
    .local v8, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/vZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    const/4 v0, -0x2

    iget v1, p0, Lc8/vZo;->mInitHeight:I

    invoke-virtual {p0, v0, v1}, Lc8/vZo;->measure(II)V

    .line 82
    return-void

    .line 39
    .end local v8    # "lir":Landroid/view/animation/LinearInterpolator;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lc8/vZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->recycler_view_header_height_no_status_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/vZo;->mInitHeight:I

    goto/16 :goto_0
.end method

.method public releaseAction()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "isOnRefresh":Z
    invoke-virtual {p0}, Lc8/vZo;->getVisibleHeight()I

    move-result v1

    .line 88
    .local v1, "height":I
    iget v3, p0, Lc8/vZo;->mInitHeight:I

    if-ne v1, v3, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lc8/vZo;->getVisibleHeight()I

    move-result v3

    iget v4, p0, Lc8/vZo;->mArrowRotateHeight:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lc8/vZo;->mState:I

    if-ge v3, v6, :cond_1

    .line 92
    invoke-virtual {p0, v6}, Lc8/vZo;->setState(I)V

    .line 93
    const/4 v2, 0x1

    .line 96
    :cond_1
    iget v3, p0, Lc8/vZo;->mState:I

    if-ne v3, v6, :cond_2

    int-to-float v3, v1

    iget v4, p0, Lc8/vZo;->mMaxPullDownDistance:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    iget v5, p0, Lc8/vZo;->mInitHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-boolean v3, p0, Lc8/vZo;->isEnableFullPull:Z

    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {p0, v7}, Lc8/vZo;->setState(I)V

    .line 99
    :cond_2
    iget v0, p0, Lc8/vZo;->mInitHeight:I

    .line 101
    .local v0, "destHeight":I
    iget v3, p0, Lc8/vZo;->mState:I

    if-ne v3, v6, :cond_4

    .line 102
    iget v0, p0, Lc8/vZo;->mRefreshingHeight:I

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lc8/vZo;->smoothScrollTo(I)V

    .line 109
    return v2

    .line 104
    :cond_4
    iget v3, p0, Lc8/vZo;->mState:I

    if-ne v3, v7, :cond_3

    .line 105
    iget v3, p0, Lc8/vZo;->mMaxPullDownDistance:I

    iget v4, p0, Lc8/vZo;->mInitHeight:I

    add-int v0, v3, v4

    goto :goto_0
.end method

.method public setEnableFullPull(Z)V
    .locals 0
    .param p1, "enableFullPull"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lc8/vZo;->isEnableFullPull:Z

    .line 31
    return-void
.end method
