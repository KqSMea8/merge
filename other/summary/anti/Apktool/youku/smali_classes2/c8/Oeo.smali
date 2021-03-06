.class public Lc8/Oeo;
.super Landroid/view/View;
.source "LinePageIndicator.java"

# interfaces
.implements Lc8/Peo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mGapWidth:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLineWidth:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintSelected:Landroid/graphics/Paint;

.field private final mPaintUnselected:Landroid/graphics/Paint;

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Oeo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    sget v0, Lcom/youku/phone/R$attr;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Oeo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    .line 43
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    .line 52
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, p0, Lc8/Oeo;->mLastMotionX:F

    .line 53
    const/4 v10, -0x1

    iput v10, p0, Lc8/Oeo;->mActivePointerId:I

    .line 66
    invoke-virtual {p0}, Lc8/Oeo;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 99
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lc8/Oeo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 73
    .local v9, "res":Landroid/content/res/Resources;
    sget v10, Lcom/youku/phone/R$color;->default_line_indicator_selected_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 74
    .local v6, "defaultSelectedColor":I
    sget v10, Lcom/youku/phone/R$color;->default_line_indicator_unselected_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 75
    .local v8, "defaultUnselectedColor":I
    sget v10, Lcom/youku/phone/R$dimen;->default_line_indicator_line_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 76
    .local v5, "defaultLineWidth":F
    sget v10, Lcom/youku/phone/R$dimen;->default_line_indicator_gap_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 77
    .local v4, "defaultGapWidth":F
    sget v10, Lcom/youku/phone/R$dimen;->default_line_indicator_stroke_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 78
    .local v7, "defaultStrokeWidth":F
    sget v10, Lcom/youku/phone/R$bool;->default_line_indicator_centered:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 81
    .local v3, "defaultCentered":Z
    sget-object v10, Lcom/youku/phone/R$styleable;->LinePageIndicator:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v10, Lcom/youku/phone/R$styleable;->LinePageIndicator_centered:I

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lc8/Oeo;->mCentered:Z

    .line 84
    sget v10, Lcom/youku/phone/R$styleable;->LinePageIndicator_lineWidth:I

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lc8/Oeo;->mLineWidth:F

    .line 85
    sget v10, Lcom/youku/phone/R$styleable;->LinePageIndicator_gapWidth:I

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lc8/Oeo;->mGapWidth:F

    .line 86
    sget v10, Lcom/youku/phone/R$styleable;->LinePageIndicator_strokeWidths:I

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {p0, v10}, Lc8/Oeo;->setStrokeWidth(F)V

    .line 87
    iget-object v10, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    sget v11, Lcom/youku/phone/R$styleable;->LinePageIndicator_unselectedColor:I

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v10, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    sget v11, Lcom/youku/phone/R$styleable;->LinePageIndicator_selectedColor:I

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget v10, Lcom/youku/phone/R$styleable;->LinePageIndicator_android_background:I

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lc8/Oeo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 98
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v10

    iput v10, p0, Lc8/Oeo;->mTouchSlop:I

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 384
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 385
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 387
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 389
    int-to-float v0, v2

    .line 398
    .local v0, "result":F
    :cond_0
    :goto_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    return v3

    .line 392
    .end local v0    # "result":F
    :cond_1
    iget-object v3, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-virtual {p0}, Lc8/Oeo;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Oeo;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 394
    .restart local v0    # "result":F
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 395
    int-to-float v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 359
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 361
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 363
    :cond_0
    int-to-float v1, v3

    .line 373
    .local v1, "result":F
    :cond_1
    :goto_0
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4

    .line 366
    .end local v1    # "result":F
    :cond_2
    iget-object v4, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    invoke-virtual {p0}, Lc8/Oeo;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lc8/Oeo;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    iget v6, p0, Lc8/Oeo;->mLineWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lc8/Oeo;->mGapWidth:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 369
    .restart local v1    # "result":F
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 370
    int-to-float v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getGapWidth()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lc8/Oeo;->mGapWidth:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lc8/Oeo;->mLineWidth:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lc8/Oeo;->mCentered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 314
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 164
    .local v6, "count":I
    if-eqz v6, :cond_0

    .line 168
    iget v0, p0, Lc8/Oeo;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 169
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lc8/Oeo;->setCurrentItem(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget v0, p0, Lc8/Oeo;->mLineWidth:F

    iget v4, p0, Lc8/Oeo;->mGapWidth:F

    add-float v10, v0, v4

    .line 174
    .local v10, "lineWidthAndGap":F
    int-to-float v0, v6

    mul-float/2addr v0, v10

    iget v4, p0, Lc8/Oeo;->mGapWidth:F

    sub-float v9, v0, v4

    .line 175
    .local v9, "indicatorWidth":F
    invoke-virtual {p0}, Lc8/Oeo;->getPaddingTop()I

    move-result v0

    int-to-float v13, v0

    .line 176
    .local v13, "paddingTop":F
    invoke-virtual {p0}, Lc8/Oeo;->getPaddingLeft()I

    move-result v0

    int-to-float v11, v0

    .line 177
    .local v11, "paddingLeft":F
    invoke-virtual {p0}, Lc8/Oeo;->getPaddingRight()I

    move-result v0

    int-to-float v12, v0

    .line 179
    .local v12, "paddingRight":F
    invoke-virtual {p0}, Lc8/Oeo;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v13

    invoke-virtual {p0}, Lc8/Oeo;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v5

    add-float v2, v13, v0

    .line 180
    .local v2, "verticalOffset":F
    move v7, v11

    .line 181
    .local v7, "horizontalOffset":F
    iget-boolean v0, p0, Lc8/Oeo;->mCentered:Z

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lc8/Oeo;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v11

    sub-float/2addr v0, v12

    div-float/2addr v0, v5

    div-float v4, v9, v5

    sub-float/2addr v0, v4

    add-float/2addr v7, v0

    .line 186
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 187
    int-to-float v0, v8

    mul-float/2addr v0, v10

    add-float v1, v7, v0

    .line 188
    .local v1, "dx1":F
    iget v0, p0, Lc8/Oeo;->mLineWidth:F

    add-float v3, v1, v0

    .line 189
    .local v3, "dx2":F
    iget v0, p0, Lc8/Oeo;->mCurrentPage:I

    if-ne v8, v0, :cond_4

    iget-object v5, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    :goto_2
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 189
    :cond_4
    iget-object v5, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lc8/Oeo;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lc8/Oeo;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/Oeo;->setMeasuredDimension(II)V

    .line 348
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 328
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 332
    iput p1, p0, Lc8/Oeo;->mCurrentPage:I

    .line 333
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 335
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 338
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 403
    move-object v0, p1

    check-cast v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;

    .line 404
    .local v0, "savedState":Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget v1, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lc8/Oeo;->mCurrentPage:I

    .line 406
    invoke-virtual {p0}, Lc8/Oeo;->requestLayout()V

    .line 407
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 412
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    .local v0, "savedState":Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;
    iget v2, p0, Lc8/Oeo;->mCurrentPage:I

    iput v2, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/LinePageIndicator$SavedState;->currentPage:I

    .line 414
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 197
    const/4 v12, 0x1

    .line 275
    :goto_0
    return v12

    .line 199
    :cond_0
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 200
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 204
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lc8/Oeo;->mActivePointerId:I

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lc8/Oeo;->mLastMotionX:F

    goto :goto_1

    .line 211
    :pswitch_2
    iget v12, p0, Lc8/Oeo;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 212
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 213
    .local v11, "x":F
    iget v12, p0, Lc8/Oeo;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 215
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lc8/Oeo;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 216
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lc8/Oeo;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 217
    const/4 v12, 0x1

    iput-boolean v12, p0, Lc8/Oeo;->mIsDragging:Z

    .line 221
    :cond_4
    iget-boolean v12, p0, Lc8/Oeo;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 222
    iput v11, p0, Lc8/Oeo;->mLastMotionX:F

    .line 223
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 224
    :cond_5
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 233
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lc8/Oeo;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 234
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 235
    .local v2, "count":I
    invoke-virtual {p0}, Lc8/Oeo;->getWidth()I

    move-result v10

    .line 236
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 237
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 239
    .local v9, "sixthWidth":F
    iget v12, p0, Lc8/Oeo;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 240
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 241
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lc8/Oeo;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 243
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 244
    :cond_7
    iget v12, p0, Lc8/Oeo;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 245
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 246
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lc8/Oeo;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 248
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 252
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lc8/Oeo;->mIsDragging:Z

    .line 253
    const/4 v12, -0x1

    iput v12, p0, Lc8/Oeo;->mActivePointerId:I

    .line 254
    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 258
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 259
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lc8/Oeo;->mLastMotionX:F

    .line 260
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lc8/Oeo;->mActivePointerId:I

    goto/16 :goto_1

    .line 265
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 266
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 267
    .local v7, "pointerId":I
    iget v12, p0, Lc8/Oeo;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 268
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 269
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lc8/Oeo;->mActivePointerId:I

    .line 271
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lc8/Oeo;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lc8/Oeo;->mLastMotionX:F

    goto/16 :goto_1

    .line 268
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 204
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
    .line 102
    iput-boolean p1, p0, Lc8/Oeo;->mCentered:Z

    .line 103
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 104
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 307
    iput p1, p0, Lc8/Oeo;->mCurrentPage:I

    .line 308
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 309
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0
    .param p1, "gapWidth"    # F

    .prologue
    .line 148
    iput p1, p0, Lc8/Oeo;->mGapWidth:F

    .line 149
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 150
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .prologue
    .line 129
    iput p1, p0, Lc8/Oeo;->mLineWidth:F

    .line 130
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 131
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 342
    iput-object p1, p0, Lc8/Oeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 343
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 122
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "lineHeight"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lc8/Oeo;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 141
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1
    .param p1, "unselectedColor"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Oeo;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    .line 113
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 280
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    iput-object p1, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 291
    iget-object v0, p0, Lc8/Oeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 292
    invoke-virtual {p0}, Lc8/Oeo;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lc8/Oeo;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 298
    invoke-virtual {p0, p2}, Lc8/Oeo;->setCurrentItem(I)V

    .line 299
    return-void
.end method
