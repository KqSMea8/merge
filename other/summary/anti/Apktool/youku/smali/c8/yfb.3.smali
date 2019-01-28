.class public Lc8/yfb;
.super Lc8/rfb;
.source "NullLayer.java"


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/xfb;)V
    .locals 0
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lc8/rfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    .line 12
    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 16
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-super {p0, p1, p2}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 20
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    return-void
.end method
