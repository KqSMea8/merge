.class public Lc8/NZo;
.super Landroid/widget/LinearLayout;
.source "HintRefreshHeader.java"

# interfaces
.implements Lc8/jYo;


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0x190


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mProgressCircle:Landroid/widget/ImageView;

.field private mRefreshingHeight:I

.field private mRotateCircleAnim:Landroid/view/animation/Animation;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lc8/NZo;->mState:I

    .line 35
    invoke-direct {p0}, Lc8/NZo;->initView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lc8/NZo;->mState:I

    .line 40
    invoke-direct {p0}, Lc8/NZo;->initView()V

    .line 41
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 155
    invoke-virtual {p0}, Lc8/NZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->homepage_refreshing_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/NZo;->mRefreshingHeight:I

    .line 157
    invoke-virtual {p0}, Lc8/NZo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->personalized_page_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    .line 160
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    invoke-virtual {p0, v8}, Lc8/NZo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0, v5, v5, v5, v5}, Lc8/NZo;->setPadding(IIII)V

    .line 164
    iget-object v0, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/NZo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lc8/NZo;->setGravity(I)V

    .line 167
    iget-object v0, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/phone/R$id;->progress_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/NZo;->mProgressCircle:Landroid/widget/ImageView;

    .line 169
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    .line 171
    iget-object v0, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    iget-object v0, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 173
    iget-object v0, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 174
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 175
    .local v7, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 177
    invoke-virtual {p0, v10, v10}, Lc8/NZo;->measure(II)V

    .line 178
    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 4
    .param p1, "destHeight"    # I

    .prologue
    .line 181
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 182
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    new-instance v1, Lc8/MZo;

    invoke-direct {v1, p0}, Lc8/MZo;-><init>(Lc8/NZo;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    return-void
.end method


# virtual methods
.method public getInitHeight()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getRefreshingHeight()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lc8/NZo;->mRefreshingHeight:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lc8/NZo;->mState:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return v1
.end method

.method public onMove(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 45
    iget v0, p0, Lc8/NZo;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 47
    :cond_0
    float-to-int v0, p1

    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/NZo;->setVisibleHeight(I)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lc8/NZo;->mRefreshingHeight:I

    if-lt v0, v1, :cond_2

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/NZo;->setState(I)V

    .line 53
    :cond_2
    return-void
.end method

.method public refreshComplete()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public refreshComplete(Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "info"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lc8/NZo;->setState(I)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/KZo;

    invoke-direct {v1, p0}, Lc8/KZo;-><init>(Lc8/NZo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void
.end method

.method public releaseAction()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "isOnRefresh":Z
    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v1

    .line 59
    .local v1, "height":I
    if-nez v1, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lc8/NZo;->getVisibleHeight()I

    move-result v3

    iget v4, p0, Lc8/NZo;->mRefreshingHeight:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lc8/NZo;->mState:I

    if-ge v3, v5, :cond_1

    .line 63
    invoke-virtual {p0, v5}, Lc8/NZo;->setState(I)V

    .line 64
    const/4 v2, 0x1

    .line 67
    :cond_1
    iget v3, p0, Lc8/NZo;->mState:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lc8/NZo;->mRefreshingHeight:I

    if-ge v1, v3, :cond_2

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lc8/NZo;->setState(I)V

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 72
    .local v0, "destHeight":I
    iget v3, p0, Lc8/NZo;->mState:I

    if-ne v3, v5, :cond_3

    .line 73
    iget v0, p0, Lc8/NZo;->mRefreshingHeight:I

    .line 75
    :cond_3
    invoke-direct {p0, v0}, Lc8/NZo;->smoothScrollTo(I)V

    .line 77
    return v2
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/NZo;->smoothScrollTo(I)V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/LZo;

    invoke-direct {v1, p0}, Lc8/LZo;-><init>(Lc8/NZo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/NZo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 124
    return-void
.end method

.method public setState(ILandroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 106
    iget v0, p0, Lc8/NZo;->mState:I

    if-ne p1, v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_1
    iput p1, p0, Lc8/NZo;->mState:I

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lc8/NZo;->mProgressCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    .line 113
    :pswitch_1
    iget-object v0, p0, Lc8/NZo;->mProgressCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/NZo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibleHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 133
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 134
    :cond_0
    iget-object v1, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    iget-object v1, p0, Lc8/NZo;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method
