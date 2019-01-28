.class public Lc8/Xcb;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lc8/Kcb;
.implements Lc8/Pcb;
.implements Lc8/Tcb;
.implements Lc8/bdb;


# instance fields
.field private contentGroup:Lc8/Jcb;

.field private final copies:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final layer:Lc8/rfb;

.field private final lottieDrawable:Lc8/tcb;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lc8/tdb;


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/Xeb;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "repeater"    # Lc8/Xeb;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Xcb;->path:Landroid/graphics/Path;

    .line 37
    iput-object p1, p0, Lc8/Xcb;->lottieDrawable:Lc8/tcb;

    .line 38
    iput-object p2, p0, Lc8/Xcb;->layer:Lc8/rfb;

    .line 39
    invoke-virtual {p3}, Lc8/Xeb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Xcb;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {p3}, Lc8/Xeb;->getCopies()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Xcb;->copies:Lc8/cdb;

    .line 41
    iget-object v0, p0, Lc8/Xcb;->copies:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 42
    iget-object v0, p0, Lc8/Xcb;->copies:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 44
    invoke-virtual {p3}, Lc8/Xeb;->getOffset()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Xcb;->offset:Lc8/cdb;

    .line 45
    iget-object v0, p0, Lc8/Xcb;->offset:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 46
    iget-object v0, p0, Lc8/Xcb;->offset:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 48
    invoke-virtual {p3}, Lc8/Xeb;->getTransform()Lc8/teb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/teb;->createAnimation()Lc8/tdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Xcb;->transform:Lc8/tdb;

    .line 49
    iget-object v0, p0, Lc8/Xcb;->transform:Lc8/tdb;

    invoke-virtual {v0, p2}, Lc8/tdb;->addAnimationsToLayer(Lc8/rfb;)V

    .line 50
    iget-object v0, p0, Lc8/Xcb;->transform:Lc8/tdb;

    invoke-virtual {v0, p0}, Lc8/tdb;->addListener(Lc8/bdb;)V

    .line 51
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lc8/Icb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "contentsIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/airbnb/lottie/animation/content/Content;>;"
    iget-object v0, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 73
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 79
    new-instance v0, Lc8/Jcb;

    iget-object v1, p0, Lc8/Xcb;->lottieDrawable:Lc8/tcb;

    iget-object v2, p0, Lc8/Xcb;->layer:Lc8/rfb;

    const-string/jumbo v3, "Repeater"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lc8/Jcb;-><init>(Lc8/tcb;Lc8/rfb;Ljava/lang/String;Ljava/util/List;Lc8/teb;)V

    iput-object v0, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    goto :goto_0
.end method

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
    .line 123
    iget-object v0, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Jcb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 124
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # I

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 103
    iget-object v6, p0, Lc8/Xcb;->copies:Lc8/cdb;

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 104
    .local v0, "copies":F
    iget-object v6, p0, Lc8/Xcb;->offset:Lc8/cdb;

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 106
    .local v4, "offset":F
    iget-object v6, p0, Lc8/Xcb;->transform:Lc8/tdb;

    invoke-virtual {v6}, Lc8/tdb;->getStartOpacity()Lc8/cdb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v5, v6, v7

    .line 108
    .local v5, "startOpacity":F
    iget-object v6, p0, Lc8/Xcb;->transform:Lc8/tdb;

    invoke-virtual {v6}, Lc8/tdb;->getEndOpacity()Lc8/cdb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v1, v6, v7

    .line 109
    .local v1, "endOpacity":F
    float-to-int v6, v0

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 110
    iget-object v6, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v6, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lc8/Xcb;->transform:Lc8/tdb;

    int-to-float v8, v2

    add-float/2addr v8, v4

    invoke-virtual {v7, v8}, Lc8/tdb;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 112
    int-to-float v6, p3

    int-to-float v7, v2

    div-float/2addr v7, v0

    invoke-static {v5, v1, v7}, Lc8/Jfb;->lerp(FFF)F

    move-result v7

    mul-float v3, v6, v7

    .line 113
    .local v3, "newAlpha":F
    iget-object v6, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    iget-object v7, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    float-to-int v8, v3

    invoke-virtual {v6, p1, v7, v8}, Lc8/Jcb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 109
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v3    # "newAlpha":F
    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 118
    iget-object v0, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v0, p1, p2}, Lc8/Jcb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 119
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Xcb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 7

    .prologue
    .line 91
    iget-object v4, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v4}, Lc8/Jcb;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 92
    .local v0, "contentPath":Landroid/graphics/Path;
    iget-object v4, p0, Lc8/Xcb;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 93
    iget-object v4, p0, Lc8/Xcb;->copies:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 94
    .local v1, "copies":F
    iget-object v4, p0, Lc8/Xcb;->offset:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 95
    .local v3, "offset":F
    float-to-int v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 96
    iget-object v4, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lc8/Xcb;->transform:Lc8/tdb;

    int-to-float v6, v2

    add-float/2addr v6, v3

    invoke-virtual {v5, v6}, Lc8/tdb;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v4, p0, Lc8/Xcb;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lc8/Xcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 95
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v4, p0, Lc8/Xcb;->path:Landroid/graphics/Path;

    return-object v4
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/Xcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 128
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 87
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    iget-object v0, p0, Lc8/Xcb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v0, p1, p2}, Lc8/Jcb;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 88
    return-void
.end method
