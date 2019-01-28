.class public Lc8/Lcb;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lc8/Tcb;
.implements Lc8/bdb;


# instance fields
.field private final circleShape:Lc8/Beb;

.field private isPathValid:Z

.field private final lottieDrawable:Lc8/tcb;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lc8/adb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/Beb;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "circleShape"    # Lc8/Beb;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    .line 31
    invoke-virtual {p3}, Lc8/Beb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Lcb;->name:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lc8/Lcb;->lottieDrawable:Lc8/tcb;

    .line 33
    invoke-virtual {p3}, Lc8/Beb;->getSize()Lc8/eeb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eeb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Lcb;->sizeAnimation:Lc8/cdb;

    .line 34
    invoke-virtual {p3}, Lc8/Beb;->getPosition()Lc8/veb;

    move-result-object v0

    invoke-interface {v0}, Lc8/veb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Lcb;->positionAnimation:Lc8/cdb;

    .line 35
    iput-object p3, p0, Lc8/Lcb;->circleShape:Lc8/Beb;

    .line 37
    iget-object v0, p0, Lc8/Lcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 38
    iget-object v0, p0, Lc8/Lcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 40
    iget-object v0, p0, Lc8/Lcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 41
    iget-object v0, p0, Lc8/Lcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 42
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Lcb;->isPathValid:Z

    .line 50
    iget-object v0, p0, Lc8/Lcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Lcb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 14

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3f0d6239    # 0.55228f

    const/4 v6, 0x0

    .line 69
    iget-boolean v0, p0, Lc8/Lcb;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    .line 107
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 76
    iget-object v0, p0, Lc8/Lcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {v0}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 77
    .local v13, "size":Landroid/graphics/PointF;
    iget v0, v13, Landroid/graphics/PointF;->x:F

    div-float v11, v0, v2

    .line 78
    .local v11, "halfWidth":F
    iget v0, v13, Landroid/graphics/PointF;->y:F

    div-float v10, v0, v2

    .line 81
    .local v10, "halfHeight":F
    mul-float v9, v11, v1

    .line 82
    .local v9, "cpW":F
    mul-float v8, v10, v1

    .line 84
    .local v8, "cpH":F
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 85
    iget-object v0, p0, Lc8/Lcb;->circleShape:Lc8/Beb;

    invoke-virtual {v0}, Lc8/Beb;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    neg-float v1, v10

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 87
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    sub-float v1, v6, v9

    neg-float v2, v10

    neg-float v3, v11

    sub-float v4, v6, v8

    neg-float v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 88
    iget-object v1, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    neg-float v2, v11

    add-float v3, v8, v6

    sub-float v4, v6, v9

    move v5, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 89
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    add-float v1, v9, v6

    add-float v4, v8, v6

    move v2, v10

    move v3, v11

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 90
    iget-object v1, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    sub-float v3, v6, v8

    add-float v4, v9, v6

    neg-float v5, v10

    neg-float v7, v10

    move v2, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    :goto_1
    iget-object v0, p0, Lc8/Lcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {v0}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 100
    .local v12, "position":Landroid/graphics/PointF;
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    iget v1, v12, Landroid/graphics/PointF;->x:F

    iget v2, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 102
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 104
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/Lcb;->trimPath:Lc8/adb;

    invoke-static {v0, v1}, Lc8/Kfb;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lc8/adb;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Lcb;->isPathValid:Z

    .line 107
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 92
    .end local v12    # "position":Landroid/graphics/PointF;
    :cond_1
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    neg-float v1, v10

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    add-float v1, v9, v6

    neg-float v2, v10

    sub-float v4, v6, v8

    move v3, v11

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 94
    iget-object v1, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    add-float v3, v8, v6

    add-float v4, v9, v6

    move v2, v11

    move v5, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 95
    iget-object v0, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    sub-float v1, v6, v9

    neg-float v3, v11

    add-float v4, v8, v6

    neg-float v5, v11

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 96
    iget-object v1, p0, Lc8/Lcb;->path:Landroid/graphics/Path;

    neg-float v2, v11

    sub-float v3, v6, v8

    sub-float v4, v6, v9

    neg-float v5, v10

    neg-float v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lc8/Lcb;->invalidate()V

    .line 46
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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
    .line 54
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 56
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/adb;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lc8/adb;

    .line 57
    invoke-virtual {v2}, Lc8/adb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 58
    check-cast v0, Lc8/adb;

    .end local v0    # "content":Lc8/Icb;
    iput-object v0, p0, Lc8/Lcb;->trimPath:Lc8/adb;

    .line 59
    iget-object v2, p0, Lc8/Lcb;->trimPath:Lc8/adb;

    invoke-virtual {v2, p0}, Lc8/adb;->addListener(Lc8/bdb;)V

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method
