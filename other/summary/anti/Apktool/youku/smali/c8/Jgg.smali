.class public Lc8/Jgg;
.super Ljava/lang/Object;
.source "WXViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Igg;
    }
.end annotation


# static fields
.field public static final DIMENSION_UNSET:I = -0x1

.field public static final OPAQUE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSLUCENT:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSPARENT:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static final mUseWebPx:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/Jgg;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clipCanvasIfAnimationExist(Landroid/view/View;)Z
    .locals 2
    .param p0, "targetView"    # Landroid/view/View;

    .prologue
    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clipCanvasIfBackgroundImageExist(Landroid/view/View;Lc8/Ieg;)Z
    .locals 6
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "borderDrawable"    # Lc8/Ieg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 451
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 453
    check-cast v3, Landroid/view/ViewGroup;

    .line 454
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 455
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 456
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lc8/Ieg;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lc8/Ieg;

    invoke-virtual {v4}, Lc8/Ieg;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 460
    const/4 v4, 0x0

    .line 464
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :goto_1
    return v4

    .line 455
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static clipCanvasIfBackgroundImageExist(Lc8/Ldg;Lc8/Ieg;)Z
    .locals 4
    .param p0, "widget"    # Lc8/Ldg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "borderDrawable"    # Lc8/Ieg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 469
    instance-of v2, p0, Lc8/Mdg;

    if-eqz v2, :cond_1

    .line 470
    check-cast p0, Lc8/Mdg;

    .end local p0    # "widget":Lc8/Ldg;
    invoke-virtual {p0}, Lc8/Mdg;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ldg;

    .line 471
    .local v0, "child":Lc8/Ldg;
    invoke-interface {v0}, Lc8/Ldg;->getBackgroundAndBorder()Lc8/Ieg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Ieg;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 477
    .end local v0    # "child":Lc8/Ldg;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static clipCanvasWithinBorderBox(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 385
    invoke-static {p1}, Lc8/Jgg;->clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lc8/Jgg;->clipCanvasIfAnimationExist(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Lc8/Ieg;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 388
    check-cast v0, Lc8/Ieg;

    .line 389
    .local v0, "borderDrawable":Lc8/Ieg;
    invoke-virtual {v0}, Lc8/Ieg;->isRounded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-static {p0, v0}, Lc8/Jgg;->clipCanvasIfBackgroundImageExist(Landroid/view/View;Lc8/Ieg;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lc8/Ieg;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    .line 393
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 397
    .end local v0    # "borderDrawable":Lc8/Ieg;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_0
    return-void
.end method

.method public static clipCanvasWithinBorderBox(Lc8/Ldg;Landroid/graphics/Canvas;)V
    .locals 6
    .param p0, "widget"    # Lc8/Ldg;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-static {p1}, Lc8/Jgg;->clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lc8/Jgg;->clipCanvasIfAnimationExist(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lc8/Ldg;->getBackgroundAndBorder()Lc8/Ieg;

    move-result-object v0

    .local v0, "borderDrawable":Lc8/Ieg;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lc8/Ieg;->isRounded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v0}, Lc8/Jgg;->clipCanvasIfBackgroundImageExist(Lc8/Ldg;Lc8/Ieg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    new-instance v2, Landroid/graphics/RectF;

    invoke-interface {p0}, Lc8/Ldg;->getBorderBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p0}, Lc8/Ldg;->getBorderBox()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lc8/Ieg;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v1

    .line 407
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 413
    .end local v0    # "borderDrawable":Lc8/Ieg;
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local v0    # "borderDrawable":Lc8/Ieg;
    :cond_1
    invoke-interface {p0}, Lc8/Ldg;->getBorderBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public static dip2px(F)I
    .locals 5
    .param p0, "dpValue"    # F

    .prologue
    .line 294
    const/high16 v2, 0x40000000    # 2.0f

    .line 296
    .local v2, "scale":F
    :try_start_0
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    mul-float v3, p0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float v1, v3, v4

    .line 302
    .local v1, "finalPx":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 298
    .end local v1    # "finalPx":F
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXViewUtils] dip2px:"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "finalPx":F
    :cond_0
    float-to-int v3, v1

    goto :goto_1
