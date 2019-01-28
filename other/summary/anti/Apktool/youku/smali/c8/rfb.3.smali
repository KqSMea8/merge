.class public abstract Lc8/rfb;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lc8/Kcb;
.implements Lc8/bdb;


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field final layerModel:Lc8/xfb;

.field final lottieDrawable:Lc8/tcb;

.field private mask:Lc8/idb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lc8/rfb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lc8/rfb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/rfb;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lc8/tdb;

.field private visible:Z


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/xfb;)V
    .locals 5
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    .line 63
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lc8/rfb;->maskPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lc8/rfb;->mattePaint:Landroid/graphics/Paint;

    .line 67
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lc8/rfb;->clearPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    .line 70
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    .line 71
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 73
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lc8/rfb;->boundsMatrix:Landroid/graphics/Matrix;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/rfb;->animations:Ljava/util/List;

    .line 83
    iput-boolean v3, p0, Lc8/rfb;->visible:Z

    .line 86
    iput-object p1, p0, Lc8/rfb;->lottieDrawable:Lc8/tcb;

    .line 87
    iput-object p2, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#draw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/rfb;->drawTraceName:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lc8/rfb;->clearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iget-object v2, p0, Lc8/rfb;->maskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    invoke-virtual {p2}, Lc8/xfb;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->Invert:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v2, v3, :cond_0

    .line 92
    iget-object v2, p0, Lc8/rfb;->mattePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    :goto_0
    invoke-virtual {p2}, Lc8/xfb;->getTransform()Lc8/teb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/teb;->createAnimation()Lc8/tdb;

    move-result-object v2

    iput-object v2, p0, Lc8/rfb;->transform:Lc8/tdb;

    .line 98
    iget-object v2, p0, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v2, p0}, Lc8/tdb;->addListener(Lc8/bdb;)V

    .line 99
    iget-object v2, p0, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v2, p0}, Lc8/tdb;->addAnimationsToLayer(Lc8/rfb;)V

    .line 101
    invoke-virtual {p2}, Lc8/xfb;->getMasks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lc8/xfb;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    new-instance v2, Lc8/idb;

    invoke-virtual {p2}, Lc8/xfb;->getMasks()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/idb;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lc8/rfb;->mask:Lc8/idb;

    .line 103
    iget-object v2, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v2}, Lc8/idb;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/cdb;

    .line 104
    .local v0, "animation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {p0, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 105
    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    goto :goto_1

    .line 94
    .end local v0    # "animation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    :cond_0
    iget-object v2, p0, Lc8/rfb;->mattePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v2}, Lc8/idb;->getOpacityAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/cdb;

    .line 108
    .local v1, "animation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 109
    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    goto :goto_2

    .line 112
    .end local v1    # "animation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    invoke-direct {p0}, Lc8/rfb;->setupInOutAnimations()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lc8/rfb;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/rfb;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/rfb;->setVisible(Z)V

    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v7, "Layer#drawMask"

    invoke-static {v7}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v7, "Layer#saveLayer"

    invoke-static {v7}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lc8/rfb;->maskPaint:Landroid/graphics/Paint;

    const/16 v9, 0x13

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 327
    const-string/jumbo v7, "Layer#saveLayer"

    invoke-static {v7}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 328
    invoke-direct {p0, p1}, Lc8/rfb;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 331
    iget-object v7, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v7}, Lc8/idb;->getMasks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 332
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 333
    iget-object v7, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v7}, Lc8/idb;->getMasks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Meb;

    .line 334
    .local v2, "mask":Lc8/Meb;
    iget-object v7, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v7}, Lc8/idb;->getMaskAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/cdb;

    .line 335
    .local v3, "maskAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 336
    .local v4, "maskPath":Landroid/graphics/Path;
    iget-object v7, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 337
    iget-object v7, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    invoke-virtual {v7, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 339
    sget-object v7, Lc8/qfb;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    invoke-virtual {v2}, Lc8/Meb;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 345
    iget-object v7, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 347
    :goto_1
    iget-object v7, p0, Lc8/rfb;->mask:Lc8/idb;

    .line 348
    invoke-virtual {v7}, Lc8/idb;->getOpacityAnimations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/cdb;

    .line 349
    .local v5, "opacityAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 350
    .local v0, "alpha":I
    iget-object v8, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const v9, 0x40233333    # 2.55f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 351
    iget-object v7, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    iget-object v8, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 352
    iget-object v7, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "alpha":I
    .end local v5    # "opacityAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v7, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 354
    .end local v2    # "mask":Lc8/Meb;
    .end local v3    # "maskAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v4    # "maskPath":Landroid/graphics/Path;
    :cond_0
    const-string/jumbo v7, "Layer#restoreLayer"

    invoke-static {v7}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    const-string/jumbo v7, "Layer#restoreLayer"

    invoke-static {v7}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 357
    const-string/jumbo v7, "Layer#drawMask"

    invoke-static {v7}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 358
    return-void

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lc8/rfb;->parentLayer:Lc8/rfb;

    if-nez v1, :cond_2

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    goto :goto_0

    .line 394
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    .line 395
    iget-object v0, p0, Lc8/rfb;->parentLayer:Lc8/rfb;

    .line 396
    .local v0, "layer":Lc8/rfb;
    :goto_1
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, v0, Lc8/rfb;->parentLayer:Lc8/rfb;

    goto :goto_1
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 245
    const-string/jumbo v0, "Layer#clearLayer"

    invoke-static {v0}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget-object v0, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lc8/rfb;->clearPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    const-string/jumbo v0, "Layer#clearLayer"

    invoke-static {v0}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 249
    return-void
.end method

.method static forModel(Lc8/xfb;Lc8/tcb;Lc8/kcb;)Lc8/rfb;
    .locals 2
    .param p0, "layerModel"    # Lc8/xfb;
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "composition"    # Lc8/kcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lc8/qfb;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    invoke-virtual {p0}, Lc8/xfb;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown layer type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/xfb;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-instance v0, Lc8/zfb;

    invoke-direct {v0, p1, p0}, Lc8/zfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    goto :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Lc8/tfb;

    .line 45
    invoke-virtual {p0}, Lc8/xfb;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lc8/kcb;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lc8/tfb;-><init>(Lc8/tcb;Lc8/xfb;Ljava/util/List;Lc8/kcb;)V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, Lc8/Afb;

    invoke-direct {v0, p1, p0}, Lc8/Afb;-><init>(Lc8/tcb;Lc8/xfb;)V

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lc8/ufb;

    invoke-virtual {p2}, Lc8/kcb;->getDpScale()F

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lc8/ufb;-><init>(Lc8/tcb;Lc8/xfb;F)V

    goto :goto_0

    .line 51
    :pswitch_4
    new-instance v0, Lc8/yfb;

    invoke-direct {v0, p1, p0}, Lc8/yfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    goto :goto_0

    .line 53
    :pswitch_5
    new-instance v0, Lc8/Dfb;

    invoke-direct {v0, p1, p0}, Lc8/Dfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v6, 0x0

    .line 252
    iget-object v5, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    invoke-virtual {p0}, Lc8/rfb;->hasMasksOnThisLayer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 300
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :cond_0
    iget-object v5, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v5}, Lc8/idb;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 258
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 259
    iget-object v5, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v5}, Lc8/idb;->getMasks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Meb;

    .line 260
    .local v1, "mask":Lc8/Meb;
    iget-object v5, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v5}, Lc8/idb;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/cdb;

    .line 261
    .local v2, "maskAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    invoke-virtual {v2}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 262
    .local v3, "maskPath":Landroid/graphics/Path;
    iget-object v5, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 263
    iget-object v5, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 265
    sget-object v5, Lc8/qfb;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    invoke-virtual {v1}, Lc8/Meb;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 277
    iget-object v5, p0, Lc8/rfb;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 281
    if-nez v0, :cond_1

    .line 282
    iget-object v5, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 258
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    iget-object v5, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 285
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 286
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    .line 287
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v9, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lc8/rfb;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    .line 288
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 284
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 294
    .end local v1    # "mask":Lc8/Meb;
    .end local v2    # "maskAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<*Landroid/graphics/Path;>;"
    .end local v3    # "maskPath":Landroid/graphics/Path;
    :cond_2
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 295
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 296
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 297
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lc8/rfb;->maskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 298
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 294
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 303
    invoke-virtual {p0}, Lc8/rfb;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v0}, Lc8/xfb;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->Invert:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    iget-object v1, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 313
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 315
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lc8/rfb;->matteBoundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 317
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 313
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lc8/rfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 154
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 2
    .param p1, "ms"    # F

    .prologue
    .line 239
    iget-object v0, p0, Lc8/rfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getComposition()Lc8/kcb;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lc8/kcb;->getPerformanceTracker()Lc8/Acb;

    move-result-object v0

    iget-object v1, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v1}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/Acb;->recordRenderTime(Ljava/lang/String;F)V

    .line 242
    return-void
