.class public Lc8/Mcb;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lc8/Kcb;
.implements Lc8/bdb;


# instance fields
.field private final colorAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lc8/tcb;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tcb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/dfb;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "fill"    # Lc8/dfb;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/Mcb;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Mcb;->paths:Ljava/util/List;

    .line 30
    invoke-virtual {p3}, Lc8/dfb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mcb;->name:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lc8/Mcb;->lottieDrawable:Lc8/tcb;

    .line 32
    invoke-virtual {p3}, Lc8/dfb;->getColor()Lc8/Ndb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lc8/dfb;->getOpacity()Lc8/Zdb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    iput-object v2, p0, Lc8/Mcb;->colorAnimation:Lc8/cdb;

    .line 34
    iput-object v2, p0, Lc8/Mcb;->opacityAnimation:Lc8/cdb;

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lc8/dfb;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 40
    invoke-virtual {p3}, Lc8/dfb;->getColor()Lc8/Ndb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Ndb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Mcb;->colorAnimation:Lc8/cdb;

    .line 41
    iget-object v0, p0, Lc8/Mcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 42
    iget-object v0, p0, Lc8/Mcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 43
    invoke-virtual {p3}, Lc8/dfb;->getOpacity()Lc8/Zdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Zdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Mcb;->opacityAnimation:Lc8/cdb;

    .line 44
    iget-object v0, p0, Lc8/Mcb;->opacityAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 45
    iget-object v0, p0, Lc8/Mcb;->opacityAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    goto :goto_0
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
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
    .line 67
    iget-object v0, p0, Lc8/Mcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 71
    const-string/jumbo v2, "FillContent#draw"

    invoke-static {v2}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lc8/Mcb;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lc8/Mcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v2}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    int-to-float v2, p3

    div-float v3, v2, v4

    iget-object v2, p0, Lc8/Mcb;->opacityAnimation:Lc8/cdb;

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

    .line 74
    .local v0, "alpha":I
    iget-object v2, p0, Lc8/Mcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v2, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Mcb;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 78
    iget-object v3, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lc8/Mcb;->paths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Tcb;

    invoke-interface {v2}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lc8/Mcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    const-string/jumbo v2, "FillContent#draw"

    invoke-static {v2}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 83
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    iget-object v1, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/Mcb;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v2, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/Mcb;->paths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Tcb;

    invoke-interface {v1}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lc8/Mcb;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 92
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Mcb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/Mcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 50
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
    .line 53
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 54
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 55
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/Tcb;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lc8/Mcb;->paths:Ljava/util/List;

    check-cast v0, Lc8/Tcb;

    .end local v0    # "content":Lc8/Icb;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method
