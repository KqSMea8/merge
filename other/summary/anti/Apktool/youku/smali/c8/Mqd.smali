.class public Lc8/Mqd;
.super Landroid/widget/LinearLayout;
.source "LoadingLayout.java"


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x4b0


# instance fields
.field private final mHeaderImage:Landroid/widget/ImageView;

.field private final mHeaderImageMatrix:Landroid/graphics/Matrix;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field private final mRotateAnimation:Landroid/view/animation/Animation;

.field private mRotationPivotX:F

.field private mRotationPivotY:F

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinisicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lc8/Mqd;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lc8/Mqd;->setGravity(I)V

    .line 70
    invoke-virtual {p0}, Lc8/Mqd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->header_footer_top_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 71
    .local v9, "tbPadding":I
    invoke-virtual {p0}, Lc8/Mqd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->header_footer_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 72
    .local v8, "lrPadding":I
    invoke-virtual {p0, v8, v9, v8, v9}, Lc8/Mqd;->setPadding(IIII)V

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->pull_to_refresh_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget v0, Lcom/youku/phone/R$id;->pull_to_refresh_text:I

    invoke-virtual {p0, v0}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/youku/phone/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {p0, v0}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/youku/phone/R$id;->pull_to_refresh_image:I

    invoke-virtual {p0, v0}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 81
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 83
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lc8/Mqd;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    iget-object v0, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v0, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 88
    iget-object v0, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 91
    sget v0, Lcom/youku/phone/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    .line 92
    sget v0, Lcom/youku/phone/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mqd;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 93
    sget v0, Lcom/youku/phone/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mqd;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$drawable;->default_ptr_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 101
    :cond_0
    invoke-virtual {p0, v7}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p0}, Lc8/Mqd;->reset()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lc8/Mqd;->setGravity(I)V

    .line 114
    invoke-virtual {p0}, Lc8/Mqd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$dimen;->header_footer_top_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 115
    .local v14, "tbPadding":I
    invoke-virtual {p0}, Lc8/Mqd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$dimen;->header_footer_left_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 116
    .local v12, "lrPadding":I
    invoke-virtual {p0, v12, v14, v12, v14}, Lc8/Mqd;->setPadding(IIII)V

    .line 118
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$layout;->pull_to_refresh_header:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    sget v2, Lcom/youku/phone/R$id;->pull_to_refresh_text:I

    invoke-virtual {p0, v2}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    .line 120
    sget v2, Lcom/youku/phone/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {p0, v2}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    .line 121
    sget v2, Lcom/youku/phone/R$id;->pull_to_refresh_image:I

    invoke-virtual {p0, v2}, Lc8/Mqd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    .line 123
    iget-object v2, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 125
    iget-object v2, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 127
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x44340000    # 720.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v2, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 129
    iget-object v2, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v3, Lc8/Mqd;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    iget-object v2, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 131
    iget-object v2, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 132
    iget-object v2, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 134
    sget-object v2, Lc8/Lqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual/range {p2 .. p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 145
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_pull_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    .line 146
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_refreshing_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 147
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_release_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 151
    :goto_0
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 153
    .local v10, "colors":Landroid/content/res/ColorStateList;
    if-eqz v10, :cond_7

    .end local v10    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {p0, v10}, Lc8/Mqd;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    :cond_0
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 157
    .restart local v10    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v10, :cond_8

    .end local v10    # "colors":Landroid/content/res/ColorStateList;
    :goto_2
    invoke-virtual {p0, v10}, Lc8/Mqd;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    :cond_1
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 161
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_9

    .line 163
    invoke-virtual {p0, v9}, Lc8/Mqd;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_3
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 172
    .local v13, "styleID":Landroid/util/TypedValue;
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 173
    iget v2, v13, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v2}, Lc8/Mqd;->setTextAppearance(I)V

    .line 175
    .end local v13    # "styleID":Landroid/util/TypedValue;
    :cond_3
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .restart local v13    # "styleID":Landroid/util/TypedValue;
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 178
    iget v2, v13, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v2}, Lc8/Mqd;->setSubTextAppearance(I)V

    .line 182
    .end local v13    # "styleID":Landroid/util/TypedValue;
    :cond_4
    const/4 v11, 0x0

    .line 183
    .local v11, "imageDrawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrDrawable:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    sget v2, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrDrawable:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 188
    :cond_5
    if-nez v11, :cond_6

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->default_ptr_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 193
    :cond_6
    invoke-virtual {p0, v11}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0}, Lc8/Mqd;->reset()V

    .line 196
    return-void

    .line 137
    .end local v11    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_pull_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    .line 138
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_refreshing_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 139
    sget v2, Lcom/youku/phone/R$string;->pull_to_refresh_release_label:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Mqd;->mReleaseLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 153
    .restart local v10    # "colors":Landroid/content/res/ColorStateList;
    :cond_7
    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto/16 :goto_1

    .line 157
    :cond_8
    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto/16 :goto_2

    .line 165
    .end local v10    # "colors":Landroid/content/res/ColorStateList;
    .restart local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {p0, v9}, Lc8/Mqd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetImageRotation()V
    .locals 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lc8/Mqd;->mUseIntrinisicAnimation:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 306
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public onPullY(F)V
    .locals 4
    .param p1, "scaleOfHeight"    # F

    .prologue
    .line 297
    iget-boolean v0, p0, Lc8/Mqd;->mUseIntrinisicAnimation:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, p1

    iget v2, p0, Lc8/Mqd;->mRotationPivotX:F

    iget v3, p0, Lc8/Mqd;->mRotationPivotY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 299
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Mqd;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 301
    :cond_0
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public refreshing()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mqd;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-boolean v0, p0, Lc8/Mqd;->mUseIntrinisicAnimation:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 234
    :goto_0
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/Mqd;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mqd;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-boolean v0, p0, Lc8/Mqd;->mUseIntrinisicAnimation:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 208
    :goto_0
    invoke-direct {p0}, Lc8/Mqd;->resetImageRotation()V

    .line 210
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_1
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 273
    iget-object v0, p0, Lc8/Mqd;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lc8/Mqd;->mRotationPivotX:F

    .line 277
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lc8/Mqd;->mRotationPivotY:F

    .line 280
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lc8/Mqd;->mUseIntrinisicAnimation:Z

    .line 281
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iput-object p1, p0, Lc8/Mqd;->mPullLabel:Ljava/lang/CharSequence;

    .line 223
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 238
    iput-object p1, p0, Lc8/Mqd;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 239
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/Mqd;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 243
    return-void
.end method

.method public setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/Mqd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 269
    return-void
.end method

.method public setSubTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 284
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Mqd;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 285
    return-void
.end method

.method public setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 256
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/Mqd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 264
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/Mqd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 265
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 259
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Mqd;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 250
    iget-object v0, p0, Lc8/Mqd;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    iget-object v0, p0, Lc8/Mqd;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 252
    return-void
.end method
