.class public Lc8/wZo;
.super Landroid/widget/LinearLayout;
.source "GridItem.java"


# instance fields
.field private height:I

.field private mPaint:Landroid/graphics/Paint;

.field private percent:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    .line 21
    sget-object v1, Lcom/youku/phone/R$styleable;->hisPercent:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->hisPercent_percent:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lc8/wZo;->percent:F

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x42960000    # 75.0f

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v8, 0x41c80000    # 25.0f

    const/4 v1, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    iget v0, p0, Lc8/wZo;->percent:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    const v2, -0xcc3301

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget v0, p0, Lc8/wZo;->percent:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    iget v0, p0, Lc8/wZo;->percent:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 38
    iget v0, p0, Lc8/wZo;->percent:F

    iget v2, p0, Lc8/wZo;->width:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float v3, v0, v8

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 41
    :cond_2
    iget v0, p0, Lc8/wZo;->percent:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    iget v0, p0, Lc8/wZo;->percent:F

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_3

    .line 42
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v5, v0

    iget v0, p0, Lc8/wZo;->percent:F

    sub-float/2addr v0, v8

    iget v2, p0, Lc8/wZo;->width:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float v6, v0, v8

    iget-object v7, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 47
    :cond_3
    iget v0, p0, Lc8/wZo;->percent:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_4

    iget v0, p0, Lc8/wZo;->percent:F

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_4

    .line 48
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v5, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v6, v0

    iget-object v7, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v0, v0

    iget v1, p0, Lc8/wZo;->percent:F

    sub-float/2addr v1, v9

    iget v2, p0, Lc8/wZo;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v8

    sub-float v1, v0, v1

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v2, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v4, v0

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 54
    :cond_4
    iget v0, p0, Lc8/wZo;->percent:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget v0, p0, Lc8/wZo;->percent:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 55
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v5, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v6, v0

    iget-object v7, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v3, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v4, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v6, v0

    iget-object v7, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v2, v0

    iget v0, p0, Lc8/wZo;->width:I

    int-to-float v0, v0

    iget v3, p0, Lc8/wZo;->percent:F

    sub-float/2addr v3, v10

    iget v4, p0, Lc8/wZo;->width:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float v4, v0, v3

    iget-object v5, p0, Lc8/wZo;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lc8/wZo;->width:I

    .line 67
    iget v0, p0, Lc8/wZo;->width:I

    iput v0, p0, Lc8/wZo;->height:I

    .line 68
    iget v0, p0, Lc8/wZo;->width:I

    iget v1, p0, Lc8/wZo;->height:I

    invoke-virtual {p0, v0, v1}, Lc8/wZo;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method public setPercent(F)V
    .locals 0
    .param p1, "per"    # F

    .prologue
    .line 72
    iput p1, p0, Lc8/wZo;->percent:F

    .line 73
    return-void
.end method
