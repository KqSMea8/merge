.class public Lc8/Ubo;
.super Lc8/bco;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qbo;,
        Lc8/Sbo;,
        Lc8/Rbo;,
        Lc8/Tbo;,
        Lc8/Obo;,
        Lc8/Pbo;
    }
.end annotation


# static fields
.field static final SCROLL_DELTA_THRESHOLD:F = 1.0f


# instance fields
.field bitmapRect:Landroid/graphics/RectF;

.field protected mDoubleTapDirection:I

.field protected mDoubleTapEnabled:Z

.field private mDoubleTapListener:Lc8/Rbo;

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mFlingListener:Lc8/Qbo;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsGraduallyZoom:Z

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleEnabled:Z

.field protected mScaleFactor:F

.field protected mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected mScrollEnabled:Z

.field private mSingleTapListener:Lc8/Sbo;

.field protected mTouchSlop:I

.field private onDistanceListener:Lc8/Pbo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lc8/bco;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v1, p0, Lc8/Ubo;->mDoubleTapEnabled:Z

    .line 27
    iput-boolean v1, p0, Lc8/Ubo;->mScaleEnabled:Z

    .line 28
    iput-boolean v1, p0, Lc8/Ubo;->mScrollEnabled:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    .line 208
    iput-boolean v1, p0, Lc8/Ubo;->mIsGraduallyZoom:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, p2}, Lc8/bco;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lc8/Ubo;->mDoubleTapEnabled:Z

    .line 27
    iput-boolean v1, p0, Lc8/Ubo;->mScaleEnabled:Z

    .line 28
    iput-boolean v1, p0, Lc8/Ubo;->mScrollEnabled:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    .line 208
    iput-boolean v1, p0, Lc8/Ubo;->mIsGraduallyZoom:Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lc8/Ubo;)Lc8/Sbo;
    .locals 1
    .param p0, "x0"    # Lc8/Ubo;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/Ubo;->mSingleTapListener:Lc8/Sbo;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Ubo;)Lc8/Rbo;
    .locals 1
    .param p0, "x0"    # Lc8/Ubo;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/Ubo;->mDoubleTapListener:Lc8/Rbo;

    return-object v0
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 120
    invoke-virtual {p0}, Lc8/Ubo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lc8/Ubo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Lc8/bco;->_setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 94
    invoke-virtual {p0}, Lc8/Ubo;->getMaxScale()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lc8/Ubo;->mScaleFactor:F

    .line 95
    return-void
.end method

.method public canScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-virtual {p0}, Lc8/Ubo;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 296
    .local v0, "bitmapRect":Landroid/graphics/RectF;
    iget-object v6, p0, Lc8/Ubo;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v6}, Lc8/Ubo;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 297
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v1, "imageViewRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lc8/Ubo;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 299
    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v4

    .line 302
    :cond_1
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 303
    if-gez p1, :cond_2

    .line 304
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 307
    :cond_2
    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lc8/Ubo;->mScrollRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v2, v6

    .line 309
    .local v2, "bitmapScrollRectDelta":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public getDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lc8/Ubo;->mDoubleTapEnabled:Z

    return v0
.end method

.method protected getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lc8/Obo;

    invoke-direct {v0, p0}, Lc8/Obo;-><init>(Lc8/Ubo;)V

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getImageMatrix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lc8/bco;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    invoke-super {p0}, Lc8/bco;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getOnDistanceListener()Lc8/Pbo;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/Ubo;->onDistanceListener:Lc8/Pbo;

    return-object v0
.end method

.method protected getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lc8/Tbo;

    invoke-direct {v0, p0}, Lc8/Tbo;-><init>(Lc8/Ubo;)V

    return-object v0
.end method

.method public getViewWidth()I
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getViewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lc8/bco;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    invoke-super {p0}, Lc8/bco;->getWidth()I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-super {p0}, Lc8/bco;->init()V

    .line 44
    invoke-virtual {p0}, Lc8/Ubo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lc8/Ubo;->mTouchSlop:I

    .line 45
    invoke-virtual {p0}, Lc8/Ubo;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iput-object v0, p0, Lc8/Ubo;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 46
    invoke-virtual {p0}, Lc8/Ubo;->getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    iput-object v0, p0, Lc8/Ubo;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 47
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lc8/Ubo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Ubo;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lc8/Ubo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Ubo;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lc8/Ubo;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    iput v4, p0, Lc8/Ubo;->mDoubleTapDirection:I

    .line 51
    return-void
.end method

.method public isGraduallyZoom()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lc8/Ubo;->mIsGraduallyZoom:Z

    return v0
.end method

