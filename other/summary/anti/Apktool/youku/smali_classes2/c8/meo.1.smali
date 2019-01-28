.class public Lc8/meo;
.super Lc8/bap;
.source "LoadingMoreFooterForYouku.java"


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0x190

.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_NOMORE:I = 0x2


# instance fields
.field protected context:Landroid/content/Context;

.field private mProgress:Landroid/view/View;

.field private mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

.field private mText:Landroid/widget/TextView;

.field private noMoreHintStay:Z

.field private progressCon:Lc8/Cap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/meo;->noMoreHintStay:Z

    .line 37
    iput-object p1, p0, Lc8/meo;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lc8/bap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/meo;->noMoreHintStay:Z

    .line 46
    iput-object p1, p0, Lc8/meo;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lc8/meo;->initView()V

    .line 48
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lc8/bap;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public initView()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 52
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lc8/meo;->setGravity(I)V

    .line 53
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    invoke-virtual {p0}, Lc8/meo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->baseuikit_card_item_box_title_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {p0, v0}, Lc8/meo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Lc8/Cap;

    invoke-virtual {p0}, Lc8/meo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Cap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    .line 56
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v7, "imLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/meo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->baseuikit_text_and_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v7, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v7}, Lc8/Cap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    invoke-virtual {p0, v0}, Lc8/meo;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/meo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/meo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->baseuikit_card_item_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lc8/meo;->addView(Landroid/view/View;)V

    .line 71
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    .line 73
    iget-object v0, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 74
    iget-object v0, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 75
    iget-object v0, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 76
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 77
    .local v9, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    return-void
.end method

.method public isNoMoreHintStay()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lc8/meo;->noMoreHintStay:Z

    return v0
.end method

.method public setLoadingNone(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setLoadingStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setNoMoreHintStay(Z)V
    .locals 0
    .param p1, "noMoreHintStay"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lc8/meo;->noMoreHintStay:Z

    .line 153
    return-void
.end method

.method public setProgressStyle()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/meo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    iget-object v1, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Cap;->setView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->header_refresh_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    iget-object v1, p0, Lc8/meo;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 100
    iget-object v1, p0, Lc8/meo;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Vdo;->show(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 101
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v2}, Lc8/Cap;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->base_uikit_listview_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-virtual {p0, v2}, Lc8/meo;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/meo;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v1, p0, Lc8/meo;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Vdo;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->base_uikit_listview_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, v3}, Lc8/meo;->setVisibility(I)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-boolean v0, p0, Lc8/meo;->noMoreHintStay:Z

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6ca1\u6709\u66f4\u591a\u5566"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 124
    iget-object v1, p0, Lc8/meo;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Vdo;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 125
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->baseuikit_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v3}, Lc8/Cap;->setVisibility(I)V

    .line 129
    :cond_1
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#d4d4d4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    invoke-virtual {p0, v2}, Lc8/meo;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 134
    iget-object v1, p0, Lc8/meo;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Vdo;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 135
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->baseuikit_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lc8/meo;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lc8/meo;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v3}, Lc8/Cap;->setVisibility(I)V

    .line 139
    :cond_3
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#d4d4d4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lc8/meo;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6ca1\u6709\u66f4\u591a\u5566"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0, v2}, Lc8/meo;->setVisibility(I)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
