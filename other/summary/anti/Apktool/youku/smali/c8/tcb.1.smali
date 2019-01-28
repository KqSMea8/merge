.class public Lc8/tcb;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rcb;,
        Lc8/scb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lc8/Hfb;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/rcb;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lc8/kcb;

.field private compositionLayer:Lc8/tfb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lc8/acb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lc8/udb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lc8/bcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lc8/vdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/scb;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field textDelegate:Lc8/Ccb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lc8/tcb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/tcb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/tcb;->matrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Lc8/Hfb;

    invoke-direct {v0}, Lc8/Hfb;-><init>()V

    iput-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/tcb;->scale:F

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0xff

    iput v0, p0, Lc8/tcb;->alpha:I

    .line 67
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    new-instance v1, Lc8/lcb;

    invoke-direct {v1, p0}, Lc8/lcb;-><init>(Lc8/tcb;)V

    invoke-virtual {v0, v1}, Lc8/Hfb;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lc8/tcb;)Lc8/tfb;
    .locals 1
    .param p0, "x0"    # Lc8/tcb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    return-object v0
.end method

.method static synthetic access$100(Lc8/tcb;)Lc8/Hfb;
    .locals 1
    .param p0, "x0"    # Lc8/tcb;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    return-object v0
.end method

.method private addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
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
    .line 285
    new-instance v0, Lc8/rcb;

    invoke-direct {v0, p1, p2, p3}, Lc8/rcb;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 286
    .local v0, "data":Lc8/rcb;
    if-nez p3, :cond_0

    iget-object v1, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    :goto_0
    iget-object v1, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-nez v1, :cond_1

    .line 297
    :goto_1
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    new-instance v2, Lc8/rcb;

    invoke-direct {v2, p1, p2, p3}, Lc8/rcb;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    invoke-virtual {v1, p1, p2, p3}, Lc8/tfb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private applyColorFilters()V
    .locals 6

    .prologue
    .line 199
    iget-object v1, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rcb;

    .line 204
    .local v0, "data":Lc8/rcb;
    iget-object v2, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    iget-object v3, v0, Lc8/rcb;->layerName:Ljava/lang/String;

    iget-object v4, v0, Lc8/rcb;->contentName:Ljava/lang/String;

    iget-object v5, v0, Lc8/rcb;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v5}, Lc8/tfb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lc8/tfb;

    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    .line 195
    invoke-static {v1}, Lc8/wfb;->newInstance(Lc8/kcb;)Lc8/xfb;

    move-result-object v1

    iget-object v2, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v2}, Lc8/kcb;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/tfb;-><init>(Lc8/tcb;Lc8/xfb;Ljava/util/List;Lc8/kcb;)V

    iput-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    .line 196
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 699
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 700
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_1

    .line 707
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    :goto_0
    return-object v1

    .line 704
    .restart local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 705
    check-cast v0, Landroid/view/View;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFontAssetManager()Lc8/udb;
    .locals 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 695
    :goto_0
    return-object v0

    .line 691
    :cond_0
    iget-object v0, p0, Lc8/tcb;->fontAssetManager:Lc8/udb;

    if-nez v0, :cond_1

    .line 692
    new-instance v0, Lc8/udb;

    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lc8/tcb;->fontAssetDelegate:Lc8/acb;

    invoke-direct {v0, v1, v2}, Lc8/udb;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lc8/acb;)V

    iput-object v0, p0, Lc8/tcb;->fontAssetManager:Lc8/udb;

    .line 695
    :cond_1
    iget-object v0, p0, Lc8/tcb;->fontAssetManager:Lc8/udb;

    goto :goto_0
.end method

