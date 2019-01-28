.class public Lc8/srb;
.super Ljava/lang/Object;
.source "ViewBasedBlurController.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final DEFAULT_SCALE_FACTOR:F = 8.0f

.field private static final ROUNDING_VALUE:I = 0x10


# instance fields
.field private final mBlurAlgorithm:Lc8/qrb;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScaleFactor:F

.field private roundingHeightScaleFactor:F

.field private roundingWidthScaleFactor:F


# direct methods
.method private constructor <init>(Lc8/qrb;)V
    .locals 2
    .param p1, "blurAlgorithm"    # Lc8/qrb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lc8/srb;->mScaleFactor:F

    .line 30
    iput v0, p0, Lc8/srb;->roundingWidthScaleFactor:F

    .line 31
    iput v0, p0, Lc8/srb;->roundingHeightScaleFactor:F

    .line 38
    iput-object p1, p0, Lc8/srb;->mBlurAlgorithm:Lc8/qrb;

    .line 39
    iput v1, p0, Lc8/srb;->mScaleFactor:F

    .line 40
    return-void
.end method

.method private allocateBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 94
    .local v1, "measuredWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 95
    .local v0, "measuredHeight":I
    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v6

    .line 99
    :cond_1
    int-to-float v7, v1

    invoke-direct {p0, v7}, Lc8/srb;->downScaleSize(F)I

    move-result v3

    .line 100
    .local v3, "nonRoundedScaledWidth":I
    int-to-float v7, v0

    invoke-direct {p0, v7}, Lc8/srb;->downScaleSize(F)I

    move-result v2

    .line 102
    .local v2, "nonRoundedScaledHeight":I
    invoke-direct {p0, v3}, Lc8/srb;->roundSize(I)I

    move-result v5

    .line 103
    .local v5, "scaledWidth":I
    invoke-direct {p0, v2}, Lc8/srb;->roundSize(I)I

    move-result v4

    .line 105
    .local v4, "scaledHeight":I
    int-to-float v7, v2

    int-to-float v8, v4

    div-float/2addr v7, v8

    iput v7, p0, Lc8/srb;->roundingHeightScaleFactor:F

    .line 106
    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    iput v7, p0, Lc8/srb;->roundingWidthScaleFactor:F

    .line 108
    :try_start_0
    iget-object v7, p0, Lc8/srb;->mBlurAlgorithm:Lc8/qrb;

    invoke-interface {v7}, Lc8/qrb;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 111
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method static create(Lc8/qrb;)Lc8/srb;
    .locals 1
    .param p0, "blurAlgorithm"    # Lc8/qrb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    new-instance v0, Lc8/srb;

    invoke-direct {v0, p0}, Lc8/srb;-><init>(Lc8/qrb;)V

    return-object v0
.end method

.method private downScaleSize(F)I
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 116
    iget v0, p0, Lc8/srb;->mScaleFactor:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private prepareSnapshot(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "overlayColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0, p1}, Lc8/srb;->allocateBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "allocatedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 88
    .end local v0    # "allocatedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 72
    .restart local v0    # "allocatedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget v5, p0, Lc8/srb;->mScaleFactor:F

    iget v6, p0, Lc8/srb;->roundingWidthScaleFactor:F

    mul-float v3, v5, v6

    .line 75
    .local v3, "scaleFactorX":F
    iget v5, p0, Lc8/srb;->mScaleFactor:F

    iget v6, p0, Lc8/srb;->roundingHeightScaleFactor:F

    mul-float v4, v5, v6

    .line 76
    .local v4, "scaleFactorY":F
    div-float v5, v7, v3

    div-float v6, v7, v4

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 79
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method private roundSize(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 123
    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    .line 126
    .end local p1    # "value":I
    :goto_0
    return p1

    .restart local p1    # "value":I
    :cond_0
    rem-int/lit8 v0, p1, 0x10

    sub-int v0, p1, v0

    add-int/lit8 p1, v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method createBlurOnTargetView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "overlayColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "radius"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "snapshot":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/srb;->prepareSnapshot(Landroid/view/View;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lc8/srb;->mBlurAlgorithm:Lc8/qrb;

    invoke-interface {v2, v1, p3}, Lc8/qrb;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    :goto_1
    return-object v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXBlurEXModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method
