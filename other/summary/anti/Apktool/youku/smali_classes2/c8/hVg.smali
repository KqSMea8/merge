.class public Lc8/hVg;
.super Landroid/widget/ImageView;
.source "ScrollParallaxComponentImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gVg;
    }
.end annotation


# instance fields
.field private parallaxStyles:Lc8/gVg;

.field public translateOffset:I

.field private viewLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/hVg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/hVg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/hVg;->viewLocation:[I

    .line 31
    const/16 v0, 0xc8

    iput v0, p0, Lc8/hVg;->translateOffset:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 56
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 62
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    invoke-virtual {p0}, Lc8/hVg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lc8/hVg;->viewLocation:[I

    invoke-virtual {p0, v0}, Lc8/hVg;->getLocationInWindow([I)V

    .line 46
    iget-object v0, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    iget-object v1, p0, Lc8/hVg;->viewLocation:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v1, p0, Lc8/hVg;->viewLocation:[I

    const/4 v2, 0x1

    aget v4, v1, v2

    iget v5, p0, Lc8/hVg;->translateOffset:I

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lc8/gVg;->transform(Lc8/hVg;Landroid/graphics/Canvas;III)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setParallaxStyles(Lc8/gVg;)V
    .locals 1
    .param p1, "styles"    # Lc8/gVg;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    invoke-interface {v0, p0}, Lc8/gVg;->onDetachedFromImageView(Lc8/hVg;)V

    .line 69
    :cond_0
    iput-object p1, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    .line 70
    iget-object v0, p0, Lc8/hVg;->parallaxStyles:Lc8/gVg;

    invoke-interface {v0, p0}, Lc8/gVg;->onAttachedToImageView(Lc8/hVg;)V

    .line 71
    return-void
.end method

.method public settranslateOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 34
    iput p1, p0, Lc8/hVg;->translateOffset:I

    .line 35
    return-void
.end method
