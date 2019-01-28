.class public Lc8/fZo;
.super Landroid/graphics/drawable/Drawable;
.source "DonutCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DonutCircleDrawable"
.end annotation


# instance fields
.field private border:F

.field private borderPaint:Landroid/graphics/Paint;

.field private final constant:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/RectF;

.field private mBoundsConfigured:Z

.field private mPath:Landroid/graphics/Path;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private multiR:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 190
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lc8/fZo;->constant:F

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    .line 194
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/fZo;->mBitmapRect:Landroid/graphics/RectF;

    .line 205
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 207
    const v0, 0x3f851eb8    # 1.04f

    iput v0, p0, Lc8/fZo;->multiR:F

    .line 209
    iput v3, p0, Lc8/fZo;->border:F

    .line 210
    iput v2, p0, Lc8/fZo;->mBorderColor:I

    .line 212
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    .line 214
    iput-boolean v2, p0, Lc8/fZo;->mBoundsConfigured:Z

    .line 217
    iput-object p1, p0, Lc8/fZo;->mBitmap:Landroid/graphics/Bitmap;

    .line 218
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lc8/fZo;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lc8/fZo;->mBitmapWidth:I

    .line 222
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lc8/fZo;->mBitmapHeight:I

    .line 227
    :goto_0
    iget-object v0, p0, Lc8/fZo;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lc8/fZo;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lc8/fZo;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    .line 230
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/fZo;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v0, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    return-void

    .line 224
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lc8/fZo;->mBitmapHeight:I

    iput v0, p0, Lc8/fZo;->mBitmapWidth:I

    goto :goto_0
.end method

.method private configureBounds(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 300
    .local v0, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    .line 302
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_1

    .line 303
    iget-object v2, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_2

    .line 305
    iget-object v2, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 306
    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_3

    .line 307
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 308
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lc8/fZo;->mBitmapRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 309
    iget-object v2, p0, Lc8/fZo;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 310
    iget-object v2, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 311
    .end local v1    # "m":Landroid/graphics/Matrix;
    :cond_3
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v3, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v3, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v3, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_5

    .line 313
    :cond_4
    iget-object v2, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/fZo;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 314
    :cond_5
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    .line 315
    iget-object v2, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/fZo;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private drawDonutCirclePath()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 358
    iget-object v4, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 359
    .local v1, "centerX":F
    iget-object v4, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 360
    .local v2, "centerY":F
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    move v0, v2

    .line 361
    .local v0, "R":F
    :goto_0
    iget v4, p0, Lc8/fZo;->multiR:F

    mul-float/2addr v4, v6

    iget v5, p0, Lc8/fZo;->constant:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    iget v5, p0, Lc8/fZo;->constant:F

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 362
    .local v3, "projR":F
    iget v4, p0, Lc8/fZo;->border:F

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    .line 363
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 364
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v2, v0

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 365
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    add-float v5, v1, v3

    sub-float v6, v2, v3

    add-float v7, v1, v0

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 366
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    add-float v5, v1, v3

    add-float v6, v2, v3

    add-float v7, v2, v0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 367
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v1, v3

    add-float v6, v2, v3

    sub-float v7, v1, v0

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 368
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v1, v3

    sub-float v6, v2, v3

    sub-float v7, v2, v0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 369
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 370
    return-void

    .end local v0    # "R":F
    .end local v3    # "projR":F
    :cond_0
    move v0, v1

    .line 360
    goto :goto_0
.end method

.method private drawDonutPath()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 341
    iget-object v4, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 342
    .local v1, "centerX":F
    iget-object v4, p0, Lc8/fZo;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 343
    .local v2, "centerY":F
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    move v0, v2

    .line 344
    .local v0, "R":F
    :goto_0
    iget v4, p0, Lc8/fZo;->multiR:F

    mul-float/2addr v4, v6

    iget v5, p0, Lc8/fZo;->constant:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    iget v5, p0, Lc8/fZo;->constant:F

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 345
    .local v3, "projR":F
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 346
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v2, v0

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 347
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    add-float v5, v1, v3

    sub-float v6, v2, v3

    add-float v7, v1, v0

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 348
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    add-float v5, v1, v3

    add-float v6, v2, v3

    add-float v7, v2, v0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 349
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v1, v3

    add-float v6, v2, v3

    sub-float v7, v1, v0

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 350
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    sub-float v5, v1, v3

    sub-float v6, v2, v3

    sub-float v7, v2, v0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 351
    iget-object v4, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 352
    return-void

    .end local v0    # "R":F
    .end local v3    # "projR":F
    :cond_0
    move v0, v1

    .line 343
    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    .line 271
    if-nez p0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    :goto_0
    return-object v0

    .line 275
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 276
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 280
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 281
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 283
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 289
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lc8/fZo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 240
    new-instance v0, Lc8/fZo;

    invoke-direct {v0, p0, p1}, Lc8/fZo;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    .line 248
    instance-of v5, p0, Lc8/fZo;

    if-eqz v5, :cond_1

    .line 267
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p0

    .line 250
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 251
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 252
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 253
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 254
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 255
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1, p1}, Lc8/fZo;->fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object p0, v3

    .line 257
    goto :goto_0

    .line 260
    .end local v2    # "i":I
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "num":I
    :cond_3
    invoke-static {p0}, Lc8/fZo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 262
    new-instance p0, Lc8/fZo;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p1}, Lc8/fZo;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    iget-boolean v0, p0, Lc8/fZo;->mBoundsConfigured:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lc8/fZo;->configureBounds(Landroid/graphics/Canvas;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fZo;->mBoundsConfigured:Z

    .line 326
    :cond_0
    invoke-direct {p0}, Lc8/fZo;->drawDonutPath()V

    .line 327
    iget-object v0, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    iget v0, p0, Lc8/fZo;->border:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 329
    iget-object v0, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/fZo;->border:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget-object v0, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/fZo;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    invoke-direct {p0}, Lc8/fZo;->drawDonutCirclePath()V

    .line 332
    iget-object v0, p0, Lc8/fZo;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/fZo;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lc8/fZo;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lc8/fZo;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lc8/fZo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fZo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 381
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 382
    return-void
.end method

.method public setBorder(F)V
    .locals 0
    .param p1, "border"    # F

    .prologue
    .line 412
    iput p1, p0, Lc8/fZo;->border:F

    .line 413
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 414
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 417
    iput p1, p0, Lc8/fZo;->mBorderColor:I

    .line 418
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 419
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 386
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 387
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 388
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 393
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 394
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Lc8/fZo;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 399
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 400
    return-void
.end method

.method public setMultiR(F)V
    .locals 0
    .param p1, "times"    # F

    .prologue
    .line 407
    iput p1, p0, Lc8/fZo;->multiR:F

    .line 408
    invoke-virtual {p0}, Lc8/fZo;->invalidateSelf()V

    .line 409
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    iput-object p1, p0, Lc8/fZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method