.method protected onDoubleTapPost(FF)F
    .locals 2
    .param p1, "scale"    # F
    .param p2, "maxZoom"    # F

    .prologue
    const/4 v1, 0x1

    .line 211
    iget v0, p0, Lc8/Ubo;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_1

    .line 212
    iget-boolean v0, p0, Lc8/Ubo;->mIsGraduallyZoom:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/Ubo;->mScaleFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 213
    iget v0, p0, Lc8/Ubo;->mScaleFactor:F

    add-float p2, p1, v0

    .line 220
    .end local p2    # "maxZoom":F
    :goto_0
    return p2

    .line 215
    .restart local p2    # "maxZoom":F
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lc8/Ubo;->mDoubleTapDirection:I

    goto :goto_0

    .line 219
    :cond_1
    iput v1, p0, Lc8/Ubo;->mDoubleTapDirection:I

    .line 220
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    iget-boolean v4, p0, Lc8/Ubo;->mScrollEnabled:Z

    if-nez v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    iget-object v4, p0, Lc8/Ubo;->mFlingListener:Lc8/Qbo;

    if-eqz v4, :cond_2

    .line 264
    iget-object v4, p0, Lc8/Ubo;->mFlingListener:Lc8/Qbo;

    invoke-interface {v4, p1, p2, p3, p4}, Lc8/Qbo;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 266
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 269
    iget-object v4, p0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    invoke-virtual {p0}, Lc8/Ubo;->getScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 276
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 277
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    .line 278
    :cond_3
    iput-boolean v3, p0, Lc8/Ubo;->mUserScaled:Z

    .line 280
    div-float v2, v0, v6

    div-float v4, v1, v6

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-virtual {p0, v2, v4, v6, v7}, Lc8/Ubo;->scrollBy(FFD)V

    .line 281
    invoke-virtual {p0}, Lc8/Ubo;->invalidate()V

    move v2, v3

    .line 282
    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    iget-boolean v2, p0, Lc8/Ubo;->mScrollEnabled:Z

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 235
    iget-object v2, p0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lc8/Ubo;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 241
    iput-boolean v1, p0, Lc8/Ubo;->mUserScaled:Z

    .line 243
    neg-float v0, p3

    neg-float v2, p4

    invoke-virtual {p0, v0, v2}, Lc8/Ubo;->scrollBy(FF)V

    .line 247
    invoke-virtual {p0}, Lc8/Ubo;->invalidate()V

    move v0, v1

    .line 248
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    iget-object v2, p0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 130
    .local v1, "handled":Z
    iget-object v2, p0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lc8/Ubo;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 163
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImageViewTouch.onTouchEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " handled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bitmapRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    :goto_1
    return v5

    .line 136
    :pswitch_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Ubo;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lc8/Ubo;->mDownFocusX:F

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lc8/Ubo;->mDownFocusY:F

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lc8/Ubo;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 145
    :cond_1
    iget-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lc8/Ubo;->mDownFocusX:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lc8/Ubo;->bitmapRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    .line 146
    invoke-virtual {p0}, Lc8/Ubo;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lc8/Ubo;->mDownFocusX:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 148
    :cond_3
    invoke-direct {p0, v5}, Lc8/Ubo;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 152
    :cond_4
    invoke-direct {p0, v6}, Lc8/Ubo;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p0}, Lc8/Ubo;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 156
    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {p0, v2, v3}, Lc8/Ubo;->zoomTo(FF)V

    .line 158
    :cond_5
    invoke-direct {p0, v6}, Lc8/Ubo;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onZoomAnimationCompleted(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onZoomAnimationCompleted. scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v0, v1}, Lc8/Ubo;->zoomTo(FF)V

    .line 194
    :cond_0
    return-void
.end method

.method public resetImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0}, Lc8/Ubo;->getScale()F

    move-result v0

    .line 406
    .local v0, "scale":F
    move v1, v0

    .line 407
    .local v1, "targetScale":F
    invoke-virtual {p0}, Lc8/Ubo;->getMaxScale()F

    move-result v2

    .line 408
    invoke-virtual {p0}, Lc8/Ubo;->getMinScale()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 409
    const/high16 v2, 0x43c80000    # 400.0f

    invoke-virtual {p0, v1, v4, v4, v2}, Lc8/Ubo;->zoomTo(FFFF)V

    .line 410
    invoke-virtual {p0}, Lc8/Ubo;->invalidate()V

    .line 411
    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lc8/Ubo;->mDoubleTapEnabled:Z

    .line 67
    return-void
.end method

.method public setDoubleTapListener(Lc8/Rbo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Rbo;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Ubo;->mDoubleTapListener:Lc8/Rbo;

    .line 55
    return-void
.end method

.method public setFlingListener(Lc8/Qbo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Qbo;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Ubo;->mFlingListener:Lc8/Qbo;

    .line 63
    return-void
.end method

.method public setGraduallyZoom(Z)V
    .locals 0
    .param p1, "mIsGraduallyZoom"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lc8/Ubo;->mIsGraduallyZoom:Z

    .line 424
    return-void
.end method

.method public setOnDistanceListener(Lc8/Pbo;)V
    .locals 0
    .param p1, "onDistanceListener"    # Lc8/Pbo;

    .prologue
    .line 177
    iput-object p1, p0, Lc8/Ubo;->onDistanceListener:Lc8/Pbo;

    .line 178
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lc8/Ubo;->mScaleEnabled:Z

    .line 71
    invoke-virtual {p0, p1}, Lc8/Ubo;->setDoubleTapEnabled(Z)V

    .line 72
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lc8/Ubo;->mScrollEnabled:Z

    .line 76
    return-void
.end method

.method public setSingleTapListener(Lc8/Sbo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Sbo;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/Ubo;->mSingleTapListener:Lc8/Sbo;

    .line 59
    return-void
.end method
