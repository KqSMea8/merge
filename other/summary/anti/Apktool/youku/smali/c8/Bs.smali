.class public Lc8/Bs;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private mBackgroundTintHelper:Lc8/ps;

.field private mImageHelper:Lc8/Cs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Bs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    sget v0, Lcom/youku/phone/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Bs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    invoke-static {p1}, Lc8/Zw;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Lc8/ps;

    invoke-direct {v0, p0}, Lc8/ps;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    .line 63
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p2, p3}, Lc8/ps;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lc8/Cs;

    invoke-direct {v0, p0}, Lc8/Cs;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lc8/Bs;->mImageHelper:Lc8/Cs;

    .line 66
    iget-object v0, p0, Lc8/Bs;->mImageHelper:Lc8/Cs;

    invoke-virtual {v0, p2, p3}, Lc8/Cs;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 150
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 153
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    .line 116
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    .line 144
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Bs;->mImageHelper:Lc8/Cs;

    invoke-virtual {v0}, Lc8/Cs;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundResource(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Bs;->mImageHelper:Lc8/Cs;

    invoke-virtual {v0, p1}, Lc8/Cs;->setImageResource(I)V

    .line 73
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lc8/Bs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 131
    :cond_0
    return-void
.end method
