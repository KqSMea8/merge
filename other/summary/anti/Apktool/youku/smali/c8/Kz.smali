.class public Lc8/Kz;
.super Landroid/graphics/drawable/Drawable;
.source "DefaultProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lc8/Kz;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

.field private mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSweepProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lc8/Kz;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lc8/Kz;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 231
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lc8/Kz;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "borderWidth"    # F

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    .line 242
    new-instance v0, Lc8/Hz;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lc8/Hz;-><init>(Lc8/Kz;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Kz;->mAngleProperty:Landroid/util/Property;

    .line 251
    new-instance v0, Lc8/Iz;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lc8/Iz;-><init>(Lc8/Kz;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Kz;->mSweepProperty:Landroid/util/Property;

    .line 262
    iput p2, p0, Lc8/Kz;->mBorderWidth:F

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    .line 264
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    invoke-direct {p0}, Lc8/Kz;->setupAnimations()V

    .line 269
    return-void
.end method

.method static synthetic access$000(Lc8/Kz;)V
    .locals 0
    .param p0, "x0"    # Lc8/Kz;

    .prologue
    .line 229
    invoke-direct {p0}, Lc8/Kz;->toggleAppearingMode()V

    return-void
.end method

.method private setupAnimations()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 313
    iget-object v0, p0, Lc8/Kz;->mAngleProperty:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    .line 314
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    sget-object v1, Lc8/Kz;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 317
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 318
    iget-object v0, p0, Lc8/Kz;->mSweepProperty:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43960000    # 300.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    .line 319
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    sget-object v1, Lc8/Kz;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 321
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 322
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 323
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    new-instance v1, Lc8/Jz;

    invoke-direct {v1, p0}, Lc8/Jz;-><init>(Lc8/Kz;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    return-void
.end method

.method private toggleAppearingMode()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lc8/Kz;->mModeAppearing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Kz;->mModeAppearing:Z

    .line 298
    iget-boolean v0, p0, Lc8/Kz;->mModeAppearing:Z

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Lc8/Kz;->mCurrentGlobalAngleOffset:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lc8/Kz;->mCurrentGlobalAngleOffset:F

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 272
    iget v0, p0, Lc8/Kz;->mCurrentGlobalAngle:F

    iget v1, p0, Lc8/Kz;->mCurrentGlobalAngleOffset:F

    sub-float v2, v0, v1

    .line 273
    .local v2, "startAngle":F
    iget v3, p0, Lc8/Kz;->mCurrentSweepAngle:F

    .line 274
    .local v3, "sweepAngle":F
    iget-boolean v0, p0, Lc8/Kz;->mModeAppearing:Z

    if-nez v0, :cond_0

    .line 275
    add-float/2addr v2, v3

    .line 276
    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr v0, v3

    sub-float v3, v0, v4

    .line 281
    :goto_0
    iget-object v1, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 282
    return-void

    .line 278
    :cond_0
    add-float/2addr v3, v4

    goto :goto_0
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lc8/Kz;->mCurrentGlobalAngle:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lc8/Kz;->mCurrentSweepAngle:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lc8/Kz;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 305
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 306
    iget-object v0, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Kz;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 307
    iget-object v0, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Kz;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 308
    iget-object v0, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Kz;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 309
    iget-object v0, p0, Lc8/Kz;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Kz;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 310
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 289
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0
    .param p1, "currentGlobalAngle"    # F

    .prologue
    .line 362
    iput p1, p0, Lc8/Kz;->mCurrentGlobalAngle:F

    .line 363
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 364
    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0
    .param p1, "currentSweepAngle"    # F

    .prologue
    .line 371
    iput p1, p0, Lc8/Kz;->mCurrentSweepAngle:F

    .line 372
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 373
    return-void
.end method

.method public setRingColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 382
    return-void
.end method

.method public setRingWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 385
    iget-object v0, p0, Lc8/Kz;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 387
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lc8/Kz;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Kz;->mRunning:Z

    .line 342
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 343
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 344
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 346
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lc8/Kz;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Kz;->mRunning:Z

    .line 351
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 352
    iget-object v0, p0, Lc8/Kz;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 353
    invoke-virtual {p0}, Lc8/Kz;->invalidateSelf()V

    .line 355
    :cond_0
    return-void
.end method
