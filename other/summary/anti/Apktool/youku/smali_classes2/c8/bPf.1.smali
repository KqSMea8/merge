.class public Lc8/bPf;
.super Lc8/SOf;
.source "ImageShapeFeature.java"

# interfaces
.implements Lc8/HOf;
.implements Lc8/JOf;
.implements Lc8/MOf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aPf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/SOf",
        "<",
        "Landroid/widget/ImageView;",
        ">;",
        "Lc8/HOf;",
        "Lc8/JOf;",
        "Lc8/MOf;"
    }
.end annotation


# static fields
.field public static final RoundRectShape:I = 0x1

.field public static final RoundShape:I


# instance fields
.field private mCornerRadiusArray:[F

.field private mIsRound:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mRectF:Landroid/graphics/RectF;

.field private mShape:Landroid/graphics/drawable/shapes/Shape;

.field private mStrokeEnable:Z

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokePath:Landroid/graphics/Path;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/SOf;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bPf;->mMatrix:Landroid/graphics/Matrix;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bPf;->mIsRound:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bPf;->mStrokeEnable:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lc8/bPf;->mStrokeWidth:F

    .line 288
    return-void
.end method

.method private getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 167
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v0, p1, Lc8/cPf;

    if-eqz v0, :cond_1

    .line 168
    check-cast p1, Lc8/cPf;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p1}, Lc8/cPf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 170
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCornerRadius(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 79
    sget v5, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_cornerRadius:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 80
    .local v2, "radius":F
    sget v5, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_topLeftRadius:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 81
    .local v3, "tl":F
    sget v5, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_bottomLeftRadius:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 82
    .local v0, "bl":F
    sget v5, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_topRightRadius:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 83
    .local v4, "tr":F
    sget v5, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_bottomRightRadius:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 84
    .local v1, "br":F
    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v6, 0x2

    aput v4, v5, v6

    const/4 v6, 0x3

    aput v4, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v1, v5, v6

    const/4 v6, 0x6

    aput v0, v5, v6

    const/4 v6, 0x7

    aput v0, v5, v6

    iput-object v5, p0, Lc8/bPf;->mCornerRadiusArray:[F

    .line 85
    return-void
.end method

.method private initShape(I)V
    .locals 4
    .param p1, "shapeType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    if-nez p1, :cond_2

    .line 89
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 90
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    :cond_0
    iput-boolean v2, p0, Lc8/bPf;->mIsRound:Z

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    if-ne v2, p1, :cond_1

    .line 95
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v1, p0, Lc8/bPf;->mCornerRadiusArray:[F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v0, p0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bPf;->mIsRound:Z

    goto :goto_0
.end method

.method private invalidateHost()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 278
    :cond_0
    return-void
.end method

.method private requestLayoutHost()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lc8/bPf;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 209
    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    return-void
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    iget-boolean v0, p0, Lc8/bPf;->mStrokeEnable:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lc8/bPf;->mStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    :cond_0
    return-void
.end method

.method public afterOnLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-boolean v4, p0, Lc8/bPf;->mIsRound:Z

    if-eqz v4, :cond_1

    .line 182
    sub-int v4, p4, p2

    int-to-float v4, v4

    mul-float v0, v4, v6

    .line 183
    .local v0, "centerX":F
    sub-int v4, p5, p3

    int-to-float v4, v4

    mul-float v1, v4, v6

    .line 184
    .local v1, "centerY":F
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lc8/bPf;->mStrokeWidth:F

    sub-float/2addr v4, v5

    mul-float v3, v4, v6

    .line 185
    .local v3, "radius":F
    iget-object v4, p0, Lc8/bPf;->mStrokePath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v1, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 191
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v3    # "radius":F
    :goto_0
    invoke-virtual {p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    return-void

    .line 187
    :cond_1
    iget v4, p0, Lc8/bPf;->mStrokeWidth:F

    mul-float v2, v4, v6

    .line 188
    .local v2, "offset":F
    iget-object v4, p0, Lc8/bPf;->mRectF:Landroid/graphics/RectF;

    sub-int v5, p4, p2

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-int v6, p5, p3

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v4, p0, Lc8/bPf;->mStrokePath:Landroid/graphics/Path;

    iget-object v5, p0, Lc8/bPf;->mRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lc8/bPf;->mCornerRadiusArray:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 205
    return-void
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    return-void
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 213
    return-void
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 176
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 56
    const v1, -0x777778

    .line 57
    .local v1, "strokeColor":I
    if-eqz p2, :cond_0

    .line 58
    sget-object v3, Lcom/youku/phone/R$styleable;->ImageShapeFeature:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_shapeType:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 60
    .local v2, "type":I
    invoke-direct {p0, v0}, Lc8/bPf;->initCornerRadius(Landroid/content/res/TypedArray;)V

    .line 61
    invoke-direct {p0, v2}, Lc8/bPf;->initShape(I)V

    .line 63
    sget v3, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_strokeColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 64
    sget v3, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_strokeWidth:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lc8/bPf;->mStrokeWidth:F

    .line 65
    sget v3, Lcom/youku/phone/R$styleable;->ImageShapeFeature_uik_strokeEnable:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lc8/bPf;->mStrokeEnable:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "type":I
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    .line 69
    iget-object v3, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v3, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v3, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v3, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lc8/bPf;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lc8/bPf;->mStrokePath:Landroid/graphics/Path;

    .line 75
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lc8/bPf;->mRectF:Landroid/graphics/RectF;

    .line 76
    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 4
    .param p1, "leftTop"    # F
    .param p2, "rightTop"    # F
    .param p3, "leftBottom"    # F
    .param p4, "rightBottom"    # F

    .prologue
    const/4 v3, 0x0

    .line 242
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p4, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    aput p3, v0, v1

    const/4 v1, 0x7

    aput p3, v0, v1

    iput-object v0, p0, Lc8/bPf;->mCornerRadiusArray:[F

    .line 243
    iget-object v0, p0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    instance-of v0, v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v1, p0, Lc8/bPf;->mCornerRadiusArray:[F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v0, p0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 245
    invoke-direct {p0}, Lc8/bPf;->requestLayoutHost()V

    .line 246
    invoke-direct {p0}, Lc8/bPf;->invalidateHost()V

    .line 248
    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/bPf;->setHost(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "host"    # Landroid/widget/ImageView;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lc8/SOf;->setHost(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    instance-of v0, v0, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    :cond_0
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1, "shapeType"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lc8/bPf;->initShape(I)V

    .line 229
    invoke-direct {p0}, Lc8/bPf;->requestLayoutHost()V

    .line 230
    invoke-direct {p0}, Lc8/bPf;->invalidateHost()V

    .line 231
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    invoke-direct {p0}, Lc8/bPf;->invalidateHost()V

    .line 253
    return-void
.end method

.method public setStrokeEnable(Z)V
    .locals 0
    .param p1, "strokeEnable"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lc8/bPf;->mStrokeEnable:Z

    .line 257
    invoke-direct {p0}, Lc8/bPf;->requestLayoutHost()V

    .line 258
    invoke-direct {p0}, Lc8/bPf;->invalidateHost()V

    .line 259
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 262
    iput p1, p0, Lc8/bPf;->mStrokeWidth:F

    .line 263
    iget-object v0, p0, Lc8/bPf;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    invoke-direct {p0}, Lc8/bPf;->requestLayoutHost()V

    .line 265
    invoke-direct {p0}, Lc8/bPf;->invalidateHost()V

    .line 266
    return-void
.end method

.method public wrapImageDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    if-gtz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    if-gtz v12, :cond_1

    .line 161
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p1

    .line 107
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 108
    .local v5, "innerDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v12, v5, Lc8/aPf;

    if-eqz v12, :cond_6

    move-object v6, v5

    .line 109
    check-cast v6, Lc8/aPf;

    .line 117
    .local v6, "myShapeDrawable":Lc8/aPf;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    .line 118
    .local v11, "vWidth":I
    invoke-virtual/range {p0 .. p0}, Lc8/bPf;->getHost()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    .line 119
    .local v10, "vHeight":I
    invoke-virtual {v6}, Lc8/aPf;->getIntrinsicHeight()I

    move-result v12

    if-gtz v12, :cond_4

    invoke-virtual {v6}, Lc8/aPf;->getIntrinsicWidth()I

    move-result v12

    if-gtz v12, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/bPf;->mIsRound:Z

    if-eqz v12, :cond_3

    .line 121
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v10

    .line 123
    :cond_3
    invoke-virtual {v6, v11}, Lc8/aPf;->setIntrinsicWidth(I)V

    .line 124
    invoke-virtual {v6, v10}, Lc8/aPf;->setIntrinsicHeight(I)V

    .line 127
    :cond_4
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v12, :cond_5

    move-object/from16 v0, p1

    instance-of v12, v0, Lc8/cPf;

    if-eqz v12, :cond_9

    .line 128
    :cond_5
    invoke-direct/range {p0 .. p1}, Lc8/bPf;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_8

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 131
    .local v4, "bmWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 132
    .local v3, "bmHeight":I
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v12, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 135
    .local v1, "bitmapShader":Landroid/graphics/BitmapShader;
    const/4 v8, 0x0

    .line 136
    .local v8, "translateX":F
    const/4 v9, 0x0

    .line 138
    .local v9, "translateY":F
    mul-int v12, v4, v10

    mul-int v13, v3, v11

    if-le v12, v13, :cond_7

    .line 139
    int-to-float v12, v10

    int-to-float v13, v3

    div-float v7, v12, v13

    .line 140
    .local v7, "scale":F
    int-to-float v12, v11

    int-to-float v13, v4

    mul-float/2addr v13, v7

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v8, v12, v13

    .line 146
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/bPf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/bPf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/bPf;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v8

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/bPf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v12}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 150
    invoke-virtual {v6}, Lc8/aPf;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 160
    .end local v1    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "bmHeight":I
    .end local v4    # "bmWidth":I
    .end local v7    # "scale":F
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v6}, Lc8/aPf;->invalidateSelf()V

    move-object/from16 p1, v6

    .line 161
    goto/16 :goto_0

    .line 111
    .end local v6    # "myShapeDrawable":Lc8/aPf;
    .end local v10    # "vHeight":I
    .end local v11    # "vWidth":I
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    new-instance v6, Lc8/aPf;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/bPf;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v6, v12}, Lc8/aPf;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 112
    .restart local v6    # "myShapeDrawable":Lc8/aPf;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-gt v12, v13, :cond_2

    .line 113
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v12}, Lc8/aPf;->setPadding(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 142
    .restart local v1    # "bitmapShader":Landroid/graphics/BitmapShader;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "bmHeight":I
    .restart local v4    # "bmWidth":I
    .restart local v8    # "translateX":F
    .restart local v9    # "translateY":F
    .restart local v10    # "vHeight":I
    .restart local v11    # "vWidth":I
    :cond_7
    int-to-float v12, v11

    int-to-float v13, v4

    div-float v7, v12, v13

    .line 143
    .restart local v7    # "scale":F
    int-to-float v12, v10

    int-to-float v13, v3

    mul-float/2addr v13, v7

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v9, v12, v13

    goto :goto_2

    .line 152
    .end local v1    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v3    # "bmHeight":I
    .end local v4    # "bmWidth":I
    .end local v7    # "scale":F
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    :cond_8
    invoke-virtual {v6}, Lc8/aPf;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_3

    .line 154
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_0

    .line 155
    invoke-virtual {v6}, Lc8/aPf;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    invoke-virtual {v6}, Lc8/aPf;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method
