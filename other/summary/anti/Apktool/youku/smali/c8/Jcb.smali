.class public Lc8/Jcb;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lc8/Kcb;
.implements Lc8/Tcb;
.implements Lc8/bdb;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lc8/tcb;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tcb;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lc8/tdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/ffb;)V
    .locals 6
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "shapeGroup"    # Lc8/ffb;

    .prologue
    .line 57
    invoke-virtual {p3}, Lc8/ffb;->getName()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {p3}, Lc8/ffb;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lc8/Jcb;->contentsFromModels(Lc8/tcb;Lc8/rfb;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 59
    invoke-virtual {p3}, Lc8/ffb;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Jcb;->findTransform(Ljava/util/List;)Lc8/teb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 57
    invoke-direct/range {v0 .. v5}, Lc8/Jcb;-><init>(Lc8/tcb;Lc8/rfb;Ljava/lang/String;Ljava/util/List;Lc8/teb;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lc8/tcb;Lc8/rfb;Ljava/lang/String;Ljava/util/List;Lc8/teb;)V
    .locals 5
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "transform"    # Lc8/teb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tcb;",
            "Lc8/rfb;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;",
            "Lc8/teb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lc8/Jcb;->path:Landroid/graphics/Path;

    .line 48
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    .line 64
    iput-object p3, p0, Lc8/Jcb;->name:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lc8/Jcb;->lottieDrawable:Lc8/tcb;

    .line 66
    iput-object p4, p0, Lc8/Jcb;->contents:Ljava/util/List;

    .line 68
    if-eqz p5, :cond_0

    .line 69
    invoke-virtual {p5}, Lc8/teb;->createAnimation()Lc8/tdb;

    move-result-object v3

    iput-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    .line 70
    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v3, p2}, Lc8/tdb;->addAnimationsToLayer(Lc8/rfb;)V

    .line 71
    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v3, p0}, Lc8/tdb;->addListener(Lc8/bdb;)V

    .line 74
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "greedyContents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/GreedyContent;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 76
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 77
    .local v0, "content":Lc8/Icb;
    instance-of v3, v0, Lc8/Pcb;

    if-eqz v3, :cond_1

    .line 78
    check-cast v0, Lc8/Pcb;

    .end local v0    # "content":Lc8/Icb;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pcb;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p4, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/Pcb;->absorbContent(Ljava/util/ListIterator;)V

    .line 82
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 85
    :cond_3
    return-void
.end method

.method private static contentsFromModels(Lc8/tcb;Lc8/rfb;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "drawable"    # Lc8/tcb;
    .param p1, "layer"    # Lc8/rfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tcb;",
            "Lc8/rfb;",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 28
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Ceb;

    invoke-interface {v3, p0, p1}, Lc8/Ceb;->toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;

    move-result-object v0

    .line 29
    .local v0, "content":Lc8/Icb;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "content":Lc8/Icb;
    :cond_1
    return-object v1
.end method

.method static findTransform(Ljava/util/List;)Lc8/teb;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;)",
            "Lc8/teb;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "contentModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ceb;

    .line 39
    .local v0, "contentModel":Lc8/Ceb;
    instance-of v2, v0, Lc8/teb;

    if-eqz v2, :cond_0

    .line 40
    check-cast v0, Lc8/teb;

    .line 43
    .end local v0    # "contentModel":Lc8/Ceb;
    :goto_1
    return-object v0

    .line 37
    .restart local v0    # "contentModel":Lc8/Ceb;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "contentModel":Lc8/Ceb;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 4
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
    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 98
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 99
    .local v0, "content":Lc8/Icb;
    instance-of v3, v0, Lc8/Kcb;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 100
    check-cast v1, Lc8/Kcb;

    .line 101
    .local v1, "drawingContent":Lc8/Kcb;
    if-eqz p2, :cond_0

    invoke-interface {v0}, Lc8/Icb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, p3}, Lc8/Kcb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 97
    .end local v1    # "drawingContent":Lc8/Kcb;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .restart local v1    # "drawingContent":Lc8/Kcb;
    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lc8/Kcb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 108
    .end local v0    # "content":Lc8/Icb;
    .end local v1    # "drawingContent":Lc8/Kcb;
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 160
    iget-object v3, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 162
    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v4}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 164
    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    .line 165
    invoke-virtual {v3}, Lc8/tdb;->getOpacity()Lc8/cdb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    int-to-float v4, p3

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    mul-float/2addr v3, v5

    float-to-int v0, v3

    .line 171
    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 172
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "content":Ljava/lang/Object;
    instance-of v3, v1, Lc8/Kcb;

    if-eqz v3, :cond_0

    .line 174
    check-cast v1, Lc8/Kcb;

    .end local v1    # "content":Ljava/lang/Object;
    iget-object v3, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v3, v0}, Lc8/Kcb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 171
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 167
    .end local v0    # "alpha":I
    .end local v2    # "i":I
    :cond_1
    move v0, p3

    .restart local v0    # "alpha":I
    goto :goto_0

    .line 177
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v2, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v2, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v3}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 184
    :cond_0
    iget-object v2, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 186
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 187
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/Kcb;

    if-eqz v2, :cond_1

    .line 188
    check-cast v0, Lc8/Kcb;

    .end local v0    # "content":Lc8/Icb;
    iget-object v2, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v2, v3}, Lc8/Kcb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 185
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 194
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 195
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lc8/Jcb;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 192
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 201
    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Jcb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 145
    iget-object v2, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 146
    iget-object v2, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v3}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    :cond_0
    iget-object v2, p0, Lc8/Jcb;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 150
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 151
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 152
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/Tcb;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lc8/Jcb;->path:Landroid/graphics/Path;

    check-cast v0, Lc8/Tcb;

    .end local v0    # "content":Lc8/Icb;
    invoke-interface {v0}, Lc8/Tcb;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 150
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v2, p0, Lc8/Jcb;->path:Landroid/graphics/Path;

    return-object v2
.end method

.method getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Tcb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v2, p0, Lc8/Jcb;->pathContents:Ljava/util/List;

    if-nez v2, :cond_1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/Jcb;->pathContents:Ljava/util/List;

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 127
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/Tcb;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lc8/Jcb;->pathContents:Ljava/util/List;

    check-cast v0, Lc8/Tcb;

    .end local v0    # "content":Lc8/Icb;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lc8/Jcb;->pathContents:Ljava/util/List;

    return-object v2
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/Jcb;->transformAnimation:Lc8/tdb;

    invoke-virtual {v0}, Lc8/tdb;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 140
    iget-object v0, p0, Lc8/Jcb;->matrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Jcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .line 112
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v2, "myContentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 116
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 117
    .local v0, "content":Lc8/Icb;
    iget-object v3, p0, Lc8/Jcb;->contents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc8/Icb;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 118
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 120
    .end local v0    # "content":Lc8/Icb;
    :cond_0
    return-void
.end method
