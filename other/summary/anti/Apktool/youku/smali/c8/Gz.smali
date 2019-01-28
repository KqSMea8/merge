.class public Lc8/Gz;
.super Landroid/widget/FrameLayout;
.source "DefaultProgress.java"


# instance fields
.field private mProgressDrawable:Lc8/Kz;

.field private mProgressView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Gz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Gz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    new-instance v1, Lc8/Kz;

    const/4 v2, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {v1, v2, v3}, Lc8/Kz;-><init>(IF)V

    iput-object v1, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    .line 230
    iget-object v1, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v1, p0}, Lc8/Kz;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    sget v1, Landroid/taobao/atlas/R$layout;->atlas_progress:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 232
    sget v1, Landroid/taobao/atlas/R$id;->at_circularProgress:I

    invoke-virtual {p0, v1}, Lc8/Gz;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lc8/Gz;->mProgressView:Landroid/widget/ImageView;

    .line 235
    iget-object v1, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Lc8/Kz;->setRingColor(I)V

    .line 236
    iget-object v1, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lc8/Kz;->setRingWidth(F)V

    .line 237
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 239
    .local v0, "ringSize":I
    iget-object v1, p0, Lc8/Gz;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    iget-object v1, p0, Lc8/Gz;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget-object v1, p0, Lc8/Gz;->mProgressView:Landroid/widget/ImageView;

    iget-object v2, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/taobao/atlas/R$drawable;->atlas_waitview:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Gz;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lc8/Gz;->setAlpha(F)V

    .line 246
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 263
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v0}, Lc8/Kz;->start()V

    .line 267
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 271
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v0}, Lc8/Kz;->stop()V

    .line 275
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 258
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v0, v1, v1, p1, p2}, Lc8/Kz;->setBounds(IIII)V

    .line 259
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    if-eqz v0, :cond_0

    .line 280
    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 281
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v0}, Lc8/Kz;->start()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    invoke-virtual {v0}, Lc8/Kz;->stop()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 290
    iget-object v0, p0, Lc8/Gz;->mProgressDrawable:Lc8/Kz;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
