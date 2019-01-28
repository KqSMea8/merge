.class public Lc8/od;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nd;,
        Lc8/md;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field final mCollapsingTextHelper:Lc8/jd;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Lc8/rc;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Lc8/ef;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Lc8/kx;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/od;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/od;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean v6, p0, Lc8/od;->mRefreshToolbar:Z

    .line 119
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    .line 130
    iput v5, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    .line 149
    invoke-static {p1}, Lc8/Ue;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 151
    new-instance v1, Lc8/jd;

    invoke-direct {v1, p0}, Lc8/jd;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    .line 152
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget-object v2, Lc8/jc;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lc8/jd;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 154
    sget-object v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout:[I

    sget v2, Lcom/youku/phone/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    .line 159
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 158
    invoke-virtual {v1, v2}, Lc8/jd;->setExpandedTextGravity(I)V

    .line 161
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Lc8/jd;->setCollapsedTextGravity(I)V

    .line 165
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 166
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mExpandedMarginBottom:I

    iput v1, p0, Lc8/od;->mExpandedMarginEnd:I

    iput v1, p0, Lc8/od;->mExpandedMarginTop:I

    iput v1, p0, Lc8/od;->mExpandedMarginStart:I

    .line 168
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mExpandedMarginStart:I

    .line 172
    :cond_0
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mExpandedMarginEnd:I

    .line 176
    :cond_1
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mExpandedMarginTop:I

    .line 180
    :cond_2
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mExpandedMarginBottom:I

    .line 185
    :cond_3
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    .line 187
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/od;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v1, v2}, Lc8/jd;->setExpandedTextAppearance(I)V

    .line 192
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v1, v2}, Lc8/jd;->setCollapsedTextAppearance(I)V

    .line 196
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 198
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Lc8/jd;->setExpandedTextAppearance(I)V

    .line 201
    :cond_4
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    iget-object v1, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    sget v2, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 203
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Lc8/jd;->setCollapsedTextAppearance(I)V

    .line 207
    :cond_5
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    .line 210
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lc8/od;->mScrimAnimationDuration:J

    .line 214
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/od;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 215
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/od;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 217
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc8/od;->mToolbarId:I

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-virtual {p0, v4}, Lc8/od;->setWillNotDraw(Z)V

    .line 223
    new-instance v1, Lc8/kd;

    invoke-direct {v1, p0}, Lc8/kd;-><init>(Lc8/od;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 231
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .prologue
    .line 596
    invoke-direct {p0}, Lc8/od;->ensureToolbar()V

    .line 597
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    if-nez v0, :cond_2

    .line 598
    invoke-static {}, Lc8/sf;->createAnimator()Lc8/ef;

    move-result-object v0

    iput-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    .line 599
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    iget-wide v2, p0, Lc8/od;->mScrimAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Lc8/ef;->setDuration(J)V

    .line 600
    iget-object v1, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    iget v0, p0, Lc8/od;->mScrimAlpha:I

    if-le p1, v0, :cond_1

    sget-object v0, Lc8/jc;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Lc8/ef;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 604
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    new-instance v1, Lc8/ld;

    invoke-direct {v1, p0}, Lc8/ld;-><init>(Lc8/od;)V

    invoke-virtual {v0, v1}, Lc8/ef;->addUpdateListener(Lc8/Ze;)V

    .line 614
    :cond_0
    :goto_1
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    iget v1, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v0, v1, p1}, Lc8/ef;->setIntValues(II)V

    .line 615
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->start()V

    .line 616
    return-void

    .line 600
    :cond_1
    sget-object v0, Lc8/jc;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lc8/od;->mScrimAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 335
    iget-boolean v4, p0, Lc8/od;->mRefreshToolbar:Z

    if-nez v4, :cond_0

    .line 367
    :goto_0
    return-void

    .line 340
    :cond_0
    iput-object v5, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 341
    iput-object v5, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    .line 343
    iget v4, p0, Lc8/od;->mToolbarId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 345
    iget v4, p0, Lc8/od;->mToolbarId:I

    invoke-virtual {p0, v4}, Lc8/od;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/kx;

    iput-object v4, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 346
    iget-object v4, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-eqz v4, :cond_1

    .line 347
    iget-object v4, p0, Lc8/od;->mToolbar:Lc8/kx;

    invoke-direct {p0, v4}, Lc8/od;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    .line 351
    :cond_1
    iget-object v4, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-nez v4, :cond_3

    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, "toolbar":Lc8/kx;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lc8/od;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 356
    invoke-virtual {p0, v2}, Lc8/od;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lc8/kx;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 358
    check-cast v3, Lc8/kx;

    .line 362
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iput-object v3, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 365
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "toolbar":Lc8/kx;
    :cond_3
    invoke-direct {p0}, Lc8/od;->updateDummyView()V

    .line 366
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/od;->mRefreshToolbar:Z

    goto :goto_0

    .line 355
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "toolbar":Lc8/kx;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 380
    move-object v0, p1

    .line 381
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 382
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 383
    check-cast v0, Landroid/view/View;

    .line 381
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 386
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 492
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 493
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 494
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 496
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lc8/qf;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 500
    sget v1, Lcom/youku/phone/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qf;

    .line 501
    .local v0, "offsetHelper":Lc8/qf;
    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lc8/qf;

    .end local v0    # "offsetHelper":Lc8/qf;
    invoke-direct {v0, p0}, Lc8/qf;-><init>(Landroid/view/View;)V

    .line 503
    .restart local v0    # "offsetHelper":Lc8/qf;
    sget v1, Lcom/youku/phone/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 505
    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    iget-object v2, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-ne v2, p0, :cond_3

    :cond_0
    iget-object v2, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private updateDummyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 390
    iget-boolean v1, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 393
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 394
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 397
    :cond_0
    iget-boolean v1, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 399
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lc8/od;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    .line 401
    :cond_1
    iget-object v1, p0, Lc8/od;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 402
    iget-object v1, p0, Lc8/od;->mToolbar:Lc8/kx;

    iget-object v2, p0, Lc8/od;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Lc8/kx;->addView(Landroid/view/View;II)V

    .line 405
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1105
    instance-of v0, p1, Lc8/md;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 289
    invoke-direct {p0}, Lc8/od;->ensureToolbar()V

    .line 290
    iget-object v2, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lc8/od;->mScrimAlpha:I

    if-lez v2, :cond_0

    .line 291
    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 292
    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    :cond_0
    iget-boolean v2, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lc8/od;->mDrawCollapsingTitle:Z

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v2, p1}, Lc8/jd;->draw(Landroid/graphics/Canvas;)V

    .line 301
    :cond_1
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Lc8/od;->mScrimAlpha:I

    if-lez v2, :cond_2

    .line 302
    iget-object v2, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 303
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_2

    .line 304
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lc8/od;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Lc8/od;->getWidth()I

    move-result v4

    iget v5, p0, Lc8/od;->mCurrentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget-object v1, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 307
    iget-object v1, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    .end local v0    # "topInset":I
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "invalidated":Z
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/od;->mScrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Lc8/od;->isToolbarChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    const/4 v0, 0x1

    .line 323
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 726
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 728
    invoke-virtual {p0}, Lc8/od;->getDrawableState()[I

    move-result-object v2

    .line 729
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 731
    .local v0, "changed":Z
    iget-object v1, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 732
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 735
    :cond_0
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 736
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 739
    :cond_1
    iget-object v3, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    if-eqz v3, :cond_2

    .line 740
    iget-object v3, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v3, v2}, Lc8/jd;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 743
    :cond_2
    if-eqz v0, :cond_3

    .line 744
    invoke-virtual {p0}, Lc8/od;->invalidate()V

    .line 746
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lc8/od;->generateDefaultLayoutParams()Lc8/md;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lc8/od;->generateDefaultLayoutParams()Lc8/md;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lc8/md;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1110
    new-instance v0, Lc8/md;

    invoke-direct {v0, v1, v1}, Lc8/md;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lc8/od;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lc8/od;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1115
    new-instance v0, Lc8/md;

    invoke-virtual {p0}, Lc8/od;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/md;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1120
    new-instance v0, Lc8/md;

    invoke-direct {v0, p1}, Lc8/md;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0}, Lc8/jd;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0}, Lc8/jd;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0}, Lc8/jd;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lc8/od;->mExpandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lc8/od;->mExpandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lc8/od;->mExpandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lc8/od;->mExpandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0}, Lc8/jd;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1249
    invoke-static {p1}, Lc8/od;->getViewOffsetHelper(Landroid/view/View;)Lc8/qf;

    move-result-object v1

    .line 1250
    .local v1, "offsetHelper":Lc8/qf;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/md;

    .line 1251
    .local v0, "lp":Lc8/md;
    invoke-virtual {p0}, Lc8/od;->getHeight()I

    move-result v2

    .line 1252
    invoke-virtual {v1}, Lc8/qf;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lc8/md;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lc8/od;->mScrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .prologue
    .line 1100
    iget-wide v0, p0, Lc8/od;->mScrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .prologue
    .line 1066
    iget v2, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    if-ltz v2, :cond_0

    .line 1068
    iget v2, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    .line 1082
    :goto_0
    return v2

    .line 1072
    :cond_0
    iget-object v2, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 1074
    .local v0, "insetTop":I
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 1075
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1077
    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lc8/od;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1072
    .end local v0    # "insetTop":I
    .end local v1    # "minHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1082
    .restart local v0    # "insetTop":I
    .restart local v1    # "minHeight":I
    :cond_2
    invoke-virtual {p0}, Lc8/od;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 528
    iget-boolean v0, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0}, Lc8/jd;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 238
    invoke-virtual {p0}, Lc8/od;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 239
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lc8/tc;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 241
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 243
    iget-object v1, p0, Lc8/od;->mOnOffsetChangedListener:Lc8/rc;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lc8/nd;

    invoke-direct {v1, p0}, Lc8/nd;-><init>(Lc8/od;)V

    iput-object v1, p0, Lc8/od;->mOnOffsetChangedListener:Lc8/rc;

    .line 246
    :cond_0
    check-cast v0, Lc8/tc;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/od;->mOnOffsetChangedListener:Lc8/rc;

    invoke-virtual {v0, v1}, Lc8/tc;->addOnOffsetChangedListener(Lc8/rc;)V

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lc8/od;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 257
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/od;->mOnOffsetChangedListener:Lc8/rc;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lc8/tc;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lc8/tc;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/od;->mOnOffsetChangedListener:Lc8/rc;

    invoke-virtual {v0, v1}, Lc8/tc;->removeOnOffsetChangedListener(Lc8/rc;)V

    .line 261
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 262
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 415
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 417
    iget-object v6, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_1

    .line 419
    iget-object v6, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 420
    .local v2, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lc8/od;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 421
    invoke-virtual {p0, v1}, Lc8/od;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 426
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "insetTop":I
    .end local v5    # "z":I
    :cond_1
    iget-boolean v6, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/od;->mDummyView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 436
    iget-object v6, p0, Lc8/od;->mDummyView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lc8/od;->mDummyView:Landroid/view/View;

    .line 437
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lc8/od;->mDrawCollapsingTitle:Z

    .line 439
    iget-boolean v6, p0, Lc8/od;->mDrawCollapsingTitle:Z

    if-eqz v6, :cond_2

    .line 440
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v3, 0x1

    .line 444
    .local v3, "isRtl":Z
    :goto_2
    iget-object v6, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    :goto_3
    invoke-virtual {p0, v6}, Lc8/od;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    .line 446
    .local v4, "maxOffset":I
    iget-object v6, p0, Lc8/od;->mDummyView:Landroid/view/View;

    iget-object v7, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v6, v7}, Lc8/nf;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 447
    iget-object v7, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    iget-object v6, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_6

    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 449
    invoke-virtual {v6}, Lc8/kx;->getTitleMarginEnd()I

    move-result v6

    .line 450
    :goto_4
    add-int/2addr v8, v6

    iget-object v6, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget-object v9, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 451
    invoke-virtual {v9}, Lc8/kx;->getTitleMarginTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_7

    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 453
    invoke-virtual {v6}, Lc8/kx;->getTitleMarginStart()I

    move-result v6

    .line 454
    :goto_5
    add-int/2addr v6, v10

    iget-object v10, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    iget-object v11, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 455
    invoke-virtual {v11}, Lc8/kx;->getTitleMarginBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 447
    invoke-virtual {v7, v8, v9, v6, v10}, Lc8/jd;->setCollapsedBounds(IIII)V

    .line 458
    iget-object v8, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    if-eqz v3, :cond_8

    iget v6, p0, Lc8/od;->mExpandedMarginEnd:I

    :goto_6
    iget-object v7, p0, Lc8/od;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lc8/od;->mExpandedMarginTop:I

    add-int/2addr v9, v7

    sub-int v10, p4, p2

    if-eqz v3, :cond_9

    iget v7, p0, Lc8/od;->mExpandedMarginStart:I

    :goto_7
    sub-int v7, v10, v7

    sub-int v10, p5, p3

    iget v11, p0, Lc8/od;->mExpandedMarginBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v6, v9, v7, v10}, Lc8/jd;->setExpandedBounds(IIII)V

    .line 464
    iget-object v6, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v6}, Lc8/jd;->recalculate()V

    .line 470
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lc8/od;->getChildCount()I

    move-result v5

    .restart local v5    # "z":I
    :goto_8
    if-ge v1, v5, :cond_a

    .line 471
    invoke-virtual {p0, v1}, Lc8/od;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lc8/od;->getViewOffsetHelper(Landroid/view/View;)Lc8/qf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/qf;->onViewLayout()V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 437
    .end local v1    # "i":I
    .end local v5    # "z":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 440
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 444
    .restart local v3    # "isRtl":Z
    :cond_5
    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    goto/16 :goto_3

    .line 449
    .restart local v4    # "maxOffset":I
    :cond_6
    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 450
    invoke-virtual {v6}, Lc8/kx;->getTitleMarginStart()I

    move-result v6

    goto :goto_4

    .line 453
    :cond_7
    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    .line 454
    invoke-virtual {v6}, Lc8/kx;->getTitleMarginEnd()I

    move-result v6

    goto :goto_5

    .line 458
    :cond_8
    iget v6, p0, Lc8/od;->mExpandedMarginStart:I

    goto :goto_6

    :cond_9
    iget v7, p0, Lc8/od;->mExpandedMarginEnd:I

    goto :goto_7

    .line 475
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    .restart local v1    # "i":I
    .restart local v5    # "z":I
    :cond_a
    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-eqz v6, :cond_d

    .line 476
    iget-boolean v6, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v6}, Lc8/jd;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 478
    iget-object v6, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    iget-object v7, p0, Lc8/od;->mToolbar:Lc8/kx;

    invoke-virtual {v7}, Lc8/kx;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/jd;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_b
    iget-object v6, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    if-ne v6, p0, :cond_e

    .line 481
    :cond_c
    iget-object v6, p0, Lc8/od;->mToolbar:Lc8/kx;

    invoke-static {v6}, Lc8/od;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Lc8/od;->setMinimumHeight(I)V

    .line 487
    :cond_d
    :goto_9
    invoke-virtual {p0}, Lc8/od;->updateScrimVisibility()V

    .line 488
    return-void

    .line 483
    :cond_e
    iget-object v6, p0, Lc8/od;->mToolbarDirectChild:Landroid/view/View;

    invoke-static {v6}, Lc8/od;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Lc8/od;->setMinimumHeight(I)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 409
    invoke-direct {p0}, Lc8/od;->ensureToolbar()V

    .line 410
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 411
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 329
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    move-object v0, p1

    .line 273
    :cond_0
    iget-object v1, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lc8/sf;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iput-object v0, p0, Lc8/od;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 275
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setCollapsedTextGravity(I)V

    .line 840
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 810
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setCollapsedTextAppearance(I)V

    .line 811
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 819
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/od;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 820
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 828
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 829
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 905
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 906
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 643
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 644
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/od;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/od;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 650
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 651
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 653
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 655
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 666
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/od;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 667
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 678
    invoke-virtual {p0}, Lc8/od;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/od;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 867
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/od;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 868
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setExpandedTextGravity(I)V

    .line 888
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 948
    iput p1, p0, Lc8/od;->mExpandedMarginStart:I

    .line 949
    iput p2, p0, Lc8/od;->mExpandedMarginTop:I

    .line 950
    iput p3, p0, Lc8/od;->mExpandedMarginEnd:I

    .line 951
    iput p4, p0, Lc8/od;->mExpandedMarginBottom:I

    .line 952
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 953
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1036
    iput p1, p0, Lc8/od;->mExpandedMarginBottom:I

    .line 1037
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 1038
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1015
    iput p1, p0, Lc8/od;->mExpandedMarginEnd:I

    .line 1016
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 1017
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 973
    iput p1, p0, Lc8/od;->mExpandedMarginStart:I

    .line 974
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 975
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 994
    iput p1, p0, Lc8/od;->mExpandedMarginTop:I

    .line 995
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 996
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 858
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setExpandedTextAppearance(I)V

    .line 859
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 876
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 877
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 922
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 923
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 619
    iget v1, p0, Lc8/od;->mScrimAlpha:I

    if-eq p1, v1, :cond_1

    .line 620
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 621
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/od;->mToolbar:Lc8/kx;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lc8/od;->mToolbar:Lc8/kx;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 624
    :cond_0
    iput p1, p0, Lc8/od;->mScrimAlpha:I

    .line 625
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 627
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1093
    iput-wide p1, p0, Lc8/od;->mScrimAnimationDuration:J

    .line 1094
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1052
    iget v0, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1053
    iput p1, p0, Lc8/od;->mScrimVisibleHeightTrigger:I

    .line 1055
    invoke-virtual {p0}, Lc8/od;->updateScrimVisibility()V

    .line 1057
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 571
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/od;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lc8/od;->setScrimsShown(ZZ)V

    .line 572
    return-void

    .line 571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 3
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 585
    iget-boolean v2, p0, Lc8/od;->mScrimsAreShown:Z

    if-eq v2, p1, :cond_0

    .line 586
    if-eqz p2, :cond_2

    .line 587
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lc8/od;->animateScrim(I)V

    .line 591
    :goto_1
    iput-boolean p1, p0, Lc8/od;->mScrimsAreShown:Z

    .line 593
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lc8/od;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 705
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 706
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 709
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 710
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/od;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 714
    :cond_2
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 715
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 714
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 716
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/od;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 717
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 718
    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lc8/od;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 720
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 722
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 777
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/od;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 778
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 789
    invoke-virtual {p0}, Lc8/od;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/od;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 790
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 517
    iget-object v0, p0, Lc8/od;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {v0, p1}, Lc8/jd;->setText(Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 542
    iget-boolean v0, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 543
    iput-boolean p1, p0, Lc8/od;->mCollapsingTitleEnabled:Z

    .line 544
    invoke-direct {p0}, Lc8/od;->updateDummyView()V

    .line 545
    invoke-virtual {p0}, Lc8/od;->requestLayout()V

    .line 547
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 758
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 759
    iget-object v2, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 761
    :cond_0
    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 762
    iget-object v2, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 764
    :cond_1
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v1

    .line 757
    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lc8/od;->getHeight()I

    move-result v0

    iget v1, p0, Lc8/od;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lc8/od;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lc8/od;->setScrimsShown(Z)V

    .line 1246
    :cond_1
    return-void

    .line 1244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 750
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/od;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lc8/od;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
