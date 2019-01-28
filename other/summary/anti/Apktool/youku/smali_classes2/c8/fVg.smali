.class public Lc8/fVg;
.super Ljava/lang/Object;
.source "HorizontalMovingStyle.java"

# interfaces
.implements Lc8/gVg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToImageView(Lc8/hVg;)V
    .locals 1
    .param p1, "view"    # Lc8/hVg;

    .prologue
    .line 23
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lc8/hVg;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 24
    return-void
.end method

.method public onDetachedFromImageView(Lc8/hVg;)V
    .locals 0
    .param p1, "view"    # Lc8/hVg;

    .prologue
    .line 29
    return-void
.end method

.method public transform(Lc8/hVg;Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "view"    # Lc8/hVg;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "translateValue"    # I

    .prologue
    .line 38
    invoke-virtual {p1}, Lc8/hVg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 39
    .local v1, "iWidth":I
    invoke-virtual {p1}, Lc8/hVg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 40
    .local v0, "iHeight":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    int-to-float v2, p5

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method
