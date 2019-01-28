.class public abstract Lc8/Hcb;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lc8/Kcb;
.implements Lc8/bdb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Gcb;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lc8/tcb;

.field private final opacityAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Gcb;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/rfb;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lc8/Zdb;Lc8/Rdb;Ljava/util/List;Lc8/Rdb;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "cap"    # Landroid/graphics/Paint$Cap;
    .param p4, "join"    # Landroid/graphics/Paint$Join;
    .param p5, "opacity"    # Lc8/Zdb;
    .param p6, "width"    # Lc8/Rdb;
    .param p8, "offset"    # Lc8/Rdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tcb;",
            "Lc8/rfb;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lc8/Zdb;",
            "Lc8/Rdb;",
            "Ljava/util/List",
            "<",
            "Lc8/Rdb;",
            ">;",
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p7, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    .line 28
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    .line 29
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    .line 44
    iput-object p1, p0, Lc8/Hcb;->lottieDrawable:Lc8/tcb;

    .line 46
    iget-object v1, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v1, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    iget-object v1, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    invoke-virtual {p5}, Lc8/Zdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Hcb;->opacityAnimation:Lc8/cdb;

    .line 51
    invoke-virtual {p6}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Hcb;->widthAnimation:Lc8/cdb;

    .line 53
    if-nez p8, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    .line 58
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    .line 59
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lc8/Hcb;->dashPatternValues:[F

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v2, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Rdb;

    invoke-virtual {v1}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p8}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    goto :goto_0

    .line 65
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lc8/Hcb;->opacityAnimation:Lc8/cdb;

    invoke-virtual {p2, v1}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 66
    iget-object v1, p0, Lc8/Hcb;->widthAnimation:Lc8/cdb;

    invoke-virtual {p2, v1}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 67
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 68
    iget-object v1, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/cdb;

    invoke-virtual {p2, v1}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_2
    iget-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    invoke-virtual {p2, v1}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 74
    :cond_3
    iget-object v1, p0, Lc8/Hcb;->opacityAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 75
    iget-object v1, p0, Lc8/Hcb;->widthAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 77
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 78
    iget-object v1, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    :cond_4
    iget-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    if-eqz v1, :cond_5

    .line 81
    iget-object v1, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 83
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    .line 250
    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 277
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {p1}, Lc8/Kfb;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    .line 257
    .local v2, "scale":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 258
    iget-object v4, p0, Lc8/Hcb;->dashPatternValues:[F

    iget-object v3, p0, Lc8/Hcb;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v0

    .line 263
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    .line 264
    iget-object v3, p0, Lc8/Hcb;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 265
    iget-object v3, p0, Lc8/Hcb;->dashPatternValues:[F

    aput v6, v3, v0

    .line 272
    :cond_1
    :goto_2
    iget-object v3, p0, Lc8/Hcb;->dashPatternValues:[F

    aget v4, v3, v0

    mul-float/2addr v4, v2

    aput v4, v3, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_2
    iget-object v3, p0, Lc8/Hcb;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 269
    iget-object v3, p0, Lc8/Hcb;->dashPatternValues:[F

    aput v5, v3, v0

    goto :goto_2

    .line 274
    :cond_3
    iget-object v3, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    if-nez v3, :cond_4

    const/4 v1, 0x0

    .line 275
    .local v1, "offset":F
    :goto_3
    iget-object v3, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lc8/Hcb;->dashPatternValues:[F

    invoke-direct {v4, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 276
    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    goto :goto_0

    .line 274
    .end local v1    # "offset":F
    :cond_4
    iget-object v3, p0, Lc8/Hcb;->dashPatternOffsetAnimation:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lc8/Gcb;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pathGroup"    # Lc8/Gcb;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 158
    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Lc8/Gcb;->access$200(Lc8/Gcb;)Lc8/adb;

    move-result-object v9

    if-nez v9, :cond_0

    .line 160
    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 222
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v9, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 164
    invoke-static {p2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 165
    iget-object v10, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Tcb;

    invoke-interface {v9}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 164
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 167
    :cond_1
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 168
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 169
    .local v8, "totalLength":F
    :goto_2
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 170
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v8, v9

    goto :goto_2

    .line 172
    :cond_2
    invoke-static {p2}, Lc8/Gcb;->access$200(Lc8/Gcb;)Lc8/adb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/adb;->getOffset()Lc8/cdb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x43b40000    # 360.0f

    div-float v5, v9, v10

    .line 174
    .local v5, "offsetLength":F
    invoke-static {p2}, Lc8/Gcb;->access$200(Lc8/Gcb;)Lc8/adb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/adb;->getStart()Lc8/cdb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v6, v9, v5

    .line 176
    .local v6, "startLength":F
    invoke-static {p2}, Lc8/Gcb;->access$200(Lc8/Gcb;)Lc8/adb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/adb;->getEnd()Lc8/cdb;

    move-result-object v9

    invoke-virtual {v9}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v1, v9, v5

    .line 178
    .local v1, "endLength":F
    const/4 v0, 0x0

    .line 179
    .local v0, "currentLength":F
    invoke-static {p2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_3
    if-ltz v3, :cond_9

    .line 180
    iget-object v10, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Tcb;

    invoke-interface {v9}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 181
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v9, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 182
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 183
    iget-object v9, p0, Lc8/Hcb;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 184
    .local v4, "length":F
    cmpl-float v9, v1, v8

    if-lez v9, :cond_5

    sub-float v9, v1, v8

    add-float v10, v0, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    sub-float v9, v1, v8

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    .line 189
    cmpl-float v9, v6, v8

    if-lez v9, :cond_4

    .line 190
    sub-float v9, v6, v8

    div-float v7, v9, v4

    .line 194
    .local v7, "startValue":F
    :goto_4
    sub-float v9, v1, v8

    div-float/2addr v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 195
    .local v2, "endValue":F
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lc8/Kfb;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 196
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 219
    .end local v2    # "endValue":F
    .end local v7    # "startValue":F
    :cond_3
    :goto_5
    add-float/2addr v0, v4

    .line 179
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 192
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "startValue":F
    goto :goto_4

    .line 199
    .end local v7    # "startValue":F
    :cond_5
    add-float v9, v0, v4

    cmpg-float v9, v9, v6

    if-ltz v9, :cond_3

    cmpl-float v9, v0, v1

    if-gtz v9, :cond_3

    .line 201
    add-float v9, v0, v4

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_6

    cmpg-float v9, v6, v0

    if-gez v9, :cond_6

    .line 202
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 205
    :cond_6
    cmpg-float v9, v6, v0

    if-gez v9, :cond_7

    .line 206
    const/4 v7, 0x0

    .line 211
    .restart local v7    # "startValue":F
    :goto_6
    add-float v9, v0, v4

    cmpl-float v9, v1, v9

    if-lez v9, :cond_8

    .line 212
    const/high16 v2, 0x3f800000    # 1.0f

    .line 216
    .restart local v2    # "endValue":F
    :goto_7
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lc8/Kfb;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 217
    iget-object v9, p0, Lc8/Hcb;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 208
    .end local v2    # "endValue":F
    .end local v7    # "startValue":F
    :cond_7
    sub-float v9, v6, v0

    div-float v7, v9, v4

    .restart local v7    # "startValue":F
    goto :goto_6

    .line 214
    :cond_8
    sub-float v9, v1, v0

    div-float v2, v9, v4

    .restart local v2    # "endValue":F
    goto :goto_7

    .line 221
    .end local v2    # "endValue":F
    .end local v4    # "length":F
    .end local v7    # "startValue":F
    :cond_9
    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 125
    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 126
    int-to-float v4, p3

    div-float v5, v4, v6

    iget-object v4, p0, Lc8/Hcb;->opacityAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v0, v4

    .line 127
    .local v0, "alpha":I
    iget-object v4, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v5, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lc8/Hcb;->widthAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p2}, Lc8/Kfb;->getScale(Landroid/graphics/Matrix;)F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v4, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 131
    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p2}, Lc8/Hcb;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 137
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Gcb;

    .line 140
    .local v3, "pathGroup":Lc8/Gcb;
    invoke-static {v3}, Lc8/Gcb;->access$200(Lc8/Gcb;)Lc8/adb;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 141
    invoke-direct {p0, p1, v3, p2}, Lc8/Hcb;->applyTrimPath(Landroid/graphics/Canvas;Lc8/Gcb;Landroid/graphics/Matrix;)V

    .line 136
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_1
    const-string/jumbo v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 145
    invoke-static {v3}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_3
    if-ltz v2, :cond_2

    .line 146
    iget-object v5, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Tcb;

    invoke-interface {v4}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 145
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 148
    :cond_2
    const-string/jumbo v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 149
    const-string/jumbo v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lc8/Hcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    const-string/jumbo v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    goto :goto_2

    .line 154
    .end local v2    # "j":I
    .end local v3    # "pathGroup":Lc8/Gcb;
    :cond_3
    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 225
    const-string/jumbo v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 228
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Gcb;

    .line 229
    .local v2, "pathGroup":Lc8/Gcb;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-static {v2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 230
    iget-object v5, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Tcb;

    invoke-interface {v4}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "j":I
    .end local v2    # "pathGroup":Lc8/Gcb;
    :cond_1
    iget-object v4, p0, Lc8/Hcb;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 235
    iget-object v4, p0, Lc8/Hcb;->widthAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 236
    .local v3, "width":F
    iget-object v4, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v6, v3, v9

    sub-float/2addr v5, v6

    iget-object v6, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    div-float v7, v3, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    div-float v8, v3, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    div-float v9, v3, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v4, p0, Lc8/Hcb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 240
    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v10

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v10

    iget v6, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v10

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v10

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    const-string/jumbo v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 247
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 87
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v6, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "trimPathContentBefore":Lc8/adb;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 93
    .local v0, "content":Lc8/Icb;
    instance-of v4, v0, Lc8/adb;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lc8/adb;

    .line 94
    invoke-virtual {v4}, Lc8/adb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v3, v0

    .line 95
    check-cast v3, Lc8/adb;

    .line 91
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 98
    .end local v0    # "content":Lc8/Icb;
    :cond_1
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3, p0}, Lc8/adb;->addListener(Lc8/bdb;)V

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    .local v1, "currentPathGroup":Lc8/Gcb;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_7

    .line 104
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 105
    .restart local v0    # "content":Lc8/Icb;
    instance-of v4, v0, Lc8/adb;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lc8/adb;

    .line 106
    invoke-virtual {v4}, Lc8/adb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_5

    .line 107
    if-eqz v1, :cond_3

    .line 108
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    new-instance v1, Lc8/Gcb;

    .end local v1    # "currentPathGroup":Lc8/Gcb;
    move-object v4, v0

    check-cast v4, Lc8/adb;

    invoke-direct {v1, v4, v6}, Lc8/Gcb;-><init>(Lc8/adb;Lc8/Fcb;)V

    .line 111
    .restart local v1    # "currentPathGroup":Lc8/Gcb;
    check-cast v0, Lc8/adb;

    .end local v0    # "content":Lc8/Icb;
    invoke-virtual {v0, p0}, Lc8/adb;->addListener(Lc8/bdb;)V

    .line 103
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 112
    .restart local v0    # "content":Lc8/Icb;
    :cond_5
    instance-of v4, v0, Lc8/Tcb;

    if-eqz v4, :cond_4

    .line 113
    if-nez v1, :cond_6

    .line 114
    new-instance v1, Lc8/Gcb;

    .end local v1    # "currentPathGroup":Lc8/Gcb;
    invoke-direct {v1, v3, v6}, Lc8/Gcb;-><init>(Lc8/adb;Lc8/Fcb;)V

    .line 116
    .restart local v1    # "currentPathGroup":Lc8/Gcb;
    :cond_6
    invoke-static {v1}, Lc8/Gcb;->access$100(Lc8/Gcb;)Ljava/util/List;

    move-result-object v4

    check-cast v0, Lc8/Tcb;

    .end local v0    # "content":Lc8/Icb;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_7
    if-eqz v1, :cond_8

    .line 120
    iget-object v4, p0, Lc8/Hcb;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_8
    return-void
.end method