.end method

.method public static generateViewId()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 86
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lc8/Jgg;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 88
    add-int/lit8 v0, v1, 0x1

    .line 89
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 91
    :cond_1
    sget-object v2, Lc8/Jgg;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    .end local v0    # "newValue":I
    .end local v1    # "result":I
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    goto :goto_0
.end method

.method public static getBorderDrawable(Landroid/view/View;)Lc8/Ieg;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lc8/Ieg;

    if-eqz v2, :cond_0

    .line 370
    check-cast v0, Lc8/Ieg;

    .line 380
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 372
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 373
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 374
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    .local v1, "innerDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lc8/Ieg;

    if-eqz v2, :cond_1

    .line 376
    check-cast v1, Lc8/Ieg;

    .end local v1    # "innerDrawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOpacityFromColor(I)I
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 346
    ushr-int/lit8 v0, p0, 0x18

    .line 347
    .local v0, "colorAlpha":I
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 348
    const/4 v1, -0x1

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_0
    if-nez v0, :cond_1

    .line 350
    const/4 v1, -0x2

    goto :goto_0

    .line 352
    :cond_1
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public static getRealPxByWidth(F)F
    .locals 1
    .param p0, "pxValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const/16 v0, 0x2ee

    invoke-static {p0, v0}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method public static getRealPxByWidth(FI)F
    .locals 6
    .param p0, "pxValue"    # F
    .param p1, "customViewport"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 202
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    .end local p0    # "pxValue":F
    :goto_0
    return p0

    .line 208
    .restart local p0    # "pxValue":F
    :cond_0
    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 209
    .local v0, "realPx":F
    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-float p0, v2

    goto :goto_0
.end method

.method public static getRealPxByWidth2(F)F
    .locals 1
    .param p0, "pxValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    const/16 v0, 0x2ee

    invoke-static {p0, v0}, Lc8/Jgg;->getRealPxByWidth2(FI)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getRealPxByWidth2(FI)I
    .locals 6
    .param p0, "pxValue"    # F
    .param p1, "customViewport"    # I

    .prologue
    .line 257
    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 258
    .local v0, "realPx":F
    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getRealSubPxByWidth(F)F
    .locals 1
    .param p0, "pxValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0x2ee

    invoke-static {p0, v0}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method public static getRealSubPxByWidth(FI)F
    .locals 6
    .param p0, "pxValue"    # F
    .param p1, "customViewport"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 219
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    .end local p0    # "pxValue":F
    :goto_0
    return p0

    .line 225
    .restart local p0    # "pxValue":F
    :cond_0
    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 226
    .local v0, "realPx":F
    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScreenDensityDpi exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 179
    if-eqz p0, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lc8/Jgg;->mScreenHeight:I

    .line 184
    :cond_0
    sget v0, Lc8/Jgg;->mScreenHeight:I

    return v0

    .line 181
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "Error Context is null When getScreenHeight"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getScreenWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    if-eqz p0, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lc8/Jgg;->mScreenWidth:I

    .line 160
    sget-boolean v1, Lc8/UUf;->SETTING_FORCE_VERTICAL_SCREEN:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 164
    sput v1, Lc8/Jgg;->mScreenHeight:I

    sget v2, Lc8/Jgg;->mScreenWidth:I

    if-le v1, v2, :cond_1

    sget v1, Lc8/Jgg;->mScreenWidth:I

    :goto_0
    sput v1, Lc8/Jgg;->mScreenWidth:I

    .line 169
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    sget v1, Lc8/Jgg;->mScreenWidth:I

    return v1

    .line 164
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    sget v1, Lc8/Jgg;->mScreenHeight:I

    goto :goto_0

    .line 166
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "Error Context is null When getScreenHeight"

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getWebPxByWidth(F)F
    .locals 1
    .param p0, "pxValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    const/16 v0, 0x2ee

    invoke-static {p0, v0}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method public static getWebPxByWidth(FI)F
    .locals 6
    .param p0, "pxValue"    # F
    .param p1, "customViewport"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 276
    float-to-double v2, p0

    const-wide v4, -0x40000068db8bac71L    # -1.9999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    float-to-double v2, p0

    const-wide v4, -0x3ffff5c28f5c28f6L    # -2.005

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 277
    const/high16 v0, 0x7fc00000    # NaNf

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    int-to-float v2, p1

    mul-float/2addr v2, p0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 283
    .local v0, "realPx":F
    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getWeexHeight(Ljava/lang/String;)I
    .locals 3
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 106
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0}, Lc8/nVf;->getWeexHeight()I

    move-result v1

    .line 108
    .local v1, "weexHeight":I
    if-gez v1, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 115
    .end local v1    # "weexHeight":I
    :cond_0
    :goto_0
    return v1

    .line 112
    .restart local v1    # "weexHeight":I
    :cond_1
    sget-object v2, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v2}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 115
    .end local v1    # "weexHeight":I
    :cond_2
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public static getWeexPxByReal(F)F
    .locals 1
    .param p0, "pxValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/16 v0, 0x2ee

    invoke-static {p0, v0}, Lc8/Jgg;->getWeexPxByReal(FI)F

    move-result v0

    return v0
