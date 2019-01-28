.class public Lc8/Heo;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lc8/Peo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Heo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    sget v0, Lcom/youku/phone/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Heo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    .line 50
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    .line 51
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    .line 63
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Heo;->mLastMotionX:F

    .line 64
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Heo;->mActivePointerId:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 81
    .local v16, "res":Landroid/content/res/Resources;
    sget v17, Lcom/youku/phone/R$color;->default_circle_indicator_page_color:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 82
    .local v11, "defaultPageColor":I
    sget v17, Lcom/youku/phone/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 83
    .local v9, "defaultFillColor":I
    sget v17, Lcom/youku/phone/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 84
    .local v10, "defaultOrientation":I
    sget v17, Lcom/youku/phone/R$color;->default_circle_indicator_stroke_color:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 85
    .local v14, "defaultStrokeColor":I
    sget v17, Lcom/youku/phone/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 86
    .local v15, "defaultStrokeWidth":F
    sget v17, Lcom/youku/phone/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 87
    .local v12, "defaultRadius":F
    sget v17, Lcom/youku/phone/R$bool;->default_circle_indicator_centered:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 88
    .local v8, "defaultCentered":Z
    sget v17, Lcom/youku/phone/R$bool;->default_circle_indicator_snap:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 91
    .local v13, "defaultSnap":Z
    sget-object v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 93
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator_centered:I

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Heo;->mCentered:Z

    .line 94
    sget v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator_android_orientation:I

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Heo;->mOrientation:I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/youku/phone/R$styleable;->CirclePageIndicator_pageColor:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/youku/phone/R$styleable;->CirclePageIndicator_strokeColors:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/youku/phone/R$styleable;->CirclePageIndicator_strokeWidths:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/youku/phone/R$styleable;->CirclePageIndicator_fillColor:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator_radius:I

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Heo;->mRadius:F

    .line 103
    sget v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator_snap:I

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Heo;->mSnap:Z

    .line 105
    sget v17, Lcom/youku/phone/R$styleable;->CirclePageIndicator_android_background:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 106
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lc8/Heo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 113
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Heo;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 475
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 476
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 478
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 480
    :cond_0
    move v1, v3

    .line 491
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 483
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 484
    .local v0, "count":I
    invoke-virtual {p0}, Lc8/Heo;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lc8/Heo;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    shl-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    iget v6, p0, Lc8/Heo;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lc8/Heo;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 487
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 488
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 502
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 503
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 505
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 507
    move v0, v2

    .line 516
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 510
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lc8/Heo;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Heo;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Heo;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 512
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 513
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lc8/Heo;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lc8/Heo;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lc8/Heo;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lc8/Heo;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 412
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 413
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 204
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 209
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/Heo;->setCurrentItem(I)V

    goto :goto_0

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 218
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getWidth()I

    move-result v12

    .line 219
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingLeft()I

    move-result v11

    .line 220
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingRight()I

    move-result v10

    .line 221
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingTop()I

    move-result v15

    .line 229
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 230
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 231
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 232
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Heo;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 233
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Heo;->mRadius:F

    .line 240
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 245
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_9

    .line 246
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 247
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 248
    move v5, v7

    .line 249
    .local v5, "dX":F
    move v6, v14

    .line 255
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 223
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getHeight()I

    move-result v12

    .line 224
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingTop()I

    move-result v11

    .line 225
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingBottom()I

    move-result v10

    .line 226
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 251
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_8
    move v5, v14

    .line 252
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 266
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Heo;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mSnapPage:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 267
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Heo;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 270
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 271
    add-float v5, v9, v4

    .line 272
    .restart local v5    # "dX":F
    move v6, v14

    .line 277
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 266
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Heo;->mCurrentPage:I

    move/from16 v17, v0

    goto :goto_4

    .line 274
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 275
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 460
    iget v0, p0, Lc8/Heo;->mOrientation:I

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0, p1}, Lc8/Heo;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lc8/Heo;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/Heo;->setMeasuredDimension(II)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0, p1}, Lc8/Heo;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lc8/Heo;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/Heo;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 417
    iput p1, p0, Lc8/Heo;->mScrollState:I

    .line 419
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 426
    iput p1, p0, Lc8/Heo;->mCurrentPage:I

    .line 427
    iput p2, p0, Lc8/Heo;->mPageOffset:F

    .line 428
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 430
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 433
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 437
    iget-boolean v0, p0, Lc8/Heo;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc8/Heo;->mScrollState:I

    if-nez v0, :cond_1

    .line 438
    :cond_0
    iput p1, p0, Lc8/Heo;->mCurrentPage:I

    .line 439
    iput p1, p0, Lc8/Heo;->mSnapPage:I

    .line 440
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 443
    :cond_1
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 446
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 521
    move-object v0, p1

    check-cast v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;

    .line 522
    .local v0, "savedState":Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 523
    iget v1, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lc8/Heo;->mCurrentPage:I

    .line 524
    iget v1, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lc8/Heo;->mSnapPage:I

    .line 525
    invoke-virtual {p0}, Lc8/Heo;->requestLayout()V

    .line 526
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 530
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 531
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 532
    .local v0, "savedState":Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;
    iget v2, p0, Lc8/Heo;->mCurrentPage:I

    iput v2, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/CirclePageIndicator$SavedState;->currentPage:I

    .line 533
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 283
    const/4 v14, 0x1

    .line 375
    :goto_0
    return v14

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    if-nez v14, :cond_2

    .line 286
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v1, v14, 0xff

    .line 290
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 375
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v14, 0x1

    goto :goto_0

    .line 292
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mActivePointerId:I

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mLastMotionX:F

    goto :goto_1

    .line 297
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 298
    .local v2, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 299
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mLastMotionX:F

    sub-float v4, v13, v14

    .line 301
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lc8/Heo;->mIsDragging:Z

    if-nez v14, :cond_4

    .line 302
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lc8/Heo;->mTouchSlop:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 303
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/Heo;->mIsDragging:Z

    .line 307
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lc8/Heo;->mIsDragging:Z

    if-eqz v14, :cond_3

    .line 308
    move-object/from16 v0, p0

    iput v13, v0, Lc8/Heo;->mLastMotionX:F

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 310
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v4}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 322
    :catch_0
    move-exception v14

    goto :goto_1

    .line 327
    .end local v2    # "activePointerIndex":I
    .end local v4    # "deltaX":F
    .end local v13    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lc8/Heo;->mIsDragging:Z

    if-nez v14, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 329
    .local v3, "count":I
    invoke-virtual/range {p0 .. p0}, Lc8/Heo;->getWidth()I

    move-result v12

    .line 330
    .local v12, "width":I
    int-to-float v14, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float v6, v14, v15

    .line 331
    .local v6, "halfWidth":F
    int-to-float v14, v12

    const/high16 v15, 0x40c00000    # 6.0f

    div-float v11, v14, v15

    .line 333
    .local v11, "sixthWidth":F
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mCurrentPage:I

    if-lez v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v15, v6, v11

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 334
    const/4 v14, 0x3

    if-eq v1, v14, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget v15, v0, Lc8/Heo;->mCurrentPage:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 337
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mCurrentPage:I

    add-int/lit8 v15, v3, -0x1

    if-ge v14, v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    add-float v15, v6, v11

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    .line 339
    const/4 v14, 0x3

    if-eq v1, v14, :cond_8

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget v15, v0, Lc8/Heo;->mCurrentPage:I

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 342
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3    # "count":I
    .end local v6    # "halfWidth":F
    .end local v11    # "sixthWidth":F
    .end local v12    # "width":I
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/Heo;->mIsDragging:Z

    .line 347
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mActivePointerId:I

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 350
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 351
    :catch_1
    move-exception v5

    .line 352
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 358
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 359
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mLastMotionX:F

    .line 360
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mActivePointerId:I

    goto/16 :goto_1

    .line 365
    .end local v7    # "index":I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v10

    .line 366
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 367
    .local v9, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mActivePointerId:I

    if-ne v9, v14, :cond_a

    .line 368
    if-nez v10, :cond_b

    const/4 v8, 0x1

    .line 369
    .local v8, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mActivePointerId:I

    .line 371
    .end local v8    # "newPointerIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Heo;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/Heo;->mLastMotionX:F

    goto/16 :goto_1

    .line 368
    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lc8/Heo;->mCentered:Z

    .line 118
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 119
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 406
    iput p1, p0, Lc8/Heo;->mCurrentPage:I

    .line 407
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 408
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lc8/Heo;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 137
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 450
    iput-object p1, p0, Lc8/Heo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 451
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    iput p1, p0, Lc8/Heo;->mOrientation:I

    .line 148
    invoke-virtual {p0}, Lc8/Heo;->requestLayout()V

    .line 149
    return-void

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lc8/Heo;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 128
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 179
    iput p1, p0, Lc8/Heo;->mRadius:F

    .line 180
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 181
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lc8/Heo;->mSnap:Z

    .line 189
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 190
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 163
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lc8/Heo;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    .line 172
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 380
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_2
    iput-object p1, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 390
    iget-object v0, p0, Lc8/Heo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 391
    invoke-virtual {p0}, Lc8/Heo;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lc8/Heo;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 397
    invoke-virtual {p0, p2}, Lc8/Heo;->setCurrentItem(I)V

    .line 398
    return-void
.end method
