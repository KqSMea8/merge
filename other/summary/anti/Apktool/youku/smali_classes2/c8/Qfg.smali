.class public Lc8/Qfg;
.super Landroid/graphics/drawable/Drawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetShadowDrawable"
.end annotation


# static fields
.field private static final BOTTOM_TO_TOP:I = 0x3

.field private static final LEFT_TO_RIGHT:I = 0x0

.field private static final RIGHT_TO_LEFT:I = 0x2

.field private static final TOP_TO_BOTTOM:I = 0x1


# instance fields
.field private blurRadius:F

.field private height:F

.field private paint:Landroid/graphics/Paint;

.field private paths:[Landroid/graphics/Path;

.field private radii:[F

.field private shades:[Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowXSize:F

.field private shadowYSize:F

.field private width:F


# direct methods
.method private constructor <init>(IIFFFFI[F)V
    .locals 4
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "blurRadius"    # F
    .param p6, "spread"    # F
    .param p7, "shadowColor"    # I
    .param p8, "radii"    # [F

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 350
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 345
    new-array v0, v1, [Landroid/graphics/Shader;

    iput-object v0, p0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    .line 346
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    .line 351
    iput p5, p0, Lc8/Qfg;->blurRadius:F

    .line 352
    iput p7, p0, Lc8/Qfg;->shadowColor:I

    .line 354
    int-to-float v0, p1

    mul-float v1, p3, v2

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Qfg;->width:F

    .line 355
    int-to-float v0, p2

    mul-float v1, p4, v2

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Qfg;->height:F

    .line 357
    add-float v0, p3, p6

    iput v0, p0, Lc8/Qfg;->shadowXSize:F

    .line 358
    add-float v0, p4, p6

    iput v0, p0, Lc8/Qfg;->shadowYSize:F

    .line 360
    iput-object p8, p0, Lc8/Qfg;->radii:[F

    .line 362
    invoke-virtual {p0, v3, v3, p1, p2}, Lc8/Qfg;->setBounds(IIII)V

    .line 363
    invoke-direct {p0}, Lc8/Qfg;->prepare()V

    .line 364
    return-void
.end method

.method synthetic constructor <init>(IIFFFFI[FLc8/Lfg;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # I
    .param p8, "x7"    # [F
    .param p9, "x8"    # Lc8/Lfg;

    .prologue
    .line 330
    invoke-direct/range {p0 .. p8}, Lc8/Qfg;-><init>(IIFFFFI[F)V

    return-void
.end method

.method private prepare()V
    .locals 24

    .prologue
    .line 377
    new-instance v12, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v12, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 378
    .local v12, "a":Landroid/graphics/PointF;
    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v5, v0, Lc8/Qfg;->width:F

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 379
    .local v13, "b":Landroid/graphics/PointF;
    new-instance v15, Landroid/graphics/PointF;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->height:F

    invoke-direct {v15, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 380
    .local v15, "c":Landroid/graphics/PointF;
    new-instance v16, Landroid/graphics/PointF;

    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 382
    .local v16, "d":Landroid/graphics/PointF;
    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v5, v0, Lc8/Qfg;->shadowXSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->shadowYSize:F

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 383
    .local v17, "e":Landroid/graphics/PointF;
    new-instance v18, Landroid/graphics/PointF;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->shadowXSize:F

    sub-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 384
    .local v18, "f":Landroid/graphics/PointF;
    new-instance v19, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lc8/Qfg;->shadowYSize:F

    sub-float/2addr v6, v7

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 385
    .local v19, "g":Landroid/graphics/PointF;
    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 387
    .local v20, "h":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->blurRadius:F

    sub-float v2, v5, v6

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->shadowColor:I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 388
    .local v1, "ltr":Landroid/graphics/Shader;
    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->blurRadius:F

    sub-float v4, v5, v6

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lc8/Qfg;->shadowColor:I

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 389
    .local v2, "ttb":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->blurRadius:F

    add-float v4, v5, v6

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v8, v0, Lc8/Qfg;->shadowColor:I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 390
    .local v3, "rtl":Landroid/graphics/Shader;
    new-instance v4, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lc8/Qfg;->blurRadius:F

    add-float/2addr v6, v7

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v9, v0, Lc8/Qfg;->shadowColor:I

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 392
    .local v4, "btt":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    const/4 v6, 0x3

    aput-object v4, v5, v6

    .line 397
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 398
    .local v21, "ltrPath":Landroid/graphics/Path;
    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 399
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 400
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 401
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 404
    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    .line 405
    .local v23, "ttbPath":Landroid/graphics/Path;
    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 406
    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v6, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    .line 411
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 412
    .local v22, "rtlPath":Landroid/graphics/Path;
    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v6, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 413
    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 415
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 418
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 419
    .local v14, "bttPath":Landroid/graphics/Path;
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 420
    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v6, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    .line 426
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x1

    aput-object v23, v5, v6

    .line 427
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x2

    aput-object v22, v5, v6

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    const/4 v6, 0x3

    aput-object v14, v5, v6

    .line 430
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Qfg;->shadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 438
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 439
    .local v0, "border":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    .local v3, "rectF":Landroid/graphics/RectF;
    iget-object v5, p0, Lc8/Qfg;->radii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_0

    .line 445
    iget-object v5, p0, Lc8/Qfg;->shades:[Landroid/graphics/Shader;

    aget-object v4, v5, v1

    .line 446
    .local v4, "shader":Landroid/graphics/Shader;
    iget-object v5, p0, Lc8/Qfg;->paths:[Landroid/graphics/Path;

    aget-object v2, v5, v1

    .line 447
    .local v2, "path":Landroid/graphics/Path;
    iget-object v5, p0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 448
    iget-object v5, p0, Lc8/Qfg;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v4    # "shader":Landroid/graphics/Shader;
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 455
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 460
    return-void
.end method