.end method

.method private setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lc8/rfb;->visible:Z

    if-eq p1, v0, :cond_0

    .line 366
    iput-boolean p1, p0, Lc8/rfb;->visible:Z

    .line 367
    invoke-direct {p0}, Lc8/rfb;->invalidateSelf()V

    .line 369
    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v1, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v1}, Lc8/xfb;->getInOutKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    new-instance v0, Lc8/edb;

    iget-object v1, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    .line 138
    invoke-virtual {v1}, Lc8/xfb;->getInOutKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/edb;-><init>(Ljava/util/List;)V

    .line 139
    .local v0, "inOutAnimation":Lc8/edb;
    invoke-virtual {v0}, Lc8/edb;->setIsDiscrete()V

    .line 140
    new-instance v1, Lc8/pfb;

    invoke-direct {v1, p0, v0}, Lc8/pfb;-><init>(Lc8/rfb;Lc8/edb;)V

    invoke-virtual {v0, v1}, Lc8/edb;->addUpdateListener(Lc8/bdb;)V

    .line 145
    invoke-virtual {v0}, Lc8/edb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lc8/rfb;->setVisible(Z)V

    .line 146
    invoke-virtual {p0, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 150
    .end local v0    # "inOutAnimation":Lc8/edb;
    :goto_1
    return-void

    .line 145
    .restart local v0    # "inOutAnimation":Lc8/edb;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    .end local v0    # "inOutAnimation":Lc8/edb;
    :cond_1
    invoke-direct {p0, v2}, Lc8/rfb;->setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addAnimation(Lc8/cdb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/cdb",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "newAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<**>;"
    instance-of v0, p1, Lc8/rdb;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/rfb;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    return-void
.end method

.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 413
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    .line 169
    iget-object v2, p0, Lc8/rfb;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 170
    iget-boolean v2, p0, Lc8/rfb;->visible:Z

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lc8/rfb;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 236
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lc8/rfb;->buildParentLayerListIfNeeded()V

    .line 175
    const-string/jumbo v2, "Layer#parentMatrix"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 177
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    iget-object v2, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 179
    iget-object v3, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lc8/rfb;->parentLayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/rfb;

    iget-object v2, v2, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v2}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 181
    :cond_1
    const-string/jumbo v2, "Layer#parentMatrix"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 182
    int-to-float v2, p3

    div-float v3, v2, v4

    iget-object v2, p0, Lc8/rfb;->transform:Lc8/tdb;

    .line 183
    invoke-virtual {v2}, Lc8/tdb;->getOpacity()Lc8/cdb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 184
    .local v0, "alpha":I
    invoke-virtual {p0}, Lc8/rfb;->hasMatteOnThisLayer()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lc8/rfb;->hasMasksOnThisLayer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v3}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 186
    const-string/jumbo v2, "Layer#drawLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, v0}, Lc8/rfb;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 188
    const-string/jumbo v2, "Layer#drawLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 189
    iget-object v2, p0, Lc8/rfb;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v2}, Lc8/rfb;->recordRenderTime(F)V

    goto/16 :goto_0

    .line 193
    :cond_2
    const-string/jumbo v2, "Layer#computeBounds"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 196
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lc8/rfb;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 198
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v3}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 199
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lc8/rfb;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 201
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    const-string/jumbo v2, "Layer#computeBounds"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 204
    const-string/jumbo v2, "Layer#saveLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/rfb;->contentPaint:Landroid/graphics/Paint;

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 206
    const-string/jumbo v2, "Layer#saveLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 209
    invoke-direct {p0, p1}, Lc8/rfb;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 210
    const-string/jumbo v2, "Layer#drawLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, v0}, Lc8/rfb;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 212
    const-string/jumbo v2, "Layer#drawLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 214
    invoke-virtual {p0}, Lc8/rfb;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lc8/rfb;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v2}, Lc8/rfb;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 218
    :cond_3
    invoke-virtual {p0}, Lc8/rfb;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    const-string/jumbo v2, "Layer#drawMatte"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "Layer#saveLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lc8/rfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/rfb;->mattePaint:Landroid/graphics/Paint;

    const/16 v4, 0x13

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 222
    const-string/jumbo v2, "Layer#saveLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 223
    invoke-direct {p0, p1}, Lc8/rfb;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v2, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    invoke-virtual {v2, p1, p2, v0}, Lc8/rfb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 226
    const-string/jumbo v2, "Layer#restoreLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    const-string/jumbo v2, "Layer#restoreLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 229
    const-string/jumbo v2, "Layer#drawMatte"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 232
    :cond_4
    const-string/jumbo v2, "Layer#restoreLayer"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    const-string/jumbo v2, "Layer#restoreLayer"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 235
    iget-object v2, p0, Lc8/rfb;->drawTraceName:Ljava/lang/String;

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v2}, Lc8/rfb;->recordRenderTime(F)V

    goto/16 :goto_0
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lc8/rfb;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 164
    iget-object v0, p0, Lc8/rfb;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/rfb;->transform:Lc8/tdb;

    invoke-virtual {v1}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 165
    return-void
