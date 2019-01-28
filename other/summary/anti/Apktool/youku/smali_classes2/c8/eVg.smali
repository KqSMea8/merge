.class public Lc8/eVg;
.super Lc8/DOf;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lc8/eVg;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc8/eVg;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lc8/DOf;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    .line 49
    const/high16 v0, -0x1000000

    iput v0, p0, Lc8/eVg;->mBorderColor:I

    .line 50
    iput v1, p0, Lc8/eVg;->mBorderWidth:I

    .line 51
    iput v1, p0, Lc8/eVg;->mFillColor:I

    .line 69
    invoke-direct {p0}, Lc8/eVg;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/eVg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lc8/DOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    .line 44
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    .line 49
    iput v3, p0, Lc8/eVg;->mBorderColor:I

    .line 50
    iput v2, p0, Lc8/eVg;->mBorderWidth:I

    .line 51
    iput v2, p0, Lc8/eVg;->mFillColor:I

    .line 78
    sget-object v1, Lcom/youku/phone/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->CircleImageView_civ_border_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lc8/eVg;->mBorderWidth:I

    .line 82
    sget v1, Lcom/youku/phone/R$styleable;->CircleImageView_civ_border_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lc8/eVg;->mBorderColor:I

    .line 84
    sget v1, Lcom/youku/phone/R$styleable;->CircleImageView_civ_border_overlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/eVg;->mBorderOverlay:Z

    .line 86
    sget v1, Lcom/youku/phone/R$styleable;->CircleImageView_civ_fill_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lc8/eVg;->mFillColor:I

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-direct {p0}, Lc8/eVg;->init()V

    .line 90
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 247
    if-nez p1, :cond_0

    move-object v0, v3

    .line 271
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 251
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 252
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 258
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 259
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lc8/eVg;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 271
    goto :goto_0

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lc8/eVg;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lc8/eVg;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lc8/DOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/eVg;->mReady:Z

    .line 96
    iget-boolean v0, p0, Lc8/eVg;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/eVg;->mSetupPending:Z

    .line 100
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 276
    iget-boolean v0, p0, Lc8/eVg;->mReady:Z

    if-nez v0, :cond_1

    .line 277
    iput-boolean v5, p0, Lc8/eVg;->mSetupPending:Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lc8/eVg;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc8/eVg;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :cond_2
    iget-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 286
    invoke-virtual {p0}, Lc8/eVg;->invalidate()V

    goto :goto_0

    .line 290
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lc8/eVg;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 292
    iget-object v0, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v0, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/eVg;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 295
    iget-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/eVg;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/eVg;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    iget-object v0, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v0, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    iget-object v0, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/eVg;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lc8/eVg;->mBitmapHeight:I

    .line 305
    iget-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lc8/eVg;->mBitmapWidth:I

    .line 307
    iget-object v0, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/eVg;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc8/eVg;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    iget-object v0, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lc8/eVg;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    .line 309
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lc8/eVg;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc8/eVg;->mBorderRadius:F

    .line 311
    iget-object v0, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lc8/eVg;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 312
    iget-boolean v0, p0, Lc8/eVg;->mBorderOverlay:Z

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lc8/eVg;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lc8/eVg;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 315
    :cond_4
    iget-object v0, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc8/eVg;->mDrawableRadius:F

    .line 317
    invoke-direct {p0}, Lc8/eVg;->updateShaderMatrix()V

    .line 318
    invoke-virtual {p0}, Lc8/eVg;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 326
    .local v1, "dy":F
    iget-object v3, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 328
    iget v3, p0, Lc8/eVg;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lc8/eVg;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 329
    iget-object v3, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lc8/eVg;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 330
    .local v2, "scale":F
    iget-object v3, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lc8/eVg;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 336
    :goto_0
    iget-object v3, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 337
    iget-object v3, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 339
    iget-object v3, p0, Lc8/eVg;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lc8/eVg;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 340
    return-void

    .line 332
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lc8/eVg;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 333
    .restart local v2    # "scale":F
    iget-object v3, p0, Lc8/eVg;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lc8/eVg;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lc8/eVg;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lc8/eVg;->mBorderWidth:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lc8/eVg;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lc8/eVg;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lc8/eVg;->mBorderOverlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 123
    iget-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lc8/eVg;->mFillColor:I

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lc8/eVg;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lc8/eVg;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lc8/eVg;->mDrawableRadius:F

    iget-object v3, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    :cond_2
    invoke-virtual {p0}, Lc8/eVg;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lc8/eVg;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lc8/eVg;->mDrawableRadius:F

    iget-object v3, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, p0, Lc8/eVg;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lc8/eVg;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lc8/eVg;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lc8/eVg;->mBorderRadius:F

    iget-object v3, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Lc8/DOf;->onSizeChanged(IIII)V

    .line 139
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 140
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 147
    iget v0, p0, Lc8/eVg;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iput p1, p0, Lc8/eVg;->mBorderColor:I

    .line 152
    iget-object v0, p0, Lc8/eVg;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/eVg;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lc8/eVg;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-virtual {p0}, Lc8/eVg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/eVg;->setBorderColor(I)V

    .line 158
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 196
    iget-boolean v0, p0, Lc8/eVg;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lc8/eVg;->mBorderOverlay:Z

    .line 201
    invoke-direct {p0}, Lc8/eVg;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 183
    iget v0, p0, Lc8/eVg;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iput p1, p0, Lc8/eVg;->mBorderWidth:I

    .line 188
    invoke-direct {p0}, Lc8/eVg;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/eVg;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lc8/eVg;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 242
    iget-object v0, p0, Lc8/eVg;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/eVg;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 243
    invoke-virtual {p0}, Lc8/eVg;->invalidate()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 165
    iget v0, p0, Lc8/eVg;->mFillColor:I

    if-ne p1, v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iput p1, p0, Lc8/eVg;->mFillColor:I

    .line 170
    iget-object v0, p0, Lc8/eVg;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {p0}, Lc8/eVg;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1
    .param p1, "fillColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-virtual {p0}, Lc8/eVg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/eVg;->setFillColor(I)V

    .line 176
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lc8/DOf;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iput-object p1, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    .line 208
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 209
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lc8/DOf;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    instance-of v0, p1, Lc8/Zvf;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 215
    check-cast v0, Lc8/Zvf;

    invoke-virtual {v0}, Lc8/Zvf;->downgrade2Passable()V

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lc8/eVg;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 219
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 223
    invoke-super {p0, p1}, Lc8/DOf;->setImageResource(I)V

    .line 224
    invoke-virtual {p0}, Lc8/eVg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/eVg;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    .line 225
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 226
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lc8/DOf;->setImageURI(Landroid/net/Uri;)V

    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/eVg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/eVg;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/eVg;->mBitmap:Landroid/graphics/Bitmap;

    .line 232
    invoke-direct {p0}, Lc8/eVg;->setup()V

    .line 233
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 109
    sget-object v0, Lc8/eVg;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method
