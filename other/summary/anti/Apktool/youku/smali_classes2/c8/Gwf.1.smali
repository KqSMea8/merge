.class public Lc8/Gwf;
.super Ljava/lang/Object;
.source "CropCircleBitmapProcessor.java"

# interfaces
.implements Lc8/ovf;


# instance fields
.field private final mStrokeColor:I

.field private final mStrokeRatio:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Gwf;-><init>(FI)V

    .line 20
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .param p1, "strokeRatio"    # F
    .param p2, "strokeColor"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lc8/Gwf;->mStrokeRatio:F

    .line 28
    iput p2, p0, Lc8/Gwf;->mStrokeColor:I

    .line 29
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gwf;->mStrokeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gwf;->mStrokeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;Lc8/nvf;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmapSupplier"    # Lc8/nvf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "source"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 39
    .local v8, "minImgSize":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    div-int/lit8 v9, v17, 0x2

    .line 40
    .local v9, "offsetLeft":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v17, v8, v17

    div-int/lit8 v10, v17, 0x2

    .line 41
    .local v10, "offsetTop":I
    int-to-float v0, v8

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v17, v18

    .line 43
    .local v6, "imgR":F
    const/4 v15, 0x0

    .line 44
    .local v15, "strokeWidth":F
    move v4, v6

    .line 45
    .local v4, "allR":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Gwf;->mStrokeRatio:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 46
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Gwf;->mStrokeRatio:F

    move/from16 v17, v0

    div-float v15, v6, v17

    .line 47
    add-float/2addr v4, v15

    .line 49
    :cond_0
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v4

    move/from16 v0, v17

    float-to-int v3, v0

    .line 53
    .local v3, "allD":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    .line 50
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v3, v3, v1}, Lc8/nvf;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 56
    .local v16, "target":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v12, Landroid/graphics/BitmapShader;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v12, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 59
    .local v12, "shader":Landroid/graphics/BitmapShader;
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 60
    :cond_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v7, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 62
    invoke-virtual {v12, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 64
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {v5, v4, v4, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Gwf;->mStrokeRatio:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_3

    .line 69
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 70
    .local v14, "strokePath":Landroid/graphics/Path;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .local v13, "strokePaint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Gwf;->mStrokeColor:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v15, v17

    sub-float v17, v4, v17

    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v4, v4, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 76
    invoke-virtual {v5, v14, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 78
    .end local v13    # "strokePaint":Landroid/graphics/Paint;
    .end local v14    # "strokePath":Landroid/graphics/Path;
    :cond_3
    return-object v16

    .line 53
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "shader":Landroid/graphics/BitmapShader;
    .end local v16    # "target":Landroid/graphics/Bitmap;
    :cond_4
    sget-object v17, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_0
.end method