.method private getImageAssetManager()Lc8/vdb;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 674
    :goto_0
    return-object v0

    .line 664
    :cond_0
    iget-object v1, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    invoke-direct {p0}, Lc8/tcb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/vdb;->hasSameContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    iget-object v1, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    invoke-virtual {v1}, Lc8/vdb;->recycleBitmaps()V

    .line 666
    iput-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    .line 669
    :cond_1
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    if-nez v0, :cond_2

    .line 670
    new-instance v0, Lc8/vdb;

    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lc8/tcb;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lc8/tcb;->imageAssetDelegate:Lc8/bcb;

    iget-object v4, p0, Lc8/tcb;->composition:Lc8/kcb;

    .line 671
    invoke-virtual {v4}, Lc8/kcb;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/vdb;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lc8/bcb;Ljava/util/Map;)V

    iput-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    .line 674
    :cond_2
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    goto :goto_0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v3}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 744
    .local v0, "maxScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v3}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 745
    .local v1, "maxScaleY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private updateBounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 600
    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lc8/tcb;->getScale()F

    move-result v0

    .line 604
    .local v0, "scale":F
    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v1}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lc8/tcb;->composition:Lc8/kcb;

    .line 605
    invoke-virtual {v2}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 604
    invoke-virtual {p0, v3, v3, v1, v2}, Lc8/tcb;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 480
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 472
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 473
    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0, v0, p1}, Lc8/tcb;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 264
    return-void
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "contentName"    # Ljava/lang/String;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lc8/tcb;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 247
    return-void
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc8/tcb;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 256
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->cancel()V

    .line 611
    return-void
.end method

.method public clearColorFilters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lc8/tcb;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 271
    invoke-direct {p0, v1, v1, v1}, Lc8/tcb;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 272
    return-void
.end method

