.class public Lc8/Ts;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Lc8/N;
    value = 0x9
.end annotation


# instance fields
.field private mDrawableBottomTint:Lc8/ax;

.field private mDrawableLeftTint:Lc8/ax;

.field private mDrawableRightTint:Lc8/ax;

.field private mDrawableTopTint:Lc8/ax;

.field final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method static create(Landroid/widget/TextView;)Lc8/Ts;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Lc8/Us;

    invoke-direct {v0, p0}, Lc8/Us;-><init>(Landroid/widget/TextView;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Ts;

    invoke-direct {v0, p0}, Lc8/Ts;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected static createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Lc8/zs;
    .param p2, "drawableId"    # I

    .prologue
    .line 190
    invoke-virtual {p1, p0, p2}, Lc8/zs;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 191
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Lc8/ax;

    invoke-direct {v0}, Lc8/ax;-><init>()V

    .line 193
    .local v0, "tintInfo":Lc8/ax;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/ax;->mHasTintList:Z

    .line 194
    iput-object v1, v0, Lc8/ax;->mTintList:Landroid/content/res/ColorStateList;

    .line 197
    .end local v0    # "tintInfo":Lc8/ax;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Lc8/ax;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lc8/zs;->tintDrawable(Landroid/graphics/drawable/Drawable;Lc8/ax;[I)V

    .line 186
    :cond_0
    return-void
.end method

.method applyCompoundDrawablesTints()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lc8/Ts;->mDrawableLeftTint:Lc8/ax;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Ts;->mDrawableTopTint:Lc8/ax;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Ts;->mDrawableRightTint:Lc8/ax;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Ts;->mDrawableBottomTint:Lc8/ax;

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iget-object v1, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Ts;->mDrawableLeftTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Ts;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 176
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Ts;->mDrawableTopTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Ts;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 177
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Ts;->mDrawableRightTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Ts;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 178
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Ts;->mDrawableBottomTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Ts;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 180
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/16 v12, 0x17

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 54
    iget-object v9, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 55
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Lc8/zs;->get()Lc8/zs;

    move-result-object v5

    .line 58
    .local v5, "drawableManager":Lc8/zs;
    sget-object v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v4, p1, v9, p2, v10}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 60
    .local v0, "a":Lc8/cx;
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v0, v9, v11}, Lc8/cx;->getResourceId(II)I

    move-result v3

    .line 62
    .local v3, "ap":I
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 64
    invoke-virtual {v0, v9, v10}, Lc8/cx;->getResourceId(II)I

    move-result v9

    .line 63
    invoke-static {v4, v5, v9}, Lc8/Ts;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v9

    iput-object v9, p0, Lc8/Ts;->mDrawableLeftTint:Lc8/ax;

    .line 66
    :cond_0
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 68
    invoke-virtual {v0, v9, v10}, Lc8/cx;->getResourceId(II)I

    move-result v9

    .line 67
    invoke-static {v4, v5, v9}, Lc8/Ts;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v9

    iput-object v9, p0, Lc8/Ts;->mDrawableTopTint:Lc8/ax;

    .line 70
    :cond_1
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 72
    invoke-virtual {v0, v9, v10}, Lc8/cx;->getResourceId(II)I

    move-result v9

    .line 71
    invoke-static {v4, v5, v9}, Lc8/Ts;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v9

    iput-object v9, p0, Lc8/Ts;->mDrawableRightTint:Lc8/ax;

    .line 74
    :cond_2
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 75
    sget v9, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 76
    invoke-virtual {v0, v9, v10}, Lc8/cx;->getResourceId(II)I

    move-result v9

    .line 75
    invoke-static {v4, v5, v9}, Lc8/Ts;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v9

    iput-object v9, p0, Lc8/Ts;->mDrawableBottomTint:Lc8/ax;

    .line 78
    :cond_3
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 83
    iget-object v9, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    instance-of v6, v9, Landroid/text/method/PasswordTransformationMethod;

    .line 85
    .local v6, "hasPwdTm":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "allCaps":Z
    const/4 v2, 0x0

    .line 87
    .local v2, "allCapsSet":Z
    const/4 v7, 0x0

    .line 88
    .local v7, "textColor":Landroid/content/res/ColorStateList;
    const/4 v8, 0x0

    .line 91
    .local v8, "textColorHint":Landroid/content/res/ColorStateList;
    if-eq v3, v11, :cond_7

    .line 92
    sget-object v9, Lcom/youku/phone/R$styleable;->TextAppearance:[I

    invoke-static {v4, v3, v9}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;I[I)Lc8/cx;

    move-result-object v0

    .line 93
    if-nez v6, :cond_4

    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    const/4 v2, 0x1

    .line 95
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9, v10}, Lc8/cx;->getBoolean(IZ)Z

    move-result v1

    .line 97
    :cond_4
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v12, :cond_6

    .line 100
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 101
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 103
    :cond_5
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 104
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 108
    :cond_6
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 112
    :cond_7
    sget-object v9, Lcom/youku/phone/R$styleable;->TextAppearance:[I

    invoke-static {v4, p1, v9, p2, v10}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 114
    if-nez v6, :cond_8

    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 115
    const/4 v2, 0x1

    .line 116
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v9, v10}, Lc8/cx;->getBoolean(IZ)Z

    move-result v1

    .line 118
    :cond_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v12, :cond_a

    .line 121
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 122
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v9}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 124
    :cond_9
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Lc8/cx;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 125
    sget v9, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v9}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 129
    :cond_a
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 131
    if-eqz v7, :cond_b

    .line 132
    iget-object v9, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    :cond_b
    if-eqz v8, :cond_c

    .line 135
    iget-object v9, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    :cond_c
    if-nez v6, :cond_d

    if-eqz v2, :cond_d

    .line 138
    invoke-virtual {p0, v1}, Lc8/Ts;->setAllCaps(Z)V

    .line 140
    :cond_d
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 143
    sget-object v2, Lcom/youku/phone/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v2}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;I[I)Lc8/cx;

    move-result-object v0

    .line 145
    .local v0, "a":Lc8/cx;
    sget v2, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2}, Lc8/cx;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget v2, Lcom/youku/phone/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lc8/cx;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lc8/Ts;->setAllCaps(Z)V

    .line 152
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    sget v2, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    .line 153
    invoke-virtual {v0, v2}, Lc8/cx;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget v2, Lcom/youku/phone/R$styleable;->TextAppearance_android_textColor:I

    .line 157
    invoke-virtual {v0, v2}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 158
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 159
    iget-object v2, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 163
    return-void
.end method

.method setAllCaps(Z)V
    .locals 3
    .param p1, "allCaps"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Lc8/Dp;

    iget-object v2, p0, Lc8/Ts;->mView:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/Dp;-><init>(Landroid/content/Context;)V

    .line 166
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
