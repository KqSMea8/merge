.class public Lc8/Afb;
.super Lc8/rfb;
.source "SolidLayer.java"


# instance fields
.field private final layerModel:Lc8/xfb;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/xfb;)V
    .locals 2
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/rfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/Afb;->rect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    .line 22
    iput-object p2, p0, Lc8/Afb;->layerModel:Lc8/xfb;

    .line 24
    iget-object v0, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object v0, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lc8/xfb;->getSolidColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    return-void
.end method

.method private updateRect(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lc8/Afb;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lc8/Afb;->layerModel:Lc8/xfb;

    invoke-virtual {v1}, Lc8/xfb;->getSolidWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lc8/Afb;->layerModel:Lc8/xfb;

    invoke-virtual {v2}, Lc8/xfb;->getSolidHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v0, p0, Lc8/Afb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 57
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 30
    iget-object v2, p0, Lc8/Afb;->layerModel:Lc8/xfb;

    invoke-virtual {v2}, Lc8/xfb;->getSolidColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 31
    .local v1, "backgroundAlpha":I
    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    int-to-float v2, p3

    div-float v3, v2, v5

    int-to-float v2, v1

    div-float v4, v2, v5

    iget-object v2, p0, Lc8/Afb;->transform:Lc8/tdb;

    invoke-virtual {v2}, Lc8/tdb;->getOpacity()Lc8/cdb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v0, v2

    .line 36
    .local v0, "alpha":I
    iget-object v2, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    if-lez v0, :cond_0

    .line 38
    invoke-direct {p0, p2}, Lc8/Afb;->updateRect(Landroid/graphics/Matrix;)V

    .line 39
    iget-object v2, p0, Lc8/Afb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/Afb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 45
    iget-object v0, p0, Lc8/Afb;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lc8/Afb;->updateRect(Landroid/graphics/Matrix;)V

    .line 46
    iget-object v0, p0, Lc8/Afb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 47
    return-void
.end method
