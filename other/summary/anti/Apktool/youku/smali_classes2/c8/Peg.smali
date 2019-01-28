.class public Lc8/Peg;
.super Lc8/Heg;
.source "BottomRightCorner.java"


# direct methods
.method constructor <init>(FFFLandroid/graphics/RectF;)V
    .locals 6
    .param p1, "cornerRadius"    # F
    .param p2, "preBorderWidth"    # F
    .param p3, "postBorderWidth"    # F
    .param p4, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const/high16 v5, 0x42340000    # 45.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/Heg;-><init>(FFFLandroid/graphics/RectF;F)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getOvalIfInnerCornerExist()Landroid/graphics/RectF;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v2

    mul-float/2addr v2, v6

    invoke-virtual {p0}, Lc8/Peg;->getPreBorderWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lc8/Peg;->getPostBorderWidth()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lc8/Peg;->getPreBorderWidth()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Lc8/Peg;->getPostBorderWidth()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected getOvalIfInnerCornerNotExist()Landroid/graphics/RectF;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected getRoundCornerEnd()Landroid/graphics/PointF;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lc8/Peg;->getPostBorderWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected getRoundCornerStart()Landroid/graphics/PointF;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lc8/Peg;->getPreBorderWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lc8/Peg;->getOuterCornerRadius()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected getSharpCornerEnd()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lc8/Peg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .line 75
    .local v0, "pointF":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 76
    return-object v0
.end method

.method protected getSharpCornerStart()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/Peg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .line 67
    .local v0, "pointF":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 68
    return-object v0
.end method

.method protected getSharpCornerVertex()Landroid/graphics/PointF;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lc8/Peg;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Peg;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lc8/Peg;->getPostBorderWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