.method public clearComposition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0}, Lc8/tcb;->recycleBitmaps()V

    .line 210
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->cancel()V

    .line 213
    :cond_0
    iput-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    .line 214
    iput-object v1, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    .line 215
    iput-object v1, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    .line 216
    invoke-virtual {p0}, Lc8/tcb;->invalidateSelf()V

    .line 217
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 304
    const-string/jumbo v7, "Drawable#draw"

    invoke-static {v7}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 305
    iget-object v7, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-nez v7, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v4, p0, Lc8/tcb;->scale:F

    .line 310
    .local v4, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 311
    .local v0, "extraScale":F
    invoke-direct {p0, p1}, Lc8/tcb;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v3

    .line 312
    .local v3, "maxScale":F
    cmpl-float v7, v4, v3

    if-lez v7, :cond_2

    .line 313
    move v4, v3

    .line 314
    iget v7, p0, Lc8/tcb;->scale:F

    div-float v0, v7, v4

    .line 317
    :cond_2
    cmpl-float v7, v0, v10

    if-lez v7, :cond_3

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 328
    iget-object v7, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v7}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v7, v8

    .line 329
    .local v2, "halfWidth":F
    iget-object v7, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v7}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v7, v8

    .line 330
    .local v1, "halfHeight":F
    mul-float v6, v2, v4

    .line 331
    .local v6, "scaledHalfWidth":F
    mul-float v5, v1, v4

    .line 334
    .local v5, "scaledHalfHeight":F
    invoke-virtual {p0}, Lc8/tcb;->getScale()F

    move-result v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v6

    .line 335
    invoke-virtual {p0}, Lc8/tcb;->getScale()F

    move-result v8

    mul-float/2addr v8, v1

    sub-float/2addr v8, v5

    .line 333
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    invoke-virtual {p1, v0, v0, v6, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 339
    .end local v1    # "halfHeight":F
    .end local v2    # "halfWidth":F
    .end local v5    # "scaledHalfHeight":F
    .end local v6    # "scaledHalfWidth":F
    :cond_3
    iget-object v7, p0, Lc8/tcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 340
    iget-object v7, p0, Lc8/tcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 341
    iget-object v7, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    iget-object v8, p0, Lc8/tcb;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lc8/tcb;->alpha:I

    invoke-virtual {v7, p1, v8, v9}, Lc8/tfb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 342
    const-string/jumbo v7, "Drawable#draw"

    invoke-static {v7}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 344
    cmpl-float v7, v0, v10

    if-lez v7, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iput-boolean p1, p0, Lc8/tcb;->enableMergePaths:Z

    .line 107
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lc8/tcb;->buildCompositionLayer()V

    goto :goto_0
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lc8/tcb;->enableMergePaths:Z

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lc8/tcb;->alpha:I

    return v0
.end method

.method public getComposition()Lc8/kcb;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    return-object v0
.end method

.method public getFrame()I
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/tcb;->getProgress()F

    move-result v0

    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v1}, Lc8/kcb;->getDurationFrames()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Lc8/tcb;->getImageAssetManager()Lc8/vdb;

    move-result-object v0

    .line 652
    .local v0, "bm":Lc8/vdb;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, p1}, Lc8/vdb;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 655
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lc8/tcb;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lc8/tcb;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lc8/tcb;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lc8/Acb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/kcb;->getPerformanceTracker()Lc8/Acb;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->getValue()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lc8/tcb;->scale:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTextDelegate()Lc8/Ccb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lc8/tcb;->textDelegate:Lc8/Ccb;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 678
    invoke-direct {p0}, Lc8/tcb;->getFontAssetManager()Lc8/udb;

    move-result-object v0

    .line 679
    .local v0, "assetManager":Lc8/udb;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1, p2}, Lc8/udb;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 682
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMasks()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    invoke-virtual {v0}, Lc8/tfb;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatte()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    invoke-virtual {v0}, Lc8/tfb;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 715
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 716
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 221
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z

    .prologue
    .line 524
    iget-object v1, p0, Lc8/tcb;->animator:Lc8/Hfb;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lc8/Hfb;->setRepeatCount(I)V

    .line 525
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 615
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->pauseAnimation()V

    .line 616
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/mcb;

    invoke-direct {v1, p0}, Lc8/mcb;-><init>(Lc8/tcb;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->playAnimation()V

    goto :goto_0
.end method

.method public recycleBitmaps()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    invoke-virtual {v0}, Lc8/vdb;->recycleBitmaps()V

    .line 144
    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 484
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 485
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 476
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 477
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/ncb;

    invoke-direct {v1, p0}, Lc8/ncb;-><init>(Lc8/tcb;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->resumeAnimation()V

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->reverseAnimationSpeed()V

    .line 455
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .prologue
    .line 723
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 724
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 227
    iput p1, p0, Lc8/tcb;->alpha:I

    .line 228
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    return-void
.end method

.method public setComposition(Lc8/kcb;)Z
    .locals 6
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 150
    iget-object v2, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-ne v2, p1, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 175
    :goto_0
    return v2

    .line 154
    :cond_0
    invoke-virtual {p0}, Lc8/tcb;->clearComposition()V

    .line 155
    iput-object p1, p0, Lc8/tcb;->composition:Lc8/kcb;

    .line 156
    invoke-direct {p0}, Lc8/tcb;->buildCompositionLayer()V

    .line 157
    iget-object v2, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {p1}, Lc8/kcb;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lc8/Hfb;->setCompositionDuration(J)V

    .line 158
    iget-object v2, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v2}, Lc8/Hfb;->getValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lc8/tcb;->setProgress(F)V

    .line 159
    iget v2, p0, Lc8/tcb;->scale:F

    invoke-virtual {p0, v2}, Lc8/tcb;->setScale(F)V

    .line 160
    invoke-direct {p0}, Lc8/tcb;->updateBounds()V

    .line 161
    invoke-direct {p0}, Lc8/tcb;->applyColorFilters()V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/scb;

    .line 168
    .local v1, "t":Lc8/scb;
    invoke-interface {v1, p1}, Lc8/scb;->run(Lc8/kcb;)V

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 171
    .end local v1    # "t":Lc8/scb;
    :cond_1
    iget-object v2, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-boolean v2, p0, Lc8/tcb;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v2}, Lc8/kcb;->setPerformanceTrackingEnabled(Z)V

    .line 175
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lc8/acb;)V
    .locals 1
    .param p1, "assetDelegate"    # Lc8/acb;

    .prologue
    .line 573
    iput-object p1, p0, Lc8/tcb;->fontAssetDelegate:Lc8/acb;

    .line 574
    iget-object v0, p0, Lc8/tcb;->fontAssetManager:Lc8/udb;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lc8/tcb;->fontAssetManager:Lc8/udb;

    invoke-virtual {v0, p1}, Lc8/udb;->setDelegate(Lc8/acb;)V

    .line 577
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2
    .param p1, "frame"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/qcb;

    invoke-direct {v1, p0, p1}, Lc8/qcb;-><init>(Lc8/tcb;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v1}, Lc8/kcb;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/tcb;->setProgress(F)V

    goto :goto_0
