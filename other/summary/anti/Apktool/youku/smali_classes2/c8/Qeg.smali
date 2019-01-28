.class public Lc8/Qeg;
.super Lc8/Heg;
.source "TopLeftCorner.java"


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
    const/high16 v5, 0x43610000    # 225.0f

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

    invoke-virtual {p0}, Lc8/Qeg;->getPreBorderWidth()F

    move-result v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Lc8/Qeg;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lc8/Qeg;->getPreBorderWidth()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v4

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lc8/Qeg;->getPostBorderWidth()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected getOvalIfInnerCornerNotExist()Landroid/graphics/RectF;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected getRoundCornerEnd()Landroid/graphics/PointF;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v1

    invoke-virtual {p0}, Lc8/Qeg;->getPostBorderWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected getRoundCornerStart()Landroid/graphics/PointF;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Qeg;->getPreBorderWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lc8/Qeg;->getOuterCornerRadius()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected getSharpCornerEnd()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lc8/Qeg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .line 73
    .local v0, "pointF":Landroid/graphics/PointF;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 74
    return-object v0
.end method

.method protected getSharpCornerStart()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lc8/Qeg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .line 65
    .local v0, "pointF":Landroid/graphics/PointF;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 66
    return-object v0
.end method

.method protected getSharpCornerVertex()Landroid/graphics/PointF;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lc8/Qeg;->getPreBorderWidth()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lc8/Qeg;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
