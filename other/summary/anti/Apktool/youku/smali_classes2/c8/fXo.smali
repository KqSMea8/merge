.class public Lc8/fXo;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RichTextDrawable.java"

# interfaces
.implements Lc8/aXo;
.implements Lc8/yWo;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDom:Lc8/eXo;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IILc8/eXo;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dom"    # Lc8/eXo;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 22
    invoke-virtual {p0, v0, v0, p1, p2}, Lc8/fXo;->setBounds(IIII)V

    .line 23
    iput-object p3, p0, Lc8/fXo;->mDom:Lc8/eXo;

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lc8/fXo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/fXo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lc8/fXo;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lc8/fXo;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lc8/fXo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lc8/fXo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lc8/fXo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lc8/fXo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lc8/fXo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/fXo;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/fXo;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v0}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/fXo;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v1}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lc8/fXo;->invalidateSelf()V

    .line 57
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/fXo;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 42
    iget-object v0, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v0}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v1}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lc8/fXo;->invalidateSelf()V

    .line 47
    return-void
.end method

.method public updateColorFilter()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lc8/fXo;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v1}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lc8/fXo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/fXo;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lc8/fXo;->mDom:Lc8/eXo;

    invoke-virtual {v1}, Lc8/eXo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method
