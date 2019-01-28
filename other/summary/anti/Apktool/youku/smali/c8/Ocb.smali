.class public Lc8/Ocb;
.super Lc8/Hcb;
.source "GradientStrokeContent.java"


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Lc8/Deb;",
            "Lc8/Deb;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/Jeb;)V
    .locals 9
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "stroke"    # Lc8/Jeb;

    .prologue
    .line 40
    invoke-virtual {p3}, Lc8/Jeb;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 41
    invoke-virtual {p3}, Lc8/Jeb;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lc8/Jeb;->getOpacity()Lc8/Zdb;

    move-result-object v5

    invoke-virtual {p3}, Lc8/Jeb;->getWidth()Lc8/Rdb;

    move-result-object v6

    .line 42
    invoke-virtual {p3}, Lc8/Jeb;->getLineDashPattern()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lc8/Jeb;->getDashOffset()Lc8/Rdb;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 40
    invoke-direct/range {v0 .. v8}, Lc8/Hcb;-><init>(Lc8/tcb;Lc8/rfb;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lc8/Zdb;Lc8/Rdb;Ljava/util/List;Lc8/Rdb;)V

    .line 28
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lc8/Ocb;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 29
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lc8/Ocb;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p3}, Lc8/Jeb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Ocb;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lc8/Jeb;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lc8/Ocb;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 46
    invoke-virtual {p1}, Lc8/tcb;->getComposition()Lc8/kcb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kcb;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lc8/Ocb;->cacheSteps:I

    .line 48
    invoke-virtual {p3}, Lc8/Jeb;->getGradientColor()Lc8/Vdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    .line 49
    iget-object v0, p0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 50
    iget-object v0, p0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 52
    invoke-virtual {p3}, Lc8/Jeb;->getStartPoint()Lc8/eeb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eeb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    .line 53
    iget-object v0, p0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 54
    iget-object v0, p0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 56
    invoke-virtual {p3}, Lc8/Jeb;->getEndPoint()Lc8/eeb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eeb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    .line 57
    iget-object v0, p0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 58
    iget-object v0, p0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 59
    return-void
.end method

.method private getGradientHash()I
    .locals 6

    .prologue
    .line 123
    iget-object v4, p0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getProgress()F

    move-result v4

    iget v5, p0, Lc8/Ocb;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 124
    .local v3, "startPointProgress":I
    iget-object v4, p0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getProgress()F

    move-result v4

    iget v5, p0, Lc8/Ocb;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 125
    .local v1, "endPointProgress":I
    iget-object v4, p0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getProgress()F

    move-result v4

    iget v5, p0, Lc8/Ocb;->cacheSteps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 126
    .local v0, "colorProgress":I
    const/16 v2, 0x11

    .line 127
    .local v2, "hash":I
    if-eqz v3, :cond_0

    .line 128
    mul-int/lit16 v2, v3, 0x20f

    .line 130
    :cond_0
    if-eqz v1, :cond_1

    .line 131
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v1

    .line 133
    :cond_1
    if-eqz v0, :cond_2

    .line 134
    mul-int/lit8 v4, v2, 0x1f

    mul-int v2, v4, v0

    .line 136
    :cond_2
    return v2
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 19

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Lc8/Ocb;->getGradientHash()I

    move-result v13

    .line 83
    .local v13, "gradientHash":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v13

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    .line 84
    .local v2, "gradient":Landroid/graphics/LinearGradient;
    if-eqz v2, :cond_0

    move-object v11, v2

    .line 98
    .end local v2    # "gradient":Landroid/graphics/LinearGradient;
    .local v11, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 87
    .end local v11    # "gradient":Ljava/lang/Object;
    .restart local v2    # "gradient":Landroid/graphics/LinearGradient;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 88
    .local v14, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 89
    .local v10, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/Deb;

    .line 90
    .local v12, "gradientColor":Lc8/Deb;
    invoke-virtual {v12}, Lc8/Deb;->getColors()[I

    move-result-object v7

    .line 91
    .local v7, "colors":[I
    invoke-virtual {v12}, Lc8/Deb;->getPositions()[F

    move-result-object v8

    .line 92
    .local v8, "positions":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v15, v3

    .line 93
    .local v15, "x0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 94
    .local v17, "y0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 95
    .local v16, "x1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v18, v0

    .line 96
    .local v18, "y1":I
    new-instance v2, Landroid/graphics/LinearGradient;

    .end local v2    # "gradient":Landroid/graphics/LinearGradient;
    int-to-float v3, v15

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v6, v0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 97
    .restart local v2    # "gradient":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v13

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v11, v2

    .line 98
    .restart local v11    # "gradient":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 22

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Lc8/Ocb;->getGradientHash()I

    move-result v12

    .line 103
    .local v12, "gradientHash":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    .line 104
    .local v2, "gradient":Landroid/graphics/RadialGradient;
    if-eqz v2, :cond_0

    move-object v10, v2

    .line 119
    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    .local v10, "gradient":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 107
    .end local v10    # "gradient":Ljava/lang/Object;
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->startPointAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 108
    .local v13, "startPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->endPointAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 109
    .local v9, "endPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Deb;

    .line 110
    .local v11, "gradientColor":Lc8/Deb;
    invoke-virtual {v11}, Lc8/Deb;->getColors()[I

    move-result-object v6

    .line 111
    .local v6, "colors":[I
    invoke-virtual {v11}, Lc8/Deb;->getPositions()[F

    move-result-object v7

    .line 112
    .local v7, "positions":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v13, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 113
    .local v14, "x0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 114
    .local v16, "y0":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-int v15, v3

    .line 115
    .local v15, "x1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 116
    .local v17, "y1":I
    sub-int v3, v15, v14

    int-to-double v0, v3

    move-wide/from16 v18, v0

    sub-int v3, v17, v16

    int-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 117
    .local v5, "r":F
    new-instance v2, Landroid/graphics/RadialGradient;

    .end local v2    # "gradient":Landroid/graphics/RadialGradient;
    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 118
    .restart local v2    # "gradient":Landroid/graphics/RadialGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ocb;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v10, v2

    .line 119
    .restart local v10    # "gradient":Ljava/lang/Object;
    goto/16 :goto_0
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
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
    .line 75
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Ocb;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lc8/Ocb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 63
    iget-object v0, p0, Lc8/Ocb;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lc8/Ocb;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lc8/Ocb;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lc8/Hcb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lc8/Ocb;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lc8/Ocb;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Ocb;->name:Ljava/lang/String;

    return-object v0
.end method
