.class public Lc8/jeo;
.super Landroid/widget/LinearLayout;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Lc8/keo;


# static fields
.field protected static final ROTATE_ANIM_DURATION:I = 0x190


# instance fields
.field private context:Landroid/content/Context;

.field protected mArrowImageView:Landroid/widget/ImageView;

.field public mArrowRotateHeight:I

.field protected mBgImage:Landroid/widget/ImageView;

.field protected mBgImageUrl:Ljava/lang/String;

.field protected mContainer:Landroid/widget/FrameLayout;

.field protected mHintView:Landroid/widget/TextView;

.field public mMaxPullDownDistance:I

.field public mRefreshingHeight:I

.field protected mRotateCircleAnim:Landroid/view/animation/Animation;

.field protected mRotateDownAnim:Landroid/view/animation/Animation;

.field protected mRotateUpAnim:Landroid/view/animation/Animation;

.field protected mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lc8/jeo;->mState:I

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jeo;->mBgImageUrl:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lc8/jeo;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lc8/jeo;->initView()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lc8/jeo;->mState:I

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jeo;->mBgImageUrl:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lc8/jeo;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lc8/jeo;->initView()V

    .line 73
    return-void
.end method


# virtual methods
.method public getBgImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc8/jeo;->mBgImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRefreshingHeight()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lc8/jeo;->mRefreshingHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lc8/jeo;->mState:I

    return v0
.end method

.method public getVisibleHeight()F
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    return v1
.end method

.method protected initView()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v14, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Lc8/jeo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/youku/phone/R$dimen;->baseuikit_max_pull_down_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/jeo;->mMaxPullDownDistance:I

    .line 78
    invoke-virtual {p0}, Lc8/jeo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/youku/phone/R$dimen;->baseuikit_arrow_rotate_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/jeo;->mArrowRotateHeight:I

    .line 79
    invoke-virtual {p0}, Lc8/jeo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/youku/phone/R$dimen;->baseuikit_refreshing_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lc8/jeo;->mRefreshingHeight:I

    .line 82
    invoke-virtual {p0}, Lc8/jeo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/youku/phone/R$layout;->baseuikit_listview_header:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/youku/phone/R$id;->bg_image:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/jeo;->mBgImage:Landroid/widget/ImageView;

    .line 86
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v13, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    invoke-virtual {p0, v13}, Lc8/jeo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p0, v6, v6, v6, v6}, Lc8/jeo;->setPadding(IIII)V

    .line 91
    iget-object v0, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lc8/jeo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lc8/jeo;->setGravity(I)V

    .line 94
    sget v0, Lcom/youku/phone/R$id;->listview_header_title:I

    invoke-virtual {p0, v0}, Lc8/jeo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/jeo;->mHintView:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/youku/phone/R$id;->listview_header_arrow:I

    invoke-virtual {p0, v0}, Lc8/jeo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    .line 97
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3ccc0000    # -180.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/jeo;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 99
    iget-object v0, p0, Lc8/jeo;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lc8/jeo;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 101
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/high16 v6, -0x3ccc0000    # -180.0f

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lc8/jeo;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 103
    iget-object v0, p0, Lc8/jeo;->mRotateDownAnim:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    iget-object v0, p0, Lc8/jeo;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 105
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/jeo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    .line 107
    iget-object v0, p0, Lc8/jeo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    iget-object v0, p0, Lc8/jeo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 109
    iget-object v0, p0, Lc8/jeo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 110
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 111
    .local v12, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/jeo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lc8/jeo;->measure(II)V

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 341
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 327
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 329
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 335
    return-void
.end method

.method public onMove(FF)V
    .locals 3
    .param p1, "delta"    # F
    .param p2, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 245
    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/jeo;->setVisibleHeight(F)V

    .line 246
    iget v0, p0, Lc8/jeo;->mState:I

    if-gt v0, v2, :cond_1

    .line 258
    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v0

    iget v1, p0, Lc8/jeo;->mArrowRotateHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 259
    invoke-virtual {p0, v2}, Lc8/jeo;->setState(I)V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/jeo;->setState(I)V

    goto :goto_0
