.class public abstract Lc8/bco;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"

# interfaces
.implements Lc8/uco;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aco;,
        Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;,
        Lc8/Zbo;,
        Lc8/Ybo;
    }
.end annotation


# static fields
.field protected static final LOG_ENABLED:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "ImageViewTouchBase"

.field public static final ZOOM_INVALID:F = -1.0f


# instance fields
.field protected final DEFAULT_ANIMATION_DURATION:I

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmapChanged:Z

.field protected mBitmapRect:Landroid/graphics/RectF;

.field private mCenter:Landroid/graphics/PointF;

.field protected mCenterRect:Landroid/graphics/RectF;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDrawableChangeListener:Lc8/Ybo;

.field protected mEasing:Lc8/gco;

.field protected mHandler:Landroid/os/Handler;

.field protected mLayoutRunnable:Ljava/lang/Runnable;

.field protected final mMatrixValues:[F

.field private mMaxZoom:F

.field private mMaxZoomDefined:Z

.field private mMinZoom:F

.field private mMinZoomDefined:Z

.field protected mNextMatrix:Landroid/graphics/Matrix;

.field private mOnLayoutChangeListener:Lc8/Zbo;

.field private mOnScaleListener:Lc8/aco;

.field protected mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

.field private mScaleTypeChanged:Z

.field protected mScrollRect:Landroid/graphics/RectF;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field private mThisHeight:I

.field private mThisWidth:I

.field protected mUserScaled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lc8/fco;

    invoke-direct {v0}, Lc8/fco;-><init>()V

    iput-object v0, p0, Lc8/bco;->mEasing:Lc8/gco;

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/bco;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bco;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bco;->mUserScaled:Z

    .line 91
    iput v1, p0, Lc8/bco;->mMaxZoom:F

    .line 92
    iput v1, p0, Lc8/bco;->mMinZoom:F

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/bco;->mMatrixValues:[F

    .line 101
    iput v2, p0, Lc8/bco;->mThisWidth:I

    .line 102
    iput v2, p0, Lc8/bco;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mCenter:Landroid/graphics/PointF;

    .line 105
    sget-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    iput-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 109
    const/16 v0, 0x190

    iput v0, p0, Lc8/bco;->DEFAULT_ANIMATION_DURATION:I

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mBitmapRect:Landroid/graphics/RectF;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mCenterRect:Landroid/graphics/RectF;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    .line 120
    invoke-virtual {p0}, Lc8/bco;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lc8/fco;

    invoke-direct {v0}, Lc8/fco;-><init>()V

    iput-object v0, p0, Lc8/bco;->mEasing:Lc8/gco;

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/bco;->mHandler:Landroid/os/Handler;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bco;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bco;->mUserScaled:Z

    .line 91
    iput v1, p0, Lc8/bco;->mMaxZoom:F

    .line 92
    iput v1, p0, Lc8/bco;->mMinZoom:F

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/bco;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/bco;->mMatrixValues:[F

    .line 101
    iput v2, p0, Lc8/bco;->mThisWidth:I

    .line 102
    iput v2, p0, Lc8/bco;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mCenter:Landroid/graphics/PointF;

    .line 105
    sget-object v0, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    iput-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 109
    const/16 v0, 0x190

    iput v0, p0, Lc8/bco;->DEFAULT_ANIMATION_DURATION:I

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mBitmapRect:Landroid/graphics/RectF;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mCenterRect:Landroid/graphics/RectF;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    .line 125
    invoke-virtual {p0}, Lc8/bco;->init()V

    .line 126
    return-void
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 423
    if-eqz p1, :cond_4

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :goto_0
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_5

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_5

    .line 434
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 435
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 436
    iput p3, p0, Lc8/bco;->mMinZoom:F

    .line 437
    iput p4, p0, Lc8/bco;->mMaxZoom:F

    .line 438
    iput-boolean v3, p0, Lc8/bco;->mMinZoomDefined:Z

    .line 439
    iput-boolean v3, p0, Lc8/bco;->mMaxZoomDefined:Z

    .line 440
    iget-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne v0, v1, :cond_2

    .line 442
    :cond_0
    iget v0, p0, Lc8/bco;->mMinZoom:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 443
    iput-boolean v4, p0, Lc8/bco;->mMinZoomDefined:Z

    .line 444
    iput v2, p0, Lc8/bco;->mMinZoom:F

    .line 446
    :cond_1
    iget v0, p0, Lc8/bco;->mMaxZoom:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 447
    iput-boolean v3, p0, Lc8/bco;->mMaxZoomDefined:Z

    .line 448
    iput v2, p0, Lc8/bco;->mMaxZoom:F

    .line 457
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 458
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lc8/bco;->mNextMatrix:Landroid/graphics/Matrix;

    .line 460
    :cond_3
    iput-boolean v3, p0, Lc8/bco;->mBitmapChanged:Z

    .line 461
    invoke-virtual {p0}, Lc8/bco;->requestLayout()V

    .line 462
    return-void

    .line 430
    :cond_4
    iget-object v0, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 431
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 452
    :cond_5
    iput v2, p0, Lc8/bco;->mMinZoom:F

    .line 453
    iput v2, p0, Lc8/bco;->mMaxZoom:F

    .line 454
    iput-boolean v4, p0, Lc8/bco;->mMinZoomDefined:Z

    .line 455
    iput-boolean v4, p0, Lc8/bco;->mMaxZoomDefined:Z

    goto :goto_1
.end method

.method protected center(ZZ)V
    .locals 4
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/4 v3, 0x0

    .line 722
    invoke-virtual {p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 723
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v2, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, p1, p2}, Lc8/bco;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v1

    .line 727
    .local v1, "rect":Landroid/graphics/RectF;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 731
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lc8/bco;->postTranslate(FF)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/bco;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method

.method protected computeMaxZoom()F
    .locals 6

    .prologue
    .line 508
    invoke-virtual {p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 510
    const/high16 v3, 0x3f800000    # 1.0f

    .line 518
    :goto_0
    return v3

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lc8/bco;->mThisWidth:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 513
    .local v2, "fw":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lc8/bco;->mThisHeight:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 514
    .local v1, "fh":F
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v3, v4, v5

    .line 516
    .local v3, "scale":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "computeMaxZoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected computeMinZoom()F
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 522
    invoke-virtual {p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 523
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    move v1, v2

    .line 531
    :goto_0
    return v1

    .line 526
    :cond_0
    iget-object v3, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 527
    .local v1, "scale":F
    div-float v3, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "computeMinZoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 951
    invoke-virtual {p0}, Lc8/bco;->clear()V

    .line 952
    return-void
.end method

.method protected fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 485
    iget-object v0, p0, Lc8/bco;->mDrawableChangeListener:Lc8/Ybo;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lc8/bco;->mDrawableChangeListener:Lc8/Ybo;

    invoke-interface {v0, p1}, Lc8/Ybo;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :cond_0
    return-void
.end method

.method protected fireOnLayoutChangeListener(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lc8/bco;->mOnLayoutChangeListener:Lc8/Zbo;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lc8/bco;->mOnLayoutChangeListener:Lc8/Zbo;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lc8/Zbo;->onLayoutChanged(ZIIII)V

    .line 482
    :cond_0
    return-void
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lc8/bco;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 692
    invoke-virtual {p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 693
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 694
    const/4 v2, 0x0

    .line 700
    :goto_0
    return-object v2

    .line 696
    :cond_0
    invoke-virtual {p0, p1}, Lc8/bco;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 697
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lc8/bco;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 698
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 697
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 699
    iget-object v2, p0, Lc8/bco;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 700
    iget-object v2, p0, Lc8/bco;->mBitmapRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method protected getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lc8/bco;->mCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .locals 12
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;
    .param p2, "horizontal"    # Z
    .param p3, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 737
    invoke-virtual {p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 738
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 739
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 767
    :goto_0
    return-object v8

    .line 741
    :cond_0
    iget-object v8, p0, Lc8/bco;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 742
    invoke-virtual {p0, p1}, Lc8/bco;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 743
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 744
    .local v3, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 745
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 746
    .local v1, "deltaY":F
    if-eqz p3, :cond_1

    .line 747
    iget v5, p0, Lc8/bco;->mThisHeight:I

    .line 748
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 749
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 756
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 757
    iget v6, p0, Lc8/bco;->mThisWidth:I

    .line 758
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 759
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 766
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    iget-object v8, p0, Lc8/bco;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v0, v1, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 767
    iget-object v8, p0, Lc8/bco;->mCenterRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 750
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 751
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 752
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 753
    iget v8, p0, Lc8/bco;->mThisHeight:I

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 760
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 761
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 762
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 763
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method protected getDefaultScale(Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;)F
    .locals 2
    .param p1, "type"    # Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 339
    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v1, :cond_0

    .line 347
    :goto_0
    return v0

    .line 342
    :cond_0
    sget-object v1, Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v1, :cond_1

    .line 344
    iget-object v1, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayType()Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    return-object v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lc8/bco;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 568
    iget-object v0, p0, Lc8/bco;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 569
    iget-object v0, p0, Lc8/bco;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 570
    iget-object v0, p0, Lc8/bco;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lc8/bco;->mMaxZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lc8/bco;->computeMaxZoom()F

    move-result v0

    iput v0, p0, Lc8/bco;->mMaxZoom:F

    .line 543
    :cond_0
    iget v0, p0, Lc8/bco;->mMaxZoom:F

    return v0
.end method

.method public getMinScale()F
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lc8/bco;->mMinZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lc8/bco;->computeMinZoom()F

    move-result v0

    iput v0, p0, Lc8/bco;->mMinZoom:F

    .line 555
    :cond_0
    iget v0, p0, Lc8/bco;->mMinZoom:F

    return v0
.end method

.method public getOnScaleListener()Lc8/aco;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lc8/bco;->mOnScaleListener:Lc8/aco;

    return-object v0
.end method

.method protected getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 620
    iget v9, p0, Lc8/bco;->mThisWidth:I

    int-to-float v6, v9

    .line 621
    .local v6, "viewWidth":F
    iget v9, p0, Lc8/bco;->mThisHeight:I

    int-to-float v5, v9

    .line 623
    .local v5, "viewHeight":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getProperBaseMatrix. view: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v7, v9

    .line 627
    .local v7, "w":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v0, v9

    .line 629
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 630
    cmpl-float v9, v7, v6

    if-gtz v9, :cond_0

    cmpl-float v9, v0, v5

    if-lez v9, :cond_1

    .line 631
    :cond_0
    div-float v8, v6, v7

    .line 632
    .local v8, "widthScale":F
    div-float v1, v5, v0

    .line 633
    .local v1, "heightScale":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 634
    .local v2, "scale":F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 635
    mul-float v9, v7, v2

    sub-float v9, v6, v9

    div-float v4, v9, v11

    .line 636
    .local v4, "tw":F
    mul-float v9, v0, v2

    sub-float v9, v5, v9

    div-float v3, v9, v11

    .line 637
    .local v3, "th":F
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 649
    :goto_0
    invoke-virtual {p0, p2}, Lc8/bco;->printMatrix(Landroid/graphics/Matrix;)V

    .line 651
    return-void

    .line 640
    .end local v1    # "heightScale":F
    .end local v2    # "scale":F
    .end local v3    # "th":F
    .end local v4    # "tw":F
    .end local v8    # "widthScale":F
    :cond_1
    div-float v8, v6, v7

    .line 641
    .restart local v8    # "widthScale":F
    div-float v1, v5, v0

    .line 642
    .restart local v1    # "heightScale":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 643
    .restart local v2    # "scale":F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 644
    mul-float v9, v7, v2

    sub-float v9, v6, v9

    div-float v4, v9, v11

    .line 645
    .restart local v4    # "tw":F
    mul-float v9, v0, v2

    sub-float v9, v5, v9

    div-float v3, v9, v11

    .line 646
    .restart local v3    # "th":F
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method protected getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 660
    iget v7, p0, Lc8/bco;->mThisWidth:I

    int-to-float v4, v7

    .line 661
    .local v4, "viewWidth":F
    iget v7, p0, Lc8/bco;->mThisHeight:I

    int-to-float v3, v7

    .line 662
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v5, v7

    .line 663
    .local v5, "w":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v0, v7

    .line 664
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 665
    div-float v6, v4, v5

    .line 666
    .local v6, "widthScale":F
    div-float v1, v3, v0

    .line 667
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 668
    .local v2, "scale":F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 669
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 671
    return-void
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/bco;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lc8/bco;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 675
    iget-object v0, p0, Lc8/bco;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lc8/bco;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lc8/bco;->fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V

    .line 474
    return-void
.end method

.method protected onImageMatrixChanged()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 206
    const-string/jumbo v18, "ImageViewTouchBase"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onLayout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", bitmapChanged: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", scaleChanged: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, "deltaX":I
    const/4 v7, 0x0

    .line 212
    .local v7, "deltaY":I
    if-eqz p1, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget v15, v0, Lc8/bco;->mThisWidth:I

    .line 214
    .local v15, "oldw":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/bco;->mThisHeight:I

    .line 215
    .local v14, "oldh":I
    sub-int v18, p4, p2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/bco;->mThisWidth:I

    .line 216
    sub-int v18, p5, p3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/bco;->mThisHeight:I

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bco;->mThisWidth:I

    move/from16 v18, v0

    sub-int v6, v18, v15

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bco;->mThisHeight:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mCenter:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/bco;->mThisWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mCenter:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/bco;->mThisHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 223
    .end local v14    # "oldh":I
    .end local v15    # "oldw":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mLayoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    .line 224
    .local v16, "r":Ljava/lang/Runnable;
    if-eqz v16, :cond_1

    .line 225
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/bco;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 226
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    .line 228
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 229
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_13

    .line 230
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 231
    :cond_2
    const/high16 v17, 0x3f800000    # 1.0f

    .line 233
    .local v17, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->getDefaultScale(Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v10

    .line 234
    .local v10, "old_default_scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v11

    .line 235
    .local v11, "old_matrix_scale":F
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getScale()F

    move-result v13

    .line 236
    .local v13, "old_scale":F
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v19, v19, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 237
    .local v12, "old_min_scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lc8/bco;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->getScale(Landroid/graphics/Matrix;)F

    move-result v9

    .line 240
    .local v9, "new_matrix_scale":F
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "old matrix scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "new matrix scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "old min scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "old scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 248
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "display type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mNextMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mNextMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 252
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/bco;->mNextMatrix:Landroid/graphics/Matrix;

    .line 253
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getScale()F

    move-result v17

    .line 258
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getScale()F

    move-result v18

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_4

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/bco;->zoomTo(F)V

    .line 290
    :cond_4
    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/bco;->mUserScaled:Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getMaxScale()F

    move-result v18

    cmpl-float v18, v17, v18

    if-gtz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getMinScale()F

    move-result v18

    cmpg-float v18, v17, v18

    if-gez v18, :cond_6

    .line 294
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/bco;->zoomTo(F)V

    .line 296
    :cond_6
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/bco;->center(ZZ)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lc8/bco;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_7
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 301
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/bco;->onLayoutChanged(IIII)V

    .line 303
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 304
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/bco;->mScaleTypeChanged:Z

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 307
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/bco;->mBitmapChanged:Z

    .line 310
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "new scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getScale()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .end local v9    # "new_matrix_scale":F
    .end local v10    # "old_default_scale":F
    .end local v11    # "old_matrix_scale":F
    .end local v12    # "old_min_scale":F
    .end local v13    # "old_scale":F
    .end local v17    # "scale":F
    :cond_c
    :goto_2
    return-void

    .line 255
    .restart local v9    # "new_matrix_scale":F
    .restart local v10    # "old_default_scale":F
    .restart local v11    # "old_matrix_scale":F
    .restart local v12    # "old_min_scale":F
    .restart local v13    # "old_scale":F
    .restart local v17    # "scale":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Matrix;->reset()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->getDefaultScale(Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v17

    goto/16 :goto_0

    .line 263
    :cond_e
    if-eqz p1, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mMinZoomDefined:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    .line 266
    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/bco;->mMinZoom:F

    .line 268
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mMaxZoomDefined:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 269
    const/high16 v18, -0x40800000    # -1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/bco;->mMaxZoom:F

    .line 271
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc8/bco;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 272
    neg-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/bco;->postTranslate(FF)V

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mUserScaled:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/bco;->getDefaultScale(Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v17

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/bco;->zoomTo(F)V

    .line 284
    :goto_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "old min scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "old scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "new scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 277
    :cond_11
    sub-float v18, v13, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v18, v20

    if-lez v18, :cond_12

    .line 278
    div-float v18, v11, v9

    mul-float v17, v18, v13

    .line 281
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/bco;->zoomTo(F)V

    goto :goto_3

    .line 315
    .end local v9    # "new_matrix_scale":F
    .end local v10    # "old_default_scale":F
    .end local v11    # "old_matrix_scale":F
    .end local v12    # "old_min_scale":F
    .end local v13    # "old_scale":F
    .end local v17    # "scale":F
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 316
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lc8/bco;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_14
    if-nez p1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 319
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/bco;->onLayoutChanged(IIII)V

    .line 321
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mBitmapChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 322
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/bco;->mBitmapChanged:Z

    .line 324
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/bco;->mScaleTypeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 325
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/bco;->mScaleTypeChanged:Z

    goto/16 :goto_2
.end method

.method protected onLayoutChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/bco;->fireOnLayoutChangeListener(IIII)V

    .line 505
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 143
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 144
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 145
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 146
    .local v1, "heightSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMeasure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " widthSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " heightMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " heiSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 151
    return-void
.end method

.method protected onZoom(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 837
    return-void
.end method

.method protected onZoomAnimationCompleted(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 840
    return-void
.end method

.method protected panBy(DD)V
    .locals 7
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 853
    invoke-virtual {p0}, Lc8/bco;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 854
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 855
    iget-object v1, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lc8/bco;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 856
    iget-object v1, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lc8/bco;->mScrollRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lc8/bco;->postTranslate(FF)V

    .line 857
    invoke-virtual {p0, v5, v5}, Lc8/bco;->center(ZZ)V

    .line 858
    return-void
.end method

.method protected postScale(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    iget-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 793
    invoke-virtual {p0}, Lc8/bco;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/bco;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 794
    iget-object v0, p0, Lc8/bco;->mOnScaleListener:Lc8/aco;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lc8/bco;->mOnScaleListener:Lc8/aco;

    invoke-interface {v0, p1, p2, p3}, Lc8/aco;->onScale(FFF)V

    .line 797
    :cond_0
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 771
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postTranslate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 776
    invoke-virtual {p0}, Lc8/bco;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/bco;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 778
    :cond_1
    return-void
.end method

.method public printMatrix(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 679
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lc8/bco;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 680
    .local v0, "scalex":F
    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lc8/bco;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 681
    .local v1, "scaley":F
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lc8/bco;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    .line 682
    .local v2, "tx":F
    const/4 v4, 0x5

    invoke-virtual {p0, p1, v4}, Lc8/bco;->getValue(Landroid/graphics/Matrix;I)F

    move-result v3

    .line 683
    .local v3, "ty":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "matrix: { x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", scalex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", scaley: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    return-void
.end method

.method public resetDisplay()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bco;->mBitmapChanged:Z

    .line 335
    invoke-virtual {p0}, Lc8/bco;->requestLayout()V

    .line 336
    return-void
.end method

.method public scrollBy(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 849
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/bco;->panBy(DD)V

    .line 850
    return-void
.end method

.method protected scrollBy(FFD)V
    .locals 11
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "durationMs"    # D

    .prologue
    .line 888
    float-to-double v6, p1

    .line 889
    .local v6, "dx":D
    float-to-double v8, p2

    .line 890
    .local v8, "dy":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 891
    .local v4, "startTime":J
    iget-object v10, p0, Lc8/bco;->mHandler:Landroid/os/Handler;

    new-instance v0, Lc8/Wbo;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v9}, Lc8/Wbo;-><init>(Lc8/bco;DJDD)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method public setDisplayType(Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;)V
    .locals 2
    .param p1, "type"    # Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .prologue
    .line 173
    iget-object v0, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq p1, v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bco;->mUserScaled:Z

    .line 178
    iput-object p1, p0, Lc8/bco;->mScaleType:Lcom/youku/us/baseuikit/view/imagezoom/ImageViewTouchBase$DisplayType;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bco;->mScaleTypeChanged:Z

    .line 180
    invoke-virtual {p0}, Lc8/bco;->requestLayout()V

    .line 182
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lc8/bco;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 365
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 377
    new-instance v0, Lc8/oco;

    invoke-direct {v0, p1}, Lc8/oco;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p4}, Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 387
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 403
    invoke-virtual {p0}, Lc8/bco;->getWidth()I

    move-result v6

    .line 404
    .local v6, "viewWidth":I
    if-gtz v6, :cond_0

    .line 405
    new-instance v0, Lc8/Vbo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Vbo;-><init>(Lc8/bco;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    iput-object v0, p0, Lc8/bco;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/bco;->_setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 575
    invoke-virtual {p0}, Lc8/bco;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 576
    .local v0, "current":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .line 577
    .local v1, "needUpdate":Z
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 578
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 579
    :cond_1
    const/4 v1, 0x1

    .line 581
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 582
    if-eqz v1, :cond_3

    .line 583
    invoke-virtual {p0}, Lc8/bco;->onImageMatrixChanged()V

    .line 585
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lc8/bco;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method protected setMaxScale(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    iput p1, p0, Lc8/bco;->mMaxZoom:F

    .line 200
    return-void
.end method

.method protected setMinScale(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMinZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    iput p1, p0, Lc8/bco;->mMinZoom:F

    .line 193
    return-void
.end method

.method public setOnDrawableChangedListener(Lc8/Ybo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Ybo;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/bco;->mDrawableChangeListener:Lc8/Ybo;

    .line 130
    return-void
.end method

.method public setOnLayoutChangeListener(Lc8/Zbo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Zbo;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/bco;->mOnLayoutChangeListener:Lc8/Zbo;

    .line 134
    return-void
.end method

.method public setOnScaleListener(Lc8/aco;)V
    .locals 0
    .param p1, "mOnScaleListener"    # Lc8/aco;

    .prologue
    .line 962
    iput-object p1, p0, Lc8/bco;->mOnScaleListener:Lc8/aco;

    .line 963
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 155
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;
    .param p2, "scrollRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 861
    if-nez p1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lc8/bco;->mThisHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 865
    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 867
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lc8/bco;->mThisWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 868
    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 870
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lc8/bco;->mThisHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 872
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 874
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget v1, p0, Lc8/bco;->mThisHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 876
    iget v0, p0, Lc8/bco;->mThisHeight:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 878
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 879
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 881
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lc8/bco;->mThisWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 882
    iget v0, p0, Lc8/bco;->mThisWidth:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public zoomTo(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 804
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result p1

    .line 807
    :cond_0
    invoke-virtual {p0}, Lc8/bco;->getMinScale()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 808
    invoke-virtual {p0}, Lc8/bco;->getMinScale()F

    move-result p1

    .line 810
    :cond_1
    invoke-virtual {p0}, Lc8/bco;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 811
    .local v0, "center":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v2}, Lc8/bco;->zoomTo(FFF)V

    .line 812
    return-void
.end method

.method public zoomTo(FF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "durationMs"    # F

    .prologue
    .line 821
    invoke-virtual {p0}, Lc8/bco;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 822
    .local v0, "center":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v2, p2}, Lc8/bco;->zoomTo(FFFF)V

    .line 823
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 826
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 827
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result p1

    .line 829
    :cond_0
    invoke-virtual {p0}, Lc8/bco;->getScale()F

    move-result v1

    .line 830
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 831
    .local v0, "deltaScale":F
    invoke-virtual {p0, v0, p2, p3}, Lc8/bco;->postScale(FFF)V

    .line 832
    invoke-virtual {p0}, Lc8/bco;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lc8/bco;->onZoom(F)V

    .line 833
    invoke-virtual {p0, v3, v3}, Lc8/bco;->center(ZZ)V

    .line 834
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 12
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 919
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 920
    invoke-virtual {p0}, Lc8/bco;->getMaxScale()F

    move-result p1

    .line 922
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 923
    .local v4, "startTime":J
    invoke-virtual {p0}, Lc8/bco;->getScale()F

    move-result v7

    .line 924
    .local v7, "oldScale":F
    sub-float v6, p1, v7

    .line 925
    .local v6, "deltaScale":F
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 926
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 927
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc8/bco;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v10

    .line 928
    .local v10, "rect":Landroid/graphics/RectF;
    iget v1, v10, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v8, p2, v1

    .line 929
    .local v8, "destX":F
    iget v1, v10, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    add-float v9, p3, v1

    .line 930
    .local v9, "destY":F
    iget-object v11, p0, Lc8/bco;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/Xbo;

    move-object v2, p0

    move/from16 v3, p4

    invoke-direct/range {v1 .. v9}, Lc8/Xbo;-><init>(Lc8/bco;FJFFFF)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    return-void
.end method
