.class public Lc8/Jeg;
.super Ljava/lang/Object;
.source "BorderEdge.java"


# instance fields
.field private final mBorderWidth:F

.field private final mEdge:I

.field private final mPostCorner:Lc8/Heg;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPreCorner:Lc8/Heg;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Heg;Lc8/Heg;IF)V
    .locals 0
    .param p1, "preCorner"    # Lc8/Heg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postCorner"    # Lc8/Heg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "edge"    # I
    .param p4, "borderWidth"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/Jeg;->mPreCorner:Lc8/Heg;

    .line 49
    iput-object p2, p0, Lc8/Jeg;->mPostCorner:Lc8/Heg;

    .line 50
    iput p3, p0, Lc8/Jeg;->mEdge:I

    .line 51
    iput p4, p0, Lc8/Jeg;->mBorderWidth:F

    .line 52
    return-void
.end method

.method private drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lc8/Heg;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "borderCorner"    # Lc8/Heg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "startAngle"    # F
    .param p5, "startPoint"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "endPoint"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-virtual {p3}, Lc8/Heg;->hasOuterCorner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p3}, Lc8/Heg;->hasInnerCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p3}, Lc8/Heg;->getOvalIfInnerCornerExist()Landroid/graphics/RectF;

    move-result-object v1

    .line 104
    .local v1, "oval":Landroid/graphics/RectF;
    :goto_0
    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    .end local v1    # "oval":Landroid/graphics/RectF;
    :goto_1
    return-void

    .line 94
    :cond_0
    invoke-virtual {p3}, Lc8/Heg;->getOuterCornerRadius()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    invoke-virtual {p3}, Lc8/Heg;->getOvalIfInnerCornerNotExist()Landroid/graphics/RectF;

    move-result-object v1

    .restart local v1    # "oval":Landroid/graphics/RectF;
    goto :goto_0

    .line 106
    .end local v1    # "oval":Landroid/graphics/RectF;
    :cond_1
    iget v3, p5, Landroid/graphics/PointF;->x:F

    iget v4, p5, Landroid/graphics/PointF;->y:F

    iget v5, p6, Landroid/graphics/PointF;->x:F

    iget v6, p6, Landroid/graphics/PointF;->y:F

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v1, p0, Lc8/Jeg;->mPreCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getCornerEnd()Landroid/graphics/PointF;

    move-result-object v7

    .line 62
    .local v7, "lineStart":Landroid/graphics/PointF;
    iget v1, p0, Lc8/Jeg;->mBorderWidth:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v4, p0, Lc8/Jeg;->mPreCorner:Lc8/Heg;

    iget-object v1, p0, Lc8/Jeg;->mPreCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getAngleBisectorDegree()F

    move-result v5

    iget-object v1, p0, Lc8/Jeg;->mPreCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getSharpCornerStart()Landroid/graphics/PointF;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lc8/Jeg;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lc8/Heg;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 68
    iget v1, p0, Lc8/Jeg;->mBorderWidth:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, p0, Lc8/Jeg;->mPostCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getCornerStart()Landroid/graphics/PointF;

    move-result-object v13

    .line 70
    .local v13, "lineEnd":Landroid/graphics/PointF;
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v13, Landroid/graphics/PointF;->x:F

    iget v5, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v11, p0, Lc8/Jeg;->mPostCorner:Lc8/Heg;

    iget-object v1, p0, Lc8/Jeg;->mPostCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getAngleBisectorDegree()F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    sub-float v12, v1, v2

    iget-object v1, p0, Lc8/Jeg;->mPostCorner:Lc8/Heg;

    invoke-virtual {v1}, Lc8/Heg;->getSharpCornerEnd()Landroid/graphics/PointF;

    move-result-object v14

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v14}, Lc8/Jeg;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lc8/Heg;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 75
    return-void
.end method

.method public getEdge()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lc8/Jeg;->mEdge:I

    return v0
.end method
