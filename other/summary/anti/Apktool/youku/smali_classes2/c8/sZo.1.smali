.class public Lc8/sZo;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rZo;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_ALPHA_START:F = 0.7f

.field private static final DEFAULT_ANIM_DURATION:I = 0x12c

.field private static final MAX_COLLAPSED_LINES:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ExpandableTextView"


# instance fields
.field private mAnimAlphaStart:F

.field private mAnimating:Z

.field private mAnimationDuration:I

.field protected mButton:Landroid/widget/ImageButton;

.field private mCollapseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mCollapsedHeight:I

.field private mCollapsedStatus:Landroid/util/SparseBooleanArray;

.field private mExpandDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarginBetweenTxtAndBottom:I

.field private mMaxCollapsedLines:I

.field private mPosition:I

.field private mRelayout:Z

.field private mTextHeightWithMaxLines:I

.field protected mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    .line 92
    invoke-direct {p0, p2}, Lc8/sZo;->init(Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    .line 98
    invoke-direct {p0, p2}, Lc8/sZo;->init(Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lc8/sZo;)F
    .locals 1
    .param p0, "x0"    # Lc8/sZo;

    .prologue
    .line 42
    iget v0, p0, Lc8/sZo;->mAnimAlphaStart:F

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F

    .prologue
    .line 42
    invoke-static {p0, p1}, Lc8/sZo;->applyAlphaAnimation(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$202(Lc8/sZo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/sZo;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lc8/sZo;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lc8/sZo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/sZo;

    .prologue
    .line 42
    iget-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    return v0
.end method

.method static synthetic access$400(Lc8/sZo;)I
    .locals 1
    .param p0, "x0"    # Lc8/sZo;

    .prologue
    .line 42
    iget v0, p0, Lc8/sZo;->mMaxCollapsedLines:I

    return v0
.end method

.method static synthetic access$500(Lc8/sZo;)I
    .locals 1
    .param p0, "x0"    # Lc8/sZo;

    .prologue
    .line 42
    iget v0, p0, Lc8/sZo;->mMarginBetweenTxtAndBottom:I

    return v0
.end method

.method static synthetic access$502(Lc8/sZo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/sZo;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lc8/sZo;->mMarginBetweenTxtAndBottom:I

    return p1
.end method

.method static synthetic access$600(Lc8/sZo;)I
    .locals 1
    .param p0, "x0"    # Lc8/sZo;

    .prologue
    .line 42
    iget v0, p0, Lc8/sZo;->mAnimationDuration:I

    return v0
.end method

.method private static applyAlphaAnimation(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lc8/sZo;->isPostHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 276
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 278
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 261
    sget v0, Lcom/youku/phone/R$id;->expandable_text:I

    invoke-virtual {p0, v0}, Lc8/sZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget v0, Lcom/youku/phone/R$id;->expand_collapse:I

    invoke-virtual {p0, v0}, Lc8/sZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    .line 264
    iget-object v1, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sZo;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lc8/sZo;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static getRealTextViewHeight(Landroid/widget/TextView;)I
    .locals 4
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    .line 310
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 312
    .local v1, "textHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    .line 313
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 314
    .local v0, "padding":I
    add-int v2, v1, v0

    return v2
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    invoke-virtual {p0}, Lc8/sZo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/R$styleable;->ExpandableTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->ExpandableTextView_maxCollapsedLines:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/sZo;->mMaxCollapsedLines:I

    .line 233
    sget v1, Lcom/youku/phone/R$styleable;->ExpandableTextView_animDuration:I

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/sZo;->mAnimationDuration:I

    .line 236
    sget v1, Lcom/youku/phone/R$styleable;->ExpandableTextView_animAlphaStart:I

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lc8/sZo;->mAnimAlphaStart:F

    .line 239
    sget v1, Lcom/youku/phone/R$styleable;->ExpandableTextView_expandDrawable:I

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/sZo;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    sget v1, Lcom/youku/phone/R$styleable;->ExpandableTextView_collapseDrawable:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/sZo;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v1, p0, Lc8/sZo;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lc8/sZo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$drawable;->ic_expand_small_holo_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/sZo;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    :cond_0
    iget-object v1, p0, Lc8/sZo;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lc8/sZo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$drawable;->ic_collapse_small_holo_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/sZo;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    return-void
.end method

.method private static isPostHoneycomb()Z
    .locals 2

    .prologue
    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 304
    const-string/jumbo v0, ""

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 103
    iget-object v2, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-boolean v2, p0, Lc8/sZo;->mCollapsed:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lc8/sZo;->mCollapsed:Z

    .line 111
    iget-object v2, p0, Lc8/sZo;->mCollapsedStatus:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lc8/sZo;->mCollapsedStatus:Landroid/util/SparseBooleanArray;

    iget v5, p0, Lc8/sZo;->mPosition:I

    iget-boolean v6, p0, Lc8/sZo;->mCollapsed:Z

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 116
    :cond_1
    iput-boolean v3, p0, Lc8/sZo;->mAnimating:Z

    .line 120
    iget-boolean v2, p0, Lc8/sZo;->mCollapsed:Z

    if-eqz v2, :cond_3

    .line 121
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 123
    .local v0, "buttonAnimation":Landroid/view/animation/Animation;
    new-instance v12, Lc8/rZo;

    invoke-virtual {p0}, Lc8/sZo;->getHeight()I

    move-result v1

    iget v2, p0, Lc8/sZo;->mCollapsedHeight:I

    invoke-direct {v12, p0, p0, v1, v2}, Lc8/rZo;-><init>(Lc8/sZo;Landroid/view/View;II)V

    .line 132
    .local v12, "animation":Landroid/view/animation/Animation;
    :goto_2
    invoke-virtual {v12, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 133
    new-instance v1, Lc8/pZo;

    invoke-direct {v1, p0}, Lc8/pZo;-><init>(Lc8/sZo;)V

    invoke-virtual {v12, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    invoke-virtual {p0}, Lc8/sZo;->clearAnimation()V

    .line 157
    invoke-virtual {p0, v12}, Lc8/sZo;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 160
    iget-object v1, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 107
    .end local v0    # "buttonAnimation":Landroid/view/animation/Animation;
    .end local v12    # "animation":Landroid/view/animation/Animation;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 126
    :cond_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    move-object v5, v0

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 128
    .restart local v0    # "buttonAnimation":Landroid/view/animation/Animation;
    new-instance v12, Lc8/rZo;

    invoke-virtual {p0}, Lc8/sZo;->getHeight()I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lc8/sZo;->getHeight()I

    move-result v2

    iget v4, p0, Lc8/sZo;->mTextHeightWithMaxLines:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-direct {v12, p0, p0, v1, v2}, Lc8/rZo;-><init>(Lc8/sZo;Landroid/view/View;II)V

    .restart local v12    # "animation":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lc8/sZo;->findViews()V

    .line 174
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    iget-boolean v0, p0, Lc8/sZo;->mAnimating:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 179
    iget-boolean v0, p0, Lc8/sZo;->mRelayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/sZo;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 180
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iput-boolean v2, p0, Lc8/sZo;->mRelayout:Z

    .line 187
    iget-object v0, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 192
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 195
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lc8/sZo;->mMaxCollapsedLines:I

    if-le v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-static {v0}, Lc8/sZo;->getRealTextViewHeight(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lc8/sZo;->mTextHeightWithMaxLines:I

    .line 204
    iget-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    iget v1, p0, Lc8/sZo;->mMaxCollapsedLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 206
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    :cond_3
    iget-object v0, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 213
    iget-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    new-instance v1, Lc8/qZo;

    invoke-direct {v1, p0}, Lc8/qZo;-><init>(Lc8/sZo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 223
    invoke-virtual {p0}, Lc8/sZo;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lc8/sZo;->mCollapsedHeight:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sZo;->mRelayout:Z

    .line 284
    iget-object v0, p0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lc8/sZo;->setVisibility(I)V

    .line 286
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "collapsedStatus"    # Landroid/util/SparseBooleanArray;
    .param p3, "position"    # I

    .prologue
    .line 290
    iput-object p2, p0, Lc8/sZo;->mCollapsedStatus:Landroid/util/SparseBooleanArray;

    .line 291
    iput p3, p0, Lc8/sZo;->mPosition:I

    .line 292
    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 293
    .local v0, "isCollapsed":Z
    invoke-virtual {p0}, Lc8/sZo;->clearAnimation()V

    .line 294
    iput-boolean v0, p0, Lc8/sZo;->mCollapsed:Z

    .line 295
    iget-object v2, p0, Lc8/sZo;->mButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lc8/sZo;->mCollapsed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/sZo;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {p0, p1}, Lc8/sZo;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p0}, Lc8/sZo;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    invoke-virtual {p0}, Lc8/sZo;->requestLayout()V

    .line 300
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lc8/sZo;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
