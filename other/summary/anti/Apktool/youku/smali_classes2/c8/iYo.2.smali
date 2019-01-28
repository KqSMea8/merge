.class public Lc8/iYo;
.super Landroid/widget/LinearLayout;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Lc8/jYo;


# static fields
.field protected static final ROTATE_ANIM_DURATION:I = 0x190


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private context:Landroid/content/Context;

.field protected mArrowImageView:Landroid/widget/ImageView;

.field public mArrowRotateHeight:I

.field protected mBgImage:Lc8/DOf;

.field protected mBgImageUrl:Ljava/lang/String;

.field protected mContainer:Landroid/widget/FrameLayout;

.field protected mHintView:Landroid/widget/TextView;

.field public mInitHeight:I

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
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lc8/iYo;->mState:I

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iYo;->mBgImageUrl:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lc8/iYo;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lc8/iYo;->initView()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lc8/iYo;->mState:I

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/iYo;->mBgImageUrl:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lc8/iYo;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lc8/iYo;->initView()V

    .line 78
    return-void
.end method


# virtual methods
.method public getBgImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    return-object v0
.end method

.method public getInitHeight()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lc8/iYo;->mInitHeight:I

    return v0
.end method

.method public getRefreshingHeight()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lc8/iYo;->mRefreshingHeight:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lc8/iYo;->mState:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return v1
.end method

.method protected initView()V
    .locals 10

    .prologue
    .line 81
    invoke-virtual {p0}, Lc8/iYo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 82
    .local v7, "dm":Landroid/util/DisplayMetrics;
    const/4 v0, 0x0

    iput v0, p0, Lc8/iYo;->mInitHeight:I

    .line 83
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lc8/iYo;->mMaxPullDownDistance:I

    .line 85
    invoke-virtual {p0}, Lc8/iYo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->homepage_arrow_rotate_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lc8/iYo;->mInitHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/iYo;->mArrowRotateHeight:I

    .line 86
    invoke-virtual {p0}, Lc8/iYo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->homepage_refreshing_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lc8/iYo;->mInitHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/iYo;->mRefreshingHeight:I

    .line 90
    invoke-virtual {p0}, Lc8/iYo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->listview_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/youku/phone/R$id;->bg_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/DOf;

    iput-object v0, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    .line 94
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    invoke-virtual {p0, v9}, Lc8/iYo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/iYo;->setPadding(IIII)V

    .line 99
    iget-object v0, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lc8/iYo;->mInitHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/iYo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lc8/iYo;->setGravity(I)V

    .line 102
    sget v0, Lcom/youku/phone/R$id;->listview_header_title:I

    invoke-virtual {p0, v0}, Lc8/iYo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/youku/phone/R$id;->listview_header_arrow:I

    invoke-virtual {p0, v0}, Lc8/iYo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    .line 106
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/iYo;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 108
    iget-object v0, p0, Lc8/iYo;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lc8/iYo;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 110
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/iYo;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 112
    iget-object v0, p0, Lc8/iYo;->mRotateDownAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    iget-object v0, p0, Lc8/iYo;->mRotateDownAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 114
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/iYo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    .line 116
    iget-object v0, p0, Lc8/iYo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lc8/iYo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 118
    iget-object v0, p0, Lc8/iYo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 119
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 120
    .local v8, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/iYo;->mRotateCircleAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    const/4 v0, -0x2

    iget v1, p0, Lc8/iYo;->mInitHeight:I

    invoke-virtual {p0, v0, v1}, Lc8/iYo;->measure(II)V

    .line 123
    return-void
.end method