.end method

.method public refreshComplete()V
    .locals 4

    .prologue
    .line 219
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lc8/jeo;->setState(I)V

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/geo;

    invoke-direct {v1, p0}, Lc8/geo;-><init>(Lc8/jeo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void
.end method

.method public refreshComplete(Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "info"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lc8/jeo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/eeo;

    invoke-direct {v1, p0}, Lc8/eeo;-><init>(Lc8/jeo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/feo;

    invoke-direct {v1, p0}, Lc8/feo;-><init>(Lc8/jeo;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public releaseAction()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "isOnRefresh":Z
    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v3

    float-to-int v1, v3

    .line 272
    .local v1, "height":I
    if-nez v1, :cond_0

    .line 273
    const/4 v2, 0x0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v3

    iget v4, p0, Lc8/jeo;->mArrowRotateHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget v3, p0, Lc8/jeo;->mState:I

    if-ge v3, v5, :cond_1

    .line 276
    invoke-virtual {p0, v5}, Lc8/jeo;->setState(I)V

    .line 277
    const/4 v2, 0x1

    .line 283
    :cond_1
    const/4 v0, 0x0

    .line 285
    .local v0, "destHeight":I
    iget v3, p0, Lc8/jeo;->mState:I

    if-ne v3, v5, :cond_2

    .line 286
    iget v0, p0, Lc8/jeo;->mRefreshingHeight:I

    .line 288
    :cond_2
    invoke-virtual {p0, v0}, Lc8/jeo;->smoothScrollTo(I)V

    .line 290
    return v2
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/jeo;->smoothScrollTo(I)V

    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/heo;

    invoke-direct {v1, p0}, Lc8/heo;-><init>(Lc8/jeo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    return-void
.end method

.method public setBgImage()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lc8/jeo;->mBgImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/jeo;->mBgImageUrl:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lc8/jeo;->mBgImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    const-string/jumbo v2, "Home"

    const-string/jumbo v3, "homeRefreshBgImage start load"

    invoke-static {v2, v3}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lc8/jeo;->mBgImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lc8/jeo;->mBgImage:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lc8/rbo;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Home"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "Home"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "homeRefreshBgImage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lc8/jeo;->mBgImageUrl:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lc8/jeo;->setBgImage()V

    .line 124
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 318
    return-void
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/jeo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 190
    return-void
.end method

.method public setState(ILandroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "extraInfo"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget v0, p0, Lc8/jeo;->mState:I

    if-ne p1, v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 149
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 185
    :cond_1
    :goto_1
    iput p1, p0, Lc8/jeo;->mState:I

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lc8/jeo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lc8/jeo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_2
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->baseuikit_refresh_header_arrowdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget v0, p0, Lc8/jeo;->mState:I

    if-ne v0, v3, :cond_1

    .line 157
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/jeo;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 161
    :pswitch_1
    iget v0, p0, Lc8/jeo;->mState:I

    if-eq v0, v3, :cond_1

    .line 162
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 163
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/jeo;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 170
    :pswitch_2
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 171
    iget-object v0, p0, Lc8/jeo;->context:Landroid/content/Context;

    iget-object v1, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc8/Vdo;->show(Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 175
    :pswitch_3
    iget-object v0, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lc8/jeo;->context:Landroid/content/Context;

    iget-object v1, p0, Lc8/jeo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc8/Vdo;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 177
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lc8/jeo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lc8/jeo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setVisibleHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 230
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 231
    :cond_0
    iget-object v1, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 233
    iget-object v1, p0, Lc8/jeo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void
.end method

.method protected smoothScrollTo(I)V
    .locals 4
    .param p1, "destHeight"    # I

    .prologue
    .line 305
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc8/jeo;->getVisibleHeight()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 306
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 308
    new-instance v1, Lc8/ieo;

    invoke-direct {v1, p0}, Lc8/ieo;-><init>(Lc8/jeo;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 315
    return-void
.end method