.end method

.method getLayerModel()Lc8/xfb;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v0}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lc8/rfb;->mask:Lc8/idb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rfb;->mask:Lc8/idb;

    invoke-virtual {v0}, Lc8/idb;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMatteOnThisLayer()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lc8/rfb;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    return-void
.end method

.method setMatteLayer(Lc8/rfb;)V
    .locals 0
    .param p1, "matteLayer"    # Lc8/rfb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    iput-object p1, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    .line 125
    return-void
.end method

.method setParentLayer(Lc8/rfb;)V
    .locals 0
    .param p1, "parentLayer"    # Lc8/rfb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    iput-object p1, p0, Lc8/rfb;->parentLayer:Lc8/rfb;

    .line 133
    return-void
.end method

.method setProgress(F)V
    .locals 4
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 372
    iget-object v2, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v2}, Lc8/xfb;->getTimeStretch()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v2}, Lc8/xfb;->getTimeStretch()F

    move-result v2

    div-float/2addr p1, v2

    .line 375
    :cond_0
    iget-object v2, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    iget-object v2, v2, Lc8/rfb;->layerModel:Lc8/xfb;

    invoke-virtual {v2}, Lc8/xfb;->getTimeStretch()F

    move-result v1

    .line 378
    .local v1, "matteTimeStretch":F
    iget-object v2, p0, Lc8/rfb;->matteLayer:Lc8/rfb;

    mul-float v3, p1, v1

    invoke-virtual {v2, v3}, Lc8/rfb;->setProgress(F)V

    .line 380
    .end local v1    # "matteTimeStretch":F
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/rfb;->animations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 381
    iget-object v2, p0, Lc8/rfb;->animations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/cdb;

    invoke-virtual {v2, p1}, Lc8/cdb;->setProgress(F)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_2
    return-void
.end method
