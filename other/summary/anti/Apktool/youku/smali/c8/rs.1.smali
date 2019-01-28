.class public Lc8/rs;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private mCompoundButtonHelper:Lc8/us;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/rs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    sget v0, Lcom/youku/phone/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/rs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lc8/us;

    invoke-direct {v0, p0}, Lc8/us;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    .line 62
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    invoke-virtual {v0, p2, p3}, Lc8/us;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 81
    .local v0, "value":I
    iget-object v1, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    .line 82
    invoke-virtual {v1, v0}, Lc8/us;->getCompoundPaddingLeft(I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    .line 107
    invoke-virtual {v0}, Lc8/us;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    .line 132
    invoke-virtual {v0}, Lc8/us;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-virtual {p0}, Lc8/rs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/rs;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    invoke-virtual {v0}, Lc8/us;->onSetButtonDrawable()V

    .line 71
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
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
    .line 93
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    invoke-virtual {v0, p1}, Lc8/us;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
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
    .line 118
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/rs;->mCompoundButtonHelper:Lc8/us;

    invoke-virtual {v0, p1}, Lc8/us;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 121
    :cond_0
    return-void
.end method
