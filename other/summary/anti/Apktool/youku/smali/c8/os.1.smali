.class public Lc8/os;
.super Landroid/widget/AutoCompleteTextView;
.source "AppCompatAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTintHelper:Lc8/ps;

.field private mTextHelper:Lc8/Ts;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lc8/os;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/os;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    sget v0, Lcom/youku/phone/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/os;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {p1}, Lc8/Zw;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Lc8/os;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc8/os;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 72
    .local v0, "a":Lc8/cx;
    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0, v3}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/os;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 77
    new-instance v1, Lc8/ps;

    invoke-direct {v1, p0}, Lc8/ps;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    .line 78
    iget-object v1, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v1, p2, p3}, Lc8/ps;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 80
    invoke-static {p0}, Lc8/Ts;->create(Landroid/widget/TextView;)Lc8/Ts;

    move-result-object v1

    iput-object v1, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    .line 81
    iget-object v1, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    invoke-virtual {v1, p2, p3}, Lc8/Ts;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 82
    iget-object v1, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    invoke-virtual {v1}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 83
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 165
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 168
    :cond_0
    iget-object v0, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 171
    :cond_1
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
    .line 130
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    .line 131
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
    .line 158
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    .line 159
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
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
    .line 92
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundResource(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-virtual {p0}, Lc8/os;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/os;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
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
    .line 115
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 118
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
    .line 143
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lc8/os;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 176
    iget-object v0, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lc8/os;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p1, p2}, Lc8/Ts;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 179
    :cond_0
    return-void
.end method
