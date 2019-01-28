.class public Lc8/lgb;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kgb;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1

.field private static final DEFAULT_BORDER_WIDTH:I = 0xa

.field private static final DEFAULT_CIRCLE_BACKGROUND_COLOR:I

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

.field private mCircleBackgroundColor:I

.field private final mCircleBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lc8/lgb;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc8/lgb;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lc8/lgb;->mBorderColor:I

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lc8/lgb;->mBorderWidth:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lc8/lgb;->mCircleBackgroundColor:I

    .line 66
    invoke-direct {p0}, Lc8/lgb;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/lgb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lc8/lgb;->mBorderColor:I

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lc8/lgb;->mBorderWidth:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lc8/lgb;->mCircleBackgroundColor:I

    .line 76
    invoke-direct {p0}, Lc8/lgb;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$100(Lc8/lgb;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lc8/lgb;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private applyColorFilter()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/lgb;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 281
    invoke-virtual {p0}, Lc8/lgb;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lc8/lgb;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lc8/lgb;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 282
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lc8/lgb;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lc8/lgb;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lc8/lgb;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 284
    .local v0, "availableHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 286
    .local v3, "sideLength":I
    invoke-virtual {p0}, Lc8/lgb;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-int v6, v1, v3

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v2, v5, v6

    .line 287
    .local v2, "left":F
    invoke-virtual {p0}, Lc8/lgb;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-int v6, v0, v3

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v4, v5, v6

    .line 289
    .local v4, "top":F
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    add-float/2addr v6, v2

    int-to-float v7, v3

    add-float/2addr v7, v4

    invoke-direct {v5, v2, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 198
    if-nez p1, :cond_0

    move-object v0, v3

    .line 221
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 202
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 203
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 209
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 210
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lc8/lgb;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 221
    goto :goto_0

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lc8/lgb;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lc8/lgb;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lgb;->mReady:Z

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Lc8/kgb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/kgb;-><init>(Lc8/lgb;Lc8/jgb;)V

    invoke-virtual {p0, v0}, Lc8/lgb;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 87
    :cond_0
    iget-boolean v0, p0, Lc8/lgb;->mSetupPending:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lc8/lgb;->setup()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/lgb;->mSetupPending:Z

    .line 91
    :cond_1
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lc8/lgb;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    .line 231
    :goto_0
    invoke-direct {p0}, Lc8/lgb;->setup()V

    .line 232
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lc8/lgb;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/lgb;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setup()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 235
    iget-boolean v0, p0, Lc8/lgb;->mReady:Z

    if-nez v0, :cond_1

    .line 236
    iput-boolean v5, p0, Lc8/lgb;->mSetupPending:Z

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lc8/lgb;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc8/lgb;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :cond_2
    iget-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lc8/lgb;->invalidate()V

    goto :goto_0

    .line 249
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lc8/lgb;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 251
    iget-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    iget-object v0, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/lgb;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    iget-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/lgb;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/lgb;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    iget-object v0, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    iget-object v0, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/lgb;->mCircleBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lc8/lgb;->mBitmapHeight:I

    .line 264
    iget-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lc8/lgb;->mBitmapWidth:I

    .line 266
    iget-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lc8/lgb;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 267
    iget-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lc8/lgb;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lc8/lgb;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc8/lgb;->mBorderRadius:F

    .line 269
    iget-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 270
    iget-boolean v0, p0, Lc8/lgb;->mBorderOverlay:Z

    if-nez v0, :cond_4

    iget v0, p0, Lc8/lgb;->mBorderWidth:I

    if-lez v0, :cond_4

    .line 271
    iget-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lc8/lgb;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    iget v2, p0, Lc8/lgb;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    :cond_4
    iget-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc8/lgb;->mDrawableRadius:F

    .line 275
    invoke-direct {p0}, Lc8/lgb;->applyColorFilter()V

    .line 276
    invoke-direct {p0}, Lc8/lgb;->updateShaderMatrix()V

    .line 277
    invoke-virtual {p0}, Lc8/lgb;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 297
    .local v1, "dy":F
    iget-object v3, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 299
    iget v3, p0, Lc8/lgb;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lc8/lgb;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 300
    iget-object v3, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lc8/lgb;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 301
    .local v2, "scale":F
    iget-object v3, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lc8/lgb;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 307
    :goto_0
    iget-object v3, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 308
    iget-object v3, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    iget-object v3, p0, Lc8/lgb;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lc8/lgb;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 311
    return-void

    .line 303
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lc8/lgb;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 304
    .restart local v2    # "scale":F
    iget-object v3, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lc8/lgb;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lc8/lgb;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lc8/lgb;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 114
    iget-boolean v0, p0, Lc8/lgb;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lc8/lgb;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lc8/lgb;->mCircleBackgroundColor:I

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lc8/lgb;->mDrawableRadius:F

    iget-object v3, p0, Lc8/lgb;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lc8/lgb;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lc8/lgb;->mDrawableRadius:F

    iget-object v3, p0, Lc8/lgb;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lc8/lgb;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lc8/lgb;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lc8/lgb;->mBorderRadius:F

    iget-object v3, p0, Lc8/lgb;->mBorderPaint:Landroid/graphics/Paint;

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
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 135
    invoke-direct {p0}, Lc8/lgb;->setup()V

    .line 136
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 177
    iget-object v0, p0, Lc8/lgb;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iput-object p1, p0, Lc8/lgb;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 182
    invoke-direct {p0}, Lc8/lgb;->applyColorFilter()V

    .line 183
    invoke-virtual {p0}, Lc8/lgb;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-direct {p0}, Lc8/lgb;->initializeBitmap()V

    .line 155
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0}, Lc8/lgb;->initializeBitmap()V

    .line 161
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    invoke-direct {p0}, Lc8/lgb;->initializeBitmap()V

    .line 167
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 172
    invoke-direct {p0}, Lc8/lgb;->initializeBitmap()V

    .line 173
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 141
    invoke-direct {p0}, Lc8/lgb;->setup()V

    .line 142
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 147
    invoke-direct {p0}, Lc8/lgb;->setup()V

    .line 148
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 100
    sget-object v0, Lc8/lgb;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 101
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

    .line 103
    :cond_0
    return-void
.end method
