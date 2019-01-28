.class public Lc8/bap;
.super Landroid/widget/LinearLayout;
.source "LoadingMoreFooter.java"


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0x190

.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_NOMORE:I = 0x2


# instance fields
.field protected context:Landroid/content/Context;

.field private hasBottomPadding:Z

.field private mProgress:Landroid/view/View;

.field private mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

.field protected mText:Landroid/widget/TextView;

.field private noMoreHintStay:Z

.field protected progressCon:Lc8/Cap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lc8/bap;->noMoreHintStay:Z

    .line 33
    iput-boolean v0, p0, Lc8/bap;->hasBottomPadding:Z

    .line 37
    iput-object p1, p0, Lc8/bap;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lc8/bap;->initView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lc8/bap;->noMoreHintStay:Z

    .line 33
    iput-boolean v0, p0, Lc8/bap;->hasBottomPadding:Z

    .line 54
    iput-object p1, p0, Lc8/bap;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lc8/bap;->initView()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasBottomPadding1"    # Z

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lc8/bap;->noMoreHintStay:Z

    .line 33
    iput-boolean v0, p0, Lc8/bap;->hasBottomPadding:Z

    .line 43
    iput-object p1, p0, Lc8/bap;->context:Landroid/content/Context;

    .line 44
    iput-boolean p2, p0, Lc8/bap;->hasBottomPadding:Z

    .line 45
    invoke-virtual {p0}, Lc8/bap;->initView()V

    .line 46
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v11, -0x1

    const/4 v6, -0x2

    const/4 v0, 0x0

    .line 58
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lc8/bap;->setGravity(I)V

    .line 59
    iget-boolean v1, p0, Lc8/bap;->hasBottomPadding:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/bap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->skin_tab_page_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 60
    .local v7, "bottomPadding":I
    :goto_0
    invoke-virtual {p0}, Lc8/bap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->home_card_item_box_title_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 61
    .local v8, "height":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    add-int v2, v8, v7

    invoke-direct {v1, v11, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lc8/bap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, v0, v0, v0, v7}, Lc8/bap;->setPadding(IIII)V

    .line 64
    const-string/jumbo v1, "#fff0f0f0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/bap;->setBackgroundColor(I)V

    .line 66
    new-instance v1, Lc8/Cap;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Cap;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/bap;->progressCon:Lc8/Cap;

    .line 67
    iget-object v1, p0, Lc8/bap;->progressCon:Lc8/Cap;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lc8/Cap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lc8/bap;->progressCon:Lc8/Cap;

    invoke-virtual {p0, v1}, Lc8/bap;->addView(Landroid/view/View;)V

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    sget v2, Lcom/youku/phone/R$string;->listview_loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v1, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/youku/phone/R$dimen;->home_card_item_text_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/bap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->textandiconmargin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v9, v1, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lc8/bap;->addView(Landroid/view/View;)V

    .line 81
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/bap;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    .line 83
    iget-object v0, p0, Lc8/bap;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 84
    iget-object v0, p0, Lc8/bap;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Lc8/bap;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 86
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 87
    .local v10, "lir":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lc8/bap;->mRotateCircleAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v10}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    return-void

    .end local v7    # "bottomPadding":I
    .end local v8    # "height":I
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "lir":Landroid/view/animation/LinearInterpolator;
    :cond_0
    move v7, v0

    .line 59
    goto/16 :goto_0
.end method

.method public isNoMoreHintStay()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lc8/bap;->noMoreHintStay:Z

    return v0
.end method

.method public setNoMoreHintStay(Z)V
    .locals 0
    .param p1, "noMoreHintStay"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lc8/bap;->noMoreHintStay:Z

    .line 156
    return-void
.end method

.method public setProgressStyle()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lc8/bap;->progressCon:Lc8/Cap;

    iget-object v1, p0, Lc8/bap;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Cap;->setView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lc8/bap;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Jbp;->show(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lc8/bap;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v3}, Lc8/Cap;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->listview_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {p0, v3}, Lc8/bap;->setVisibility(I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lc8/bap;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Jbp;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->listview_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-virtual {p0, v4}, Lc8/bap;->setVisibility(I)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-boolean v0, p0, Lc8/bap;->noMoreHintStay:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->nomore_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 130
    iget-object v1, p0, Lc8/bap;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Jbp;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 131
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->personalized_no_more:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#d4d4d4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lc8/bap;->progressCon:Lc8/Cap;

    invoke-virtual {v0, v3}, Lc8/Cap;->setVisibility(I)V

    .line 136
    invoke-virtual {p0, v3}, Lc8/bap;->setVisibility(I)V

    goto/16 :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/bap;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->nomore_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 142
    iget-object v1, p0, Lc8/bap;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lc8/Jbp;->dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 143
    iget-object v0, p0, Lc8/bap;->mProgress:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/youku/phone/R$drawable;->personalized_no_more:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :cond_4
    iget-object v0, p0, Lc8/bap;->mText:Landroid/widget/TextView;

    const-string/jumbo v1, "#d4d4d4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {p0, v4}, Lc8/bap;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
