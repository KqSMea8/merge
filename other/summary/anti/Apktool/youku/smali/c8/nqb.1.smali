.class public Lc8/nqb;
.super Landroid/text/style/ReplacementSpan;
.source "ImgSpan.java"

# interfaces
.implements Lc8/zVf;


# instance fields
.field private height:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 224
    iput p1, p0, Lc8/nqb;->width:I

    .line 225
    iput p2, p0, Lc8/nqb;->height:I

    .line 226
    return-void
.end method

.method private setCallback()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nqb;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lc8/nqb;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 253
    iget-object v1, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    iget-object v1, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p8, v1

    .line 256
    .local v0, "transY":I
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    .line 257
    int-to-float v1, v0

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-object v1, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 261
    .end local v0    # "transY":I
    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p5, :cond_0

    .line 237
    iget v0, p0, Lc8/nqb;->height:I

    neg-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 238
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 240
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 241
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 243
    :cond_0
    iget v0, p0, Lc8/nqb;->width:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resetBounds"    # Z

    .prologue
    const/4 v3, 0x0

    .line 265
    iput-object p1, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-object v0, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lc8/nqb;->width:I

    iget v2, p0, Lc8/nqb;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lc8/nqb;->setCallback()V

    .line 270
    iget-object v0, p0, Lc8/nqb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 271
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    iput-object p1, p0, Lc8/nqb;->mView:Landroid/view/View;

    .line 275
    invoke-direct {p0}, Lc8/nqb;->setCallback()V

    .line 276
    return-void
.end method
