.class public Lc8/Wcb;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lc8/Tcb;
.implements Lc8/bdb;


# instance fields
.field private final cornerRadiusAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rect:Landroid/graphics/RectF;

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
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/Veb;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "rectShape"    # Lc8/Veb;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {p3}, Lc8/Veb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Wcb;->name:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lc8/Wcb;->lottieDrawable:Lc8/tcb;

    .line 33
    invoke-virtual {p3}, Lc8/Veb;->getPosition()Lc8/veb;

    move-result-object v0

    invoke-interface {v0}, Lc8/veb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Wcb;->positionAnimation:Lc8/cdb;

    .line 34
    invoke-virtual {p3}, Lc8/Veb;->getSize()Lc8/eeb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eeb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Wcb;->sizeAnimation:Lc8/cdb;

    .line 35
    invoke-virtual {p3}, Lc8/Veb;->getCornerRadius()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Wcb;->cornerRadiusAnimation:Lc8/cdb;

    .line 37
    iget-object v0, p0, Lc8/Wcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 38
    iget-object v0, p0, Lc8/Wcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 39
    iget-object v0, p0, Lc8/Wcb;->cornerRadiusAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 41
    iget-object v0, p0, Lc8/Wcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 42
    iget-object v0, p0, Lc8/Wcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 43
    iget-object v0, p0, Lc8/Wcb;->cornerRadiusAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 44
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Wcb;->isPathValid:Z

    .line 56
    iget-object v0, p0, Lc8/Wcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 57
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Wcb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 12

    .prologue
    .line 71
    iget-boolean v6, p0, Lc8/Wcb;->isPathValid:Z

    if-eqz v6, :cond_0

    .line 72
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    .line 135
    :goto_0
    return-object v6

    .line 75
    :cond_0
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 77
    iget-object v6, p0, Lc8/Wcb;->sizeAnimation:Lc8/cdb;

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 78
    .local v5, "size":Landroid/graphics/PointF;
    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v1, v6, v7

    .line 79
    .local v1, "halfWidth":F
    iget v6, v5, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v0, v6, v7

    .line 80
    .local v0, "halfHeight":F
    iget-object v6, p0, Lc8/Wcb;->cornerRadiusAnimation:Lc8/cdb;

    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 81
    .local v4, "radius":F
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 82
    .local v2, "maxRadius":F
    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    .line 83
    move v4, v2

    .line 87
    :cond_1
    iget-object v6, p0, Lc8/Wcb;->positionAnimation:Lc8/cdb;

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 89
    .local v3, "position":Landroid/graphics/PointF;
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    add-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    sub-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 94
    iget-object v6, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    iget v10, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 101
    :cond_2
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 104
    iget-object v6, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 111
    :cond_3
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    add-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    .line 114
    iget-object v6, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 121
    :cond_4
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 124
    iget-object v6, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v1

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lc8/Wcb;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    :cond_5
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lc8/Wcb;->trimPath:Lc8/adb;

    invoke-static {v6, v7}, Lc8/Kfb;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lc8/adb;)V

    .line 134
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/Wcb;->isPathValid:Z

    .line 135
    iget-object v6, p0, Lc8/Wcb;->path:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 80
    .end local v2    # "maxRadius":F
    .end local v3    # "position":Landroid/graphics/PointF;
    .end local v4    # "radius":F
    :cond_6
    iget-object v6, p0, Lc8/Wcb;->cornerRadiusAnimation:Lc8/cdb;

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_1
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lc8/Wcb;->invalidate()V

    .line 52
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
    .line 60
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 62
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/adb;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lc8/adb;

    .line 63
    invoke-virtual {v2}, Lc8/adb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 64
    check-cast v0, Lc8/adb;

    .end local v0    # "content":Lc8/Icb;
    iput-object v0, p0, Lc8/Wcb;->trimPath:Lc8/adb;

    .line 65
    iget-object v2, p0, Lc8/Wcb;->trimPath:Lc8/adb;

    invoke-virtual {v2, p0}, Lc8/adb;->addListener(Lc8/bdb;)V

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
