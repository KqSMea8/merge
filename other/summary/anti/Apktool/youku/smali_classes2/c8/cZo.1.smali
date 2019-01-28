.class public Lc8/cZo;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "CornerMarkDrawable.java"


# static fields
.field private static mPaint:Landroid/graphics/Paint;


# instance fields
.field protected mText:Ljava/lang/String;

.field private mTextBaselineY:F

.field protected mTextCenterX:F

.field private mTextColor:I

.field private mTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 23
    sput-object v0, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    sget-object v0, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 27
    const-string/jumbo v0, "Test"

    iput-object v0, p0, Lc8/cZo;->mText:Ljava/lang/String;

    .line 28
    const/high16 v0, -0x10000

    iput v0, p0, Lc8/cZo;->mTextColor:I

    .line 29
    const/16 v0, 0x1e

    iput v0, p0, Lc8/cZo;->mTextSize:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p0}, Lc8/cZo;->setTextLocation()V

    .line 51
    iget-object v0, p0, Lc8/cZo;->mText:Ljava/lang/String;

    iget v1, p0, Lc8/cZo;->mTextCenterX:F

    iget v2, p0, Lc8/cZo;->mTextBaselineY:F

    sget-object v3, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/cZo;->mText:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 39
    iput p1, p0, Lc8/cZo;->mTextColor:I

    .line 40
    return-void
.end method

.method protected setTextLocation()V
    .locals 5

    .prologue
    .line 55
    sget-object v2, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lc8/cZo;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    sget-object v2, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lc8/cZo;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v2, Lc8/cZo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 58
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0}, Lc8/cZo;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 59
    .local v1, "textCenterVerticalBaselineY":F
    invoke-virtual {p0}, Lc8/cZo;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lc8/cZo;->mTextCenterX:F

    .line 60
    iput v1, p0, Lc8/cZo;->mTextBaselineY:F

    .line 61
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 43
    iput p1, p0, Lc8/cZo;->mTextSize:I

    .line 44
    return-void
.end method