.method public onMove(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    const/4 v2, 0x1

    .line 275
    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lc8/iYo;->mInitHeight:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 276
    :cond_0
    float-to-int v0, p1

    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/iYo;->setVisibleHeight(I)V

    .line 277
    iget v0, p0, Lc8/iYo;->mState:I

    if-gt v0, v2, :cond_1

    .line 289
    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lc8/iYo;->mArrowRotateHeight:I

    if-le v0, v1, :cond_2

    .line 290
    invoke-virtual {p0, v2}, Lc8/iYo;->setState(I)V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/iYo;->setState(I)V

    goto :goto_0
.end method

.method public refreshComplete()V
    .locals 4

    .prologue
    .line 253
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lc8/iYo;->setState(I)V

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/fYo;

    invoke-direct {v1, p0}, Lc8/fYo;-><init>(Lc8/iYo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method public refreshComplete(Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "info"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 235
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lc8/iYo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/dYo;

    invoke-direct {v1, p0}, Lc8/dYo;-><init>(Lc8/iYo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/eYo;

    invoke-direct {v1, p0}, Lc8/eYo;-><init>(Lc8/iYo;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public releaseAction()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "isOnRefresh":Z
    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v1

    .line 303
    .local v1, "height":I
    iget v3, p0, Lc8/iYo;->mInitHeight:I

    if-ne v1, v3, :cond_0

    .line 304
    const/4 v2, 0x0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v3

    iget v4, p0, Lc8/iYo;->mArrowRotateHeight:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lc8/iYo;->mState:I

    if-ge v3, v5, :cond_1

    .line 307
    invoke-virtual {p0, v5}, Lc8/iYo;->setState(I)V

    .line 308
    const/4 v2, 0x1

    .line 314
    :cond_1
    iget v0, p0, Lc8/iYo;->mInitHeight:I

    .line 316
    .local v0, "destHeight":I
    iget v3, p0, Lc8/iYo;->mState:I

    if-ne v3, v5, :cond_2

    .line 317
    iget v0, p0, Lc8/iYo;->mRefreshingHeight:I

    .line 319
    :cond_2
    invoke-virtual {p0, v0}, Lc8/iYo;->smoothScrollTo(I)V

    .line 321
    return v2
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 325
    iget v0, p0, Lc8/iYo;->mInitHeight:I

    invoke-virtual {p0, v0}, Lc8/iYo;->smoothScrollTo(I)V

    .line 326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc8/gYo;

    invoke-direct {v1, p0}, Lc8/gYo;-><init>(Lc8/iYo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    return-void
.end method

.method public setBgImage()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iYo;->mBgImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    invoke-virtual {v2}, Lc8/DOf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v2, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    new-instance v3, Lc8/cYo;

    invoke-direct {v3, p0}, Lc8/cYo;-><init>(Lc8/iYo;)V

    invoke-virtual {v2, v3}, Lc8/DOf;->succListener(Lc8/qxf;)Lc8/tOf;

    .line 167
    iget-object v2, p0, Lc8/iYo;->mBgImage:Lc8/DOf;

    iget-object v3, p0, Lc8/iYo;->mBgImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/DOf;->setImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/iYo;->mBgImageUrl:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lc8/iYo;->setBgImage()V

    .line 133
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 348
    return-void
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/iYo;->setState(ILandroid/text/SpannableStringBuilder;)V

    .line 227
    return-void
.end method

.method public setState(ILandroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "extraInfo"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget v0, p0, Lc8/iYo;->mState:I

    if-ne p1, v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 183
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 222
    :cond_1
    :goto_1
    :pswitch_0
    iput p1, p0, Lc8/iYo;->mState:I

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->header_arrowdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget v0, p0, Lc8/iYo;->mState:I

    if-ne v0, v3, :cond_1

    .line 191
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/iYo;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 195
    :pswitch_2
    iget v0, p0, Lc8/iYo;->mState:I

    if-eq v0, v3, :cond_1

    .line 196
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 197
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/iYo;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 204
    :pswitch_3
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 205
    iget-object v0, p0, Lc8/iYo;->context:Landroid/content/Context;

    iget-object v1, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc8/Jbp;->show(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 206
    iget-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->refresh_header_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 211
    :pswitch_4
    iget-object v0, p0, Lc8/iYo;->context:Landroid/content/Context;

    iget-object v1, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc8/Jbp;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 212
    iget-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lc8/iYo;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    if-eqz p2, :cond_1

    .line 215
    iget-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lc8/iYo;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setVisibleHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 262
    iget v1, p0, Lc8/iYo;->mInitHeight:I

    if-ge p1, v1, :cond_0

    iget p1, p0, Lc8/iYo;->mInitHeight:I

    .line 263
    :cond_0
    iget-object v1, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 265
    iget-object v1, p0, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method

.method protected smoothScrollTo(I)V
    .locals 4
    .param p1, "destHeight"    # I

    .prologue
    .line 335
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc8/iYo;->getVisibleHeight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 336
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 338
    new-instance v1, Lc8/hYo;

    invoke-direct {v1, p0}, Lc8/hYo;-><init>(Lc8/iYo;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 345
    return-void
.end method
