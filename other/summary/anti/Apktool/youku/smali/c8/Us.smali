.class public Lc8/Us;
.super Lc8/Ts;
.source "AppCompatTextHelperV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Lc8/N;
    value = 0x11
.end annotation


# instance fields
.field private mDrawableEndTint:Lc8/ax;

.field private mDrawableStartTint:Lc8/ax;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/Ts;-><init>(Landroid/widget/TextView;)V

    .line 36
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 62
    iget-object v1, p0, Lc8/Us;->mDrawableStartTint:Lc8/ax;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Us;->mDrawableEndTint:Lc8/ax;

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    iget-object v1, p0, Lc8/Us;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Us;->mDrawableStartTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Us;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 65
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Lc8/Us;->mDrawableEndTint:Lc8/ax;

    invoke-virtual {p0, v1, v2}, Lc8/Us;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lc8/ax;)V

    .line 67
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Lc8/Ts;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 42
    iget-object v3, p0, Lc8/Us;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lc8/zs;->get()Lc8/zs;

    move-result-object v2

    .line 45
    .local v2, "drawableManager":Lc8/zs;
    sget-object v3, Lcom/youku/phone/R$styleable;->AppCompatTextHelper:[I

    invoke-virtual {v1, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 48
    invoke-static {v1, v2, v3}, Lc8/Us;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v3

    iput-object v3, p0, Lc8/Us;->mDrawableStartTint:Lc8/ax;

    .line 51
    :cond_0
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 53
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 52
    invoke-static {v1, v2, v3}, Lc8/Us;->createTintInfo(Landroid/content/Context;Lc8/zs;I)Lc8/ax;

    move-result-object v3

    iput-object v3, p0, Lc8/Us;->mDrawableEndTint:Lc8/ax;

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method