.end method

.method public static getWeexPxByReal(FI)F
    .locals 2
    .param p0, "pxValue"    # F
    .param p1, "customViewport"    # I

    .prologue
    .line 239
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    .end local p0    # "pxValue":F
    :goto_0
    return p0

    .restart local p0    # "pxValue":F
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, p0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float p0, v0, v1

    goto :goto_0
.end method

.method public static getWeexWidth(Ljava/lang/String;)I
    .locals 3
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 122
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lc8/nVf;->getWeexWidth()I

    move-result v1

    .line 124
    .local v1, "weexWidth":I
    if-gez v1, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 131
    .end local v1    # "weexWidth":I
    :cond_0
    :goto_0
    return v1

    .line 128
    .restart local v1    # "weexWidth":I
    :cond_1
    sget-object v2, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v2}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 131
    .end local v1    # "weexWidth":I
    :cond_2
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public static multiplyColorAlpha(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    const v3, 0xffffff

    .line 332
    const/16 v2, 0xff

    if-ne p1, v2, :cond_0

    .line 341
    .end local p0    # "color":I
    :goto_0
    return p0

    .line 335
    .restart local p0    # "color":I
    :cond_0
    if-nez p1, :cond_1

    .line 336
    and-int/2addr p0, v3

    goto :goto_0

    .line 338
    :cond_1
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 339
    ushr-int/lit8 v0, p0, 0x18

    .line 340
    .local v0, "colorAlpha":I
    mul-int v2, v0, p1

    shr-int/lit8 v1, v2, 0x8

    .line 341
    .local v1, "multipliedAlpha":I
    shl-int/lit8 v2, v1, 0x18

    and-int/2addr v3, p0

    or-int p0, v2, v3

    goto :goto_0
.end method

.method public static onScreenArea(Landroid/view/View;)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 306
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 311
    .local v1, "p":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 314
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_4

    .line 315
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 320
    .local v2, "viewH":I
    :goto_1
    aget v5, v1, v4

    if-lez v5, :cond_2

    aget v5, v1, v4

    sget-object v6, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v6}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v5, :cond_3

    :cond_2
    aget v5, v1, v4

    add-int/2addr v5, v2

    if-lez v5, :cond_0

    aget v5, v1, v4

    if-gtz v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 317
    .end local v2    # "viewH":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .restart local v2    # "viewH":I
    goto :goto_1
.end method

.method public static setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setScreenWidth(I)I
    .locals 0
    .param p0, "screenWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    sput p0, Lc8/Jgg;->mScreenWidth:I

    return p0
.end method
