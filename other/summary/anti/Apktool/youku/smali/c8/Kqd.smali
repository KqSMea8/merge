.class public Lc8/Kqd;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0}, Lc8/Kqd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 46
    .local v10, "padding":I
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 47
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lc8/Kqd;->addView(Landroid/view/View;)V

    .line 50
    sget-object v0, Lc8/Jqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    sget v7, Lcom/youku/phone/R$anim;->slide_in_from_top:I

    .line 60
    .local v7, "inAnimResId":I
    sget v9, Lcom/youku/phone/R$anim;->slide_out_to_top:I

    .line 61
    .local v9, "outAnimResId":I
    sget v0, Lcom/youku/phone/R$drawable;->indicator_bg_top:I

    invoke-virtual {p0, v0}, Lc8/Kqd;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    :goto_0
    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lc8/Kqd;->mInAnim:Landroid/view/animation/Animation;

    .line 67
    iget-object v0, p0, Lc8/Kqd;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    invoke-static {p1, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lc8/Kqd;->mOutAnim:Landroid/view/animation/Animation;

    .line 70
    iget-object v0, p0, Lc8/Kqd;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 72
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 73
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/Kqd;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 75
    iget-object v0, p0, Lc8/Kqd;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    iget-object v0, p0, Lc8/Kqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v0, p0, Lc8/Kqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 79
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/Kqd;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 81
    iget-object v0, p0, Lc8/Kqd;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    iget-object v0, p0, Lc8/Kqd;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    iget-object v0, p0, Lc8/Kqd;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 85
    return-void

    .line 52
    .end local v7    # "inAnimResId":I
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v9    # "outAnimResId":I
    :pswitch_0
    sget v7, Lcom/youku/phone/R$anim;->slide_in_from_bottom:I

    .line 53
    .restart local v7    # "inAnimResId":I
    sget v9, Lcom/youku/phone/R$anim;->slide_out_to_bottom:I

    .line 54
    .restart local v9    # "outAnimResId":I
    sget v0, Lcom/youku/phone/R$drawable;->indicator_bg_bottom:I

    invoke-virtual {p0, v0}, Lc8/Kqd;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Kqd;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lc8/Kqd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    return-void
.end method

.method public final isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lc8/Kqd;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    .local v0, "currentAnim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 90
    iget-object v3, p0, Lc8/Kqd;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lc8/Kqd;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/Kqd;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 109
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lc8/Kqd;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/Kqd;->clearAnimation()V

    .line 115
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lc8/Kqd;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Kqd;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Kqd;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Kqd;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Kqd;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/Kqd;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 102
    iget-object v0, p0, Lc8/Kqd;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lc8/Kqd;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    return-void
.end method
