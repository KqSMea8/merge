.class public Lc8/zfb;
.super Lc8/rfb;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lc8/Jcb;


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/xfb;)V
    .locals 4
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/rfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    .line 23
    new-instance v0, Lc8/ffb;

    invoke-virtual {p2}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lc8/xfb;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/ffb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 24
    .local v0, "shapeGroup":Lc8/ffb;
    new-instance v1, Lc8/Jcb;

    invoke-direct {v1, p1, p0, v0}, Lc8/Jcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/ffb;)V

    iput-object v1, p0, Lc8/zfb;->contentGroup:Lc8/Jcb;

    .line 25
    iget-object v1, p0, Lc8/zfb;->contentGroup:Lc8/Jcb;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/Jcb;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 26
    return-void
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
    .line 39
    iget-object v0, p0, Lc8/zfb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Jcb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 40
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lc8/zfb;->contentGroup:Lc8/Jcb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Jcb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 30
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 34
    iget-object v0, p0, Lc8/zfb;->contentGroup:Lc8/Jcb;

    iget-object v1, p0, Lc8/zfb;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lc8/Jcb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 35
    return-void
.end method
