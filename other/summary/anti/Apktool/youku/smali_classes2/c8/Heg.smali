.class public abstract Lc8/Heg;
.super Ljava/lang/Object;
.source "BorderCorner.java"


# static fields
.field static final SWEEP_ANGLE:F = 45.0f


# instance fields
.field protected final mAngleBisector:F

.field private final mBorderBox:Landroid/graphics/RectF;

.field private final mCornerRadius:F

.field private final mPostBorderWidth:F

.field private final mPreBorderWidth:F


# direct methods
.method constructor <init>(FFFLandroid/graphics/RectF;F)V
    .locals 0
    .param p1, "cornerRadius"    # F
    .param p2, "preBorderWidth"    # F
    .param p3, "postBorderWidth"    # F
    .param p4, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "angleBisector"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lc8/Heg;->mCornerRadius:F

    .line 39
    iput p2, p0, Lc8/Heg;->mPreBorderWidth:F

    .line 40
    iput p3, p0, Lc8/Heg;->mPostBorderWidth:F

    .line 41
    iput-object p4, p0, Lc8/Heg;->mBorderBox:Landroid/graphics/RectF;

    .line 42
    iput p5, p0, Lc8/Heg;->mAngleBisector:F

    .line 43
    return-void
.end method


# virtual methods
.method protected final getAngleBisectorDegree()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lc8/Heg;->mAngleBisector:F

    return v0
.end method

.method protected final getBorderBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Heg;->mBorderBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method getCornerEnd()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lc8/Heg;->hasOuterCorner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lc8/Heg;->getRoundCornerEnd()Landroid/graphics/PointF;

    move-result-object v0

    .line 113
    .local v0, "lineEnd":Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .line 111
    .end local v0    # "lineEnd":Landroid/graphics/PointF;
    :cond_0
    invoke-virtual {p0}, Lc8/Heg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .restart local v0    # "lineEnd":Landroid/graphics/PointF;
    goto :goto_0
.end method

.method getCornerStart()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lc8/Heg;->hasOuterCorner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lc8/Heg;->getRoundCornerStart()Landroid/graphics/PointF;

    move-result-object v0

    .line 98
    .local v0, "lineStart":Landroid/graphics/PointF;
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "lineStart":Landroid/graphics/PointF;
    :cond_0
    invoke-virtual {p0}, Lc8/Heg;->getSharpCornerVertex()Landroid/graphics/PointF;

    move-result-object v0

    .restart local v0    # "lineStart":Landroid/graphics/PointF;
    goto :goto_0
.end method

.method protected final getOuterCornerRadius()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lc8/Heg;->mCornerRadius:F

    return v0
.end method

.method protected abstract getOvalIfInnerCornerExist()Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getOvalIfInnerCornerNotExist()Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected final getPostBorderWidth()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lc8/Heg;->mPostBorderWidth:F

    return v0
.end method

.method protected final getPreBorderWidth()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lc8/Heg;->mPreBorderWidth:F

    return v0
.end method

.method protected abstract getRoundCornerEnd()Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getRoundCornerStart()Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getSharpCornerEnd()Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getSharpCornerStart()Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getSharpCornerVertex()Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method hasInnerCorner()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lc8/Heg;->hasOuterCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Heg;->getPreBorderWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lc8/Heg;->getPostBorderWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lc8/Heg;->getOuterCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lc8/Heg;->getPreBorderWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc8/Heg;->getOuterCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lc8/Heg;->getPostBorderWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasOuterCorner()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lc8/Heg;->getOuterCornerRadius()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc8/Heg;->getOuterCornerRadius()F

    move-result v0

    invoke-static {v1, v0}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
