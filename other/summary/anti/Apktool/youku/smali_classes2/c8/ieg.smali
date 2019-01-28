.class public Lc8/ieg;
.super Landroid/widget/FrameLayout;
.source "WXBaseCircleIndicator.java"

# interfaces
.implements Lc8/Ueg;


# instance fields
.field private circlePadding:F

.field private fillColor:I

.field private mCircleViewPager:Lc8/oeg;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPage:Landroid/graphics/Paint;

.field private pageColor:I

.field private radius:F

.field private realCurrentItem:I

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    .line 56
    const v0, -0x333334

    iput v0, p0, Lc8/ieg;->pageColor:I

    .line 60
    const v0, -0xbbbbbc

    iput v0, p0, Lc8/ieg;->fillColor:I

    .line 68
    invoke-direct {p0}, Lc8/ieg;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    .line 56
    const v0, -0x333334

    iput v0, p0, Lc8/ieg;->pageColor:I

    .line 60
    const v0, -0xbbbbbc

    iput v0, p0, Lc8/ieg;->fillColor:I

    .line 93
    invoke-direct {p0}, Lc8/ieg;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$002(Lc8/ieg;I)I
    .locals 0
    .param p0, "x0"    # Lc8/ieg;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lc8/ieg;->realCurrentItem:I

    return p1
.end method

.method static synthetic access$100(Lc8/ieg;)Lc8/oeg;
    .locals 1
    .param p0, "x0"    # Lc8/ieg;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 72
    invoke-static {v1}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/ieg;->radius:F

    .line 73
    invoke-static {v1}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/ieg;->circlePadding:F

    .line 74
    const v0, -0x333334

    iput v0, p0, Lc8/ieg;->pageColor:I

    .line 75
    const v0, -0xbbbbbc

    iput v0, p0, Lc8/ieg;->fillColor:I

    .line 77
    iget-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    iget v1, p0, Lc8/ieg;->pageColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    iget v1, p0, Lc8/ieg;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/ieg;->setWillNotDraw(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->getRealCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRealCurrentItem()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lc8/ieg;->realCurrentItem:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget v6, p0, Lc8/ieg;->circlePadding:F

    iget v7, p0, Lc8/ieg;->radius:F

    add-float/2addr v6, v7

    mul-float v0, v6, v8

    .line 175
    .local v0, "dotWidth":F
    invoke-virtual {p0}, Lc8/ieg;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/ieg;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v0

    div-float/2addr v7, v8

    sub-float v3, v6, v7

    .line 176
    .local v3, "firstCenterX":F
    invoke-virtual {p0}, Lc8/ieg;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lc8/ieg;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v4, v6

    .line 178
    .local v4, "firstCenterY":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/ieg;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 179
    int-to-float v6, v5

    mul-float/2addr v6, v0

    add-float v1, v3, v6

    .line 180
    .local v1, "dx":F
    move v2, v4

    .line 181
    .local v2, "dy":F
    iget v6, p0, Lc8/ieg;->realCurrentItem:I

    if-eq v5, v6, :cond_0

    .line 182
    iget v6, p0, Lc8/ieg;->radius:F

    iget-object v7, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 178
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget v6, p0, Lc8/ieg;->radius:F

    iget-object v7, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 187
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 196
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 197
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 198
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 200
    .local v1, "heightSize":I
    if-ne v4, v10, :cond_0

    .line 201
    move v3, v5

    .line 206
    .local v3, "viewWidth":I
    :goto_0
    if-ne v0, v10, :cond_1

    .line 207
    move v2, v1

    .line 211
    .local v2, "viewHeight":I
    :goto_1
    invoke-virtual {p0, v3, v2}, Lc8/ieg;->setMeasuredDimension(II)V

    .line 212
    return-void

    .line 203
    .end local v2    # "viewHeight":I
    .end local v3    # "viewWidth":I
    :cond_0
    invoke-virtual {p0}, Lc8/ieg;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lc8/ieg;->radius:F

    mul-float/2addr v7, v9

    invoke-virtual {p0}, Lc8/ieg;->getCount()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lc8/ieg;->circlePadding:F

    invoke-virtual {p0}, Lc8/ieg;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lc8/ieg;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "viewWidth":I
    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lc8/ieg;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lc8/ieg;->radius:F

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lc8/ieg;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v2, v6, 0x1

    .restart local v2    # "viewHeight":I
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 163
    .local v0, "result":Z
    iget-object v1, p0, Lc8/ieg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lc8/ieg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 166
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 157
    iput-object p1, p0, Lc8/ieg;->wxGesture:Lc8/Teg;

    .line 158
    return-void
.end method

.method public setCircleViewPager(Lc8/oeg;)V
    .locals 2
    .param p1, "viewPager"    # Lc8/oeg;

    .prologue
    .line 100
    iput-object p1, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    .line 101
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lc8/ieg;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lc8/heg;

    invoke-direct {v0, p0}, Lc8/heg;-><init>(Lc8/ieg;)V

    iput-object v0, p0, Lc8/ieg;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 111
    :cond_0
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    iget-object v1, p0, Lc8/ieg;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lc8/oeg;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    iget-object v0, p0, Lc8/ieg;->mCircleViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->getRealCurrentItem()I

    move-result v0

    iput v0, p0, Lc8/ieg;->realCurrentItem:I

    .line 113
    iget v0, p0, Lc8/ieg;->realCurrentItem:I

    if-gez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lc8/ieg;->realCurrentItem:I

    .line 117
    :cond_1
    invoke-virtual {p0}, Lc8/ieg;->requestLayout()V

    .line 118
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 131
    iput p1, p0, Lc8/ieg;->fillColor:I

    .line 132
    iget-object v0, p0, Lc8/ieg;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    return-void
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 136
    iput p1, p0, Lc8/ieg;->pageColor:I

    .line 137
    iget-object v0, p0, Lc8/ieg;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 124
    iput p1, p0, Lc8/ieg;->radius:F

    .line 125
    return-void
.end method

.method public setRealCurrentItem(I)V
    .locals 0
    .param p1, "realCurrentItem"    # I

    .prologue
    .line 151
    iput p1, p0, Lc8/ieg;->realCurrentItem:I

    .line 152
    invoke-virtual {p0}, Lc8/ieg;->invalidate()V

    .line 153
    return-void
.end method
