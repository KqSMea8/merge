.class public Lc8/qs;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Lc8/ps;

.field private final mTextHelper:Lc8/Ts;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/qs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    sget v0, Lcom/youku/phone/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/qs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-static {p1}, Lc8/Zw;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Lc8/ps;

    invoke-direct {v0, p0}, Lc8/ps;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    .line 69
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p2, p3}, Lc8/ps;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 71
    invoke-static {p0}, Lc8/Ts;->create(Landroid/widget/TextView;)Lc8/Ts;

    move-result-object v0

    iput-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    .line 72
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p2, p3}, Lc8/Ts;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 73
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 74
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 151
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 154
    :cond_0
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 157
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
    .line 116
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    .line 117
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
    .line 144
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    .line 145
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 170
    const-class v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Lc8/N;
        value = 0xe
    .end annotation

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 178
    const-class v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
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
    .line 78
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundResource(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p1}, Lc8/Ts;->setAllCaps(Z)V

    .line 194
    :cond_0
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
    .line 101
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 104
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
    .line 129
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/qs;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/qs;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p1, p2}, Lc8/Ts;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_0
    return-void
.end method