.end method

.method public setImageAssetDelegate(Lc8/bcb;)V
    .locals 1
    .param p1, "assetDelegate"    # Lc8/bcb;

    .prologue
    .line 562
    iput-object p1, p0, Lc8/tcb;->imageAssetDelegate:Lc8/bcb;

    .line 563
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lc8/tcb;->imageAssetManager:Lc8/vdb;

    invoke-virtual {v0, p1}, Lc8/vdb;->setDelegate(Lc8/bcb;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lc8/tcb;->imageAssetsFolder:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2
    .param p1, "maxFrame"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/pcb;

    invoke-direct {v1, p0, p1}, Lc8/pcb;-><init>(Lc8/tcb;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v1}, Lc8/kcb;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/tcb;->setMaxProgress(F)V

    goto :goto_0
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "maxProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 424
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->setMaxValue(F)V

    .line 425
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lc8/tcb;->setMinFrame(I)V

    .line 433
    invoke-virtual {p0, p2}, Lc8/tcb;->setMaxFrame(I)V

    .line 434
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0
    .param p1, "minProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "maxProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lc8/tcb;->setMinProgress(F)V

    .line 444
    invoke-virtual {p0, p2}, Lc8/tcb;->setMaxProgress(F)V

    .line 445
    return-void
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "minFrame"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lc8/tcb;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/ocb;

    invoke-direct {v1, p0, p1}, Lc8/ocb;-><init>(Lc8/tcb;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v1}, Lc8/kcb;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/tcb;->setMinProgress(F)V

    goto :goto_0
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "minProgress"    # F

    .prologue
    .line 402
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->setMinValue(F)V

    .line 403
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lc8/tcb;->performanceTrackingEnabled:Z

    .line 180
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v0, p1}, Lc8/kcb;->setPerformanceTrackingEnabled(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 517
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->setValue(F)V

    .line 518
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lc8/tcb;->compositionLayer:Lc8/tfb;

    invoke-virtual {v0, p1}, Lc8/tfb;->setProgress(F)V

    .line 521
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 551
    iput p1, p0, Lc8/tcb;->scale:F

    .line 552
    invoke-direct {p0}, Lc8/tcb;->updateBounds()V

    .line 553
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 461
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0, p1}, Lc8/Hfb;->setSpeed(F)V

    .line 462
    return-void
.end method

.method public setTextDelegate(Lc8/Ccb;)V
    .locals 0
    .param p1, "textDelegate"    # Lc8/Ccb;

    .prologue
    .line 580
    iput-object p1, p0, Lc8/tcb;->textDelegate:Lc8/Ccb;

    .line 581
    return-void
.end method

.method systemAnimationsAreDisabled()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lc8/tcb;->animator:Lc8/Hfb;

    invoke-virtual {v0}, Lc8/Hfb;->systemAnimationsAreDisabled()V

    .line 537
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 731
    invoke-virtual {p0}, Lc8/tcb;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 732
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0}, Lc8/tcb;->getImageAssetManager()Lc8/vdb;

    move-result-object v0

    .line 640
    .local v0, "bm":Lc8/vdb;
    if-nez v0, :cond_0

    .line 643
    const/4 v1, 0x0

    .line 647
    :goto_0
    return-object v1

    .line 645
    :cond_0
    invoke-virtual {v0, p1, p2}, Lc8/vdb;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 646
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lc8/tcb;->invalidateSelf()V

    goto :goto_0
.end method

.method public useTextGlyphs()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lc8/tcb;->textDelegate:Lc8/Ccb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/tcb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/kcb;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
