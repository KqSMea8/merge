.class public Lc8/EOf;
.super Lc8/DOf;
.source "TZoomImageView.java"


# static fields
.field private static final MAX_SCALE_X:I = 0x5

.field private static final MAX_SCALE_Y:I = 0x5

.field private static final TYPE_DRAG:I = 0x1

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_ZOOM:I = 0x2


# instance fields
.field private mBottom:F

.field private mCurMatrix:Landroid/graphics/Matrix;

.field private mFirst:Z

.field private mIgnoreUpEvent:Z

.field private mLeft:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMidPoint:Landroid/graphics/PointF;

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mOriginalValues:[F

.field private mOverMaxScale:Z

.field private mPreMatrix:Landroid/graphics/Matrix;

.field private mRect:Landroid/graphics/Rect;

.field private mRight:F

.field private mScaleLarge:Z

.field private mScaleSmall:Z

.field private mScroller:Lc8/FOf;

.field private mStartDist:F

.field private mStartPoint:Landroid/graphics/PointF;

.field private mTop:F

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lc8/DOf;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lc8/EOf;->mType:I

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EOf;->mFirst:Z

    .line 32
    iput-boolean v1, p0, Lc8/EOf;->mScaleSmall:Z

    .line 33
    iput-boolean v1, p0, Lc8/EOf;->mScaleLarge:Z

    .line 34
    iput-boolean v1, p0, Lc8/EOf;->mOverMaxScale:Z

    .line 46
    iput-boolean v1, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/EOf;->mOriginalValues:[F

    .line 54
    invoke-direct {p0}, Lc8/EOf;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lc8/DOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lc8/EOf;->mType:I

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EOf;->mFirst:Z

    .line 32
    iput-boolean v1, p0, Lc8/EOf;->mScaleSmall:Z

    .line 33
    iput-boolean v1, p0, Lc8/EOf;->mScaleLarge:Z

    .line 34
    iput-boolean v1, p0, Lc8/EOf;->mOverMaxScale:Z

    .line 46
    iput-boolean v1, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/EOf;->mOriginalValues:[F

    .line 59
    invoke-direct {p0}, Lc8/EOf;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lc8/DOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v1, p0, Lc8/EOf;->mType:I

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EOf;->mFirst:Z

    .line 32
    iput-boolean v1, p0, Lc8/EOf;->mScaleSmall:Z

    .line 33
    iput-boolean v1, p0, Lc8/EOf;->mScaleLarge:Z

    .line 34
    iput-boolean v1, p0, Lc8/EOf;->mOverMaxScale:Z

    .line 46
    iput-boolean v1, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/EOf;->mOriginalValues:[F

    .line 64
    invoke-direct {p0}, Lc8/EOf;->init()V

    .line 65
    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 249
    .local v0, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 250
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lc8/EOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    new-instance v0, Lc8/FOf;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lc8/FOf;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    .line 70
    return-void
.end method

.method private midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 254
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 255
    .local v0, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 256
    .local v1, "y":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 13
    .param p1, "srcMatrix"    # Landroid/graphics/Matrix;
    .param p2, "dstMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 276
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 277
    new-array v12, v6, [F

    .line 278
    .local v12, "srcValues":[F
    new-array v11, v6, [F

    .line 279
    .local v11, "dstValues":[F
    invoke-virtual {p1, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 280
    invoke-virtual {p2, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 282
    aget v1, v12, v4

    .line 283
    .local v1, "srcTransX":F
    aget v9, v11, v4

    .line 284
    .local v9, "dstTransX":F
    aget v2, v12, v5

    .line 285
    .local v2, "srcTransY":F
    aget v10, v11, v5

    .line 286
    .local v10, "dstTransY":F
    aget v3, v12, v0

    .line 287
    .local v3, "srcScaleX":F
    aget v8, v11, v0

    .line 289
    .local v8, "dstScaleX":F
    iget-object v0, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    sub-float v4, v9, v1

    sub-float v5, v10, v2

    sub-float v6, v8, v3

    const/16 v7, 0x12c

    invoke-virtual/range {v0 .. v7}, Lc8/FOf;->startScroll(FFFFFFI)V

    .line 291
    invoke-virtual {p0}, Lc8/EOf;->invalidate()V

    .line 293
    .end local v1    # "srcTransX":F
    .end local v2    # "srcTransY":F
    .end local v3    # "srcScaleX":F
    .end local v8    # "dstScaleX":F
    .end local v9    # "dstTransX":F
    .end local v10    # "dstTransY":F
    .end local v11    # "dstValues":[F
    .end local v12    # "srcValues":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lc8/DOf;->computeScroll()V

    .line 262
    iget-object v1, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    invoke-virtual {v1}, Lc8/FOf;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 264
    .local v0, "v":[F
    iget-object v1, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 265
    const/4 v1, 0x2

    iget-object v2, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    invoke-virtual {v2}, Lc8/FOf;->getCurrX()F

    move-result v2

    aput v2, v0, v1

    .line 266
    const/4 v1, 0x5

    iget-object v2, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    invoke-virtual {v2}, Lc8/FOf;->getCurrY()F

    move-result v2

    aput v2, v0, v1

    .line 267
    const/4 v1, 0x0

    iget-object v2, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    invoke-virtual {v2}, Lc8/FOf;->getCurrZ()F

    move-result v2

    aput v2, v0, v1

    .line 268
    const/4 v1, 0x4

    iget-object v2, p0, Lc8/EOf;->mScroller:Lc8/FOf;

    invoke-virtual {v2}, Lc8/FOf;->getCurrZ()F

    move-result v2

    aput v2, v0, v1

    .line 269
    iget-object v1, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 270
    iget-object v1, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lc8/EOf;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 271
    invoke-virtual {p0}, Lc8/EOf;->invalidate()V

    .line 273
    .end local v0    # "v":[F
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 75
    invoke-super/range {p0 .. p5}, Lc8/DOf;->onLayout(ZIIII)V

    .line 76
    sub-int v0, p4, p2

    iput v0, p0, Lc8/EOf;->mMaxWidth:I

    .line 77
    sub-int v0, p5, p3

    iput v0, p0, Lc8/EOf;->mMaxHeight:I

    .line 78
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    invoke-virtual {p0}, Lc8/EOf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_0

    .line 94
    invoke-super {p0, p1}, Lc8/DOf;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 244
    :goto_0
    return v8

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    .line 244
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lc8/DOf;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v8, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 100
    iget-boolean v8, p0, Lc8/EOf;->mFirst:Z

    if-eqz v8, :cond_2

    .line 101
    iget-object v8, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lc8/EOf;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 102
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lc8/EOf;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 103
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mFirst:Z

    .line 104
    iget-object v8, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mOriginalValues:[F

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 106
    :cond_2
    iget-object v8, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    const/4 v8, 0x0

    iput v8, p0, Lc8/EOf;->mType:I

    .line 109
    invoke-virtual {p0}, Lc8/EOf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Lc8/EOf;->mRect:Landroid/graphics/Rect;

    .line 110
    const/16 v8, 0x9

    new-array v7, v8, [F

    .line 111
    .local v7, "values":[F
    iget-object v8, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 112
    const/4 v8, 0x2

    aget v8, v7, v8

    iput v8, p0, Lc8/EOf;->mLeft:F

    .line 113
    const/4 v8, 0x5

    aget v8, v7, v8

    iput v8, p0, Lc8/EOf;->mTop:F

    .line 114
    iget v8, p0, Lc8/EOf;->mLeft:F

    iget-object v9, p0, Lc8/EOf;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    aget v10, v7, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lc8/EOf;->mRight:F

    .line 115
    iget v8, p0, Lc8/EOf;->mTop:F

    iget-object v9, p0, Lc8/EOf;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x4

    aget v10, v7, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lc8/EOf;->mBottom:F

    .line 117
    iget-boolean v8, p0, Lc8/EOf;->mScaleLarge:Z

    if-eqz v8, :cond_1

    .line 118
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 122
    .end local v7    # "values":[F
    :pswitch_2
    iget v8, p0, Lc8/EOf;->mType:I

    if-nez v8, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float v2, v8, v9

    .line 124
    .local v2, "dxx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float v4, v8, v9

    .line 125
    .local v4, "dyy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 126
    :cond_3
    const/4 v8, 0x1

    iput v8, p0, Lc8/EOf;->mType:I

    goto/16 :goto_1

    .line 128
    .end local v2    # "dxx":F
    .end local v4    # "dyy":F
    :cond_4
    iget v8, p0, Lc8/EOf;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    iget-boolean v8, p0, Lc8/EOf;->mScaleLarge:Z

    if-eqz v8, :cond_d

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float v1, v8, v9

    .line 130
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lc8/EOf;->mStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float v3, v8, v9

    .line 132
    .local v3, "dy":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_8

    .line 133
    iget v8, p0, Lc8/EOf;->mLeft:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 134
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    const/4 v1, 0x0

    .line 154
    :cond_5
    :goto_2
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_b

    .line 155
    iget v8, p0, Lc8/EOf;->mTop:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    .line 156
    const/4 v3, 0x0

    .line 172
    :cond_6
    :goto_3
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 173
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v8}, Lc8/EOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lc8/EOf;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 137
    :cond_7
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 138
    iget v8, p0, Lc8/EOf;->mLeft:F

    add-float/2addr v8, v1

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 139
    iget v8, p0, Lc8/EOf;->mLeft:F

    neg-float v1, v8

    goto :goto_2

    .line 143
    :cond_8
    iget v8, p0, Lc8/EOf;->mRight:F

    iget v9, p0, Lc8/EOf;->mMaxWidth:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    .line 144
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    const/4 v1, 0x0

    goto :goto_2

    .line 147
    :cond_9
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 148
    iget v8, p0, Lc8/EOf;->mRight:F

    add-float/2addr v8, v1

    iget v9, p0, Lc8/EOf;->mMaxWidth:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 149
    iget v8, p0, Lc8/EOf;->mMaxWidth:I

    int-to-float v8, v8

    iget v9, p0, Lc8/EOf;->mRight:F

    sub-float v1, v8, v9

    goto :goto_2

    .line 158
    :cond_a
    iget v8, p0, Lc8/EOf;->mTop:F

    add-float/2addr v8, v3

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 159
    iget v8, p0, Lc8/EOf;->mTop:F

    neg-float v3, v8

    goto :goto_3

    .line 164
    :cond_b
    iget v8, p0, Lc8/EOf;->mBottom:F

    iget v9, p0, Lc8/EOf;->mMaxHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 165
    const/4 v3, 0x0

    goto :goto_3

    .line 167
    :cond_c
    iget v8, p0, Lc8/EOf;->mBottom:F

    add-float/2addr v8, v3

    iget v9, p0, Lc8/EOf;->mMaxHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 168
    iget v8, p0, Lc8/EOf;->mMaxHeight:I

    int-to-float v8, v8

    iget v9, p0, Lc8/EOf;->mBottom:F

    sub-float v3, v8, v9

    goto/16 :goto_3

    .line 177
    .end local v1    # "dx":F
    .end local v3    # "dy":F
    :cond_d
    iget v8, p0, Lc8/EOf;->mType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 178
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    invoke-direct {p0, p1}, Lc8/EOf;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 180
    .local v0, "dist":F
    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v8, v0, v8

    if-lez v8, :cond_10

    .line 181
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 182
    iget v8, p0, Lc8/EOf;->mStartDist:F

    div-float v5, v0, v8

    .line 183
    .local v5, "scale":F
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v5, v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 184
    const/16 v8, 0x9

    new-array v6, v8, [F

    .line 185
    .local v6, "v":[F
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 186
    const/4 v8, 0x0

    aget v8, v6, v8

    iget-object v9, p0, Lc8/EOf;->mOriginalValues:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_e

    const/4 v8, 0x4

    aget v8, v6, v8

    iget-object v9, p0, Lc8/EOf;->mOriginalValues:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_11

    .line 188
    :cond_e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/EOf;->mScaleSmall:Z

    .line 189
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mScaleLarge:Z

    .line 195
    :goto_4
    const/4 v8, 0x0

    aget v8, v6, v8

    iget-object v9, p0, Lc8/EOf;->mOriginalValues:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    div-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_f

    const/4 v8, 0x4

    aget v8, v6, v8

    iget-object v9, p0, Lc8/EOf;->mOriginalValues:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    div-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12

    .line 197
    :cond_f
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/EOf;->mOverMaxScale:Z

    .line 198
    iget-object v8, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 203
    .end local v5    # "scale":F
    .end local v6    # "v":[F
    :cond_10
    :goto_5
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v8}, Lc8/EOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lc8/EOf;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 191
    .restart local v5    # "scale":F
    .restart local v6    # "v":[F
    :cond_11
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mScaleSmall:Z

    .line 192
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/EOf;->mScaleLarge:Z

    goto :goto_4

    .line 200
    :cond_12
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mOverMaxScale:Z

    goto :goto_5

    .line 209
    .end local v0    # "dist":F
    .end local v5    # "scale":F
    .end local v6    # "v":[F
    :pswitch_3
    invoke-direct {p0, p1}, Lc8/EOf;->distance(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lc8/EOf;->mStartDist:F

    .line 210
    iget v8, p0, Lc8/EOf;->mStartDist:F

    const/high16 v9, 0x41200000    # 10.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 211
    iget-object v8, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    const/4 v8, 0x2

    iput v8, p0, Lc8/EOf;->mType:I

    .line 213
    invoke-direct {p0, p1}, Lc8/EOf;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v8

    iput-object v8, p0, Lc8/EOf;->mMidPoint:Landroid/graphics/PointF;

    goto/16 :goto_1

    .line 217
    :pswitch_4
    iget-boolean v8, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    if-eqz v8, :cond_13

    .line 218
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    .line 219
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 222
    :cond_13
    :pswitch_5
    iget v8, p0, Lc8/EOf;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 223
    const/4 v8, 0x0

    iput v8, p0, Lc8/EOf;->mType:I

    .line 224
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 225
    :cond_14
    iget v8, p0, Lc8/EOf;->mType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 226
    const/4 v8, 0x0

    iput v8, p0, Lc8/EOf;->mType:I

    .line 227
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/EOf;->mIgnoreUpEvent:Z

    .line 228
    invoke-virtual {p0}, Lc8/EOf;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 229
    iget-boolean v8, p0, Lc8/EOf;->mScaleSmall:Z

    if-eqz v8, :cond_15

    .line 230
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mScaleSmall:Z

    .line 231
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mScaleLarge:Z

    .line 232
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v8, v9}, Lc8/EOf;->startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 234
    :cond_15
    iget-boolean v8, p0, Lc8/EOf;->mOverMaxScale:Z

    if-eqz v8, :cond_16

    .line 235
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/EOf;->mOverMaxScale:Z

    .line 236
    iget-object v8, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v8, v9}, Lc8/EOf;->startScroll(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 238
    :cond_16
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lc8/EOf;->mFirst:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EOf;->mFirst:Z

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mPreMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/EOf;->mCurMatrix:Landroid/graphics/Matrix;

    .line 87
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lc8/EOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    :cond_0
    return-void
.end method
