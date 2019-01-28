.class public Lc8/ps;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Lc8/ax;

.field private final mDrawableManager:Lc8/zs;

.field private mInternalBackgroundTint:Lc8/ax;

.field private mTmpInfo:Lc8/ax;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lc8/ps;->mBackgroundResId:I

    .line 41
    iput-object p1, p0, Lc8/ps;->mView:Landroid/view/View;

    .line 42
    invoke-static {}, Lc8/zs;->get()Lc8/zs;

    move-result-object v0

    iput-object v0, p0, Lc8/ps;->mDrawableManager:Lc8/zs;

    .line 43
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-object v4, p0, Lc8/ps;->mTmpInfo:Lc8/ax;

    if-nez v4, :cond_0

    .line 173
    new-instance v4, Lc8/ax;

    invoke-direct {v4}, Lc8/ax;-><init>()V

    iput-object v4, p0, Lc8/ps;->mTmpInfo:Lc8/ax;

    .line 175
    :cond_0
    iget-object v0, p0, Lc8/ps;->mTmpInfo:Lc8/ax;

    .line 176
    .local v0, "info":Lc8/ax;
    invoke-virtual {v0}, Lc8/ax;->clear()V

    .line 178
    iget-object v4, p0, Lc8/ps;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 179
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 180
    iput-boolean v3, v0, Lc8/ax;->mHasTintList:Z

    .line 181
    iput-object v2, v0, Lc8/ax;->mTintList:Landroid/content/res/ColorStateList;

    .line 183
    :cond_1
    iget-object v4, p0, Lc8/ps;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 184
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_2

    .line 185
    iput-boolean v3, v0, Lc8/ax;->mHasTintMode:Z

    .line 186
    iput-object v1, v0, Lc8/ax;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 189
    :cond_2
    iget-boolean v4, v0, Lc8/ax;->mHasTintList:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lc8/ax;->mHasTintMode:Z

    if-eqz v4, :cond_4

    .line 190
    :cond_3
    iget-object v4, p0, Lc8/ps;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Lc8/zs;->tintDrawable(Landroid/graphics/drawable/Drawable;Lc8/ax;[I)V

    .line 194
    :goto_0
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    .local v0, "sdk":I
    if-ge v0, v3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v2

    .line 158
    goto :goto_0

    .line 162
    :cond_2
    iget-object v3, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lc8/ps;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lc8/ps;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0, v0}, Lc8/ps;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    iget-object v2, p0, Lc8/ps;->mView:Landroid/view/View;

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lc8/zs;->tintDrawable(Landroid/graphics/drawable/Drawable;Lc8/ax;[I)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    iget-object v2, p0, Lc8/ps;->mView:Landroid/view/View;

    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 130
    invoke-static {v0, v1, v2}, Lc8/zs;->tintDrawable(Landroid/graphics/drawable/Drawable;Lc8/ax;[I)V

    goto :goto_0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    iget-object v0, v0, Lc8/ax;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    iget-object v0, v0, Lc8/ax;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 46
    iget-object v2, p0, Lc8/ps;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, p2, v4}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 49
    .local v0, "a":Lc8/cx;
    :try_start_0
    sget v2, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v2}, Lc8/cx;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget v2, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lc8/cx;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lc8/ps;->mBackgroundResId:I

    .line 52
    iget-object v2, p0, Lc8/ps;->mDrawableManager:Lc8/zs;

    iget-object v3, p0, Lc8/ps;->mView:Landroid/view/View;

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lc8/ps;->mBackgroundResId:I

    invoke-virtual {v2, v3, v4}, Lc8/zs;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 54
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lc8/ps;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 58
    .end local v1    # "tint":Landroid/content/res/ColorStateList;
    :cond_0
    sget v2, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v2}, Lc8/cx;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lc8/ps;->mView:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v0, v3}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    sget v2, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v2}, Lc8/cx;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lc8/ps;->mView:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v4, -0x1

    .line 65
    invoke-virtual {v0, v3, v4}, Lc8/cx;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v4}, Lc8/At;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lc8/cx;->recycle()V

    throw v2
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lc8/ps;->mBackgroundResId:I

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/ps;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 86
    invoke-virtual {p0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 87
    return-void
.end method

.method onSetBackgroundResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 74
    iput p1, p0, Lc8/ps;->mBackgroundResId:I

    .line 76
    iget-object v0, p0, Lc8/ps;->mDrawableManager:Lc8/zs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ps;->mDrawableManager:Lc8/zs;

    iget-object v1, p0, Lc8/ps;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/zs;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Lc8/ps;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 79
    invoke-virtual {p0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lc8/ax;

    invoke-direct {v0}, Lc8/ax;-><init>()V

    iput-object v0, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    .line 141
    :cond_0
    iget-object v0, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    iput-object p1, v0, Lc8/ax;->mTintList:Landroid/content/res/ColorStateList;

    .line 142
    iget-object v0, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/ax;->mHasTintList:Z

    .line 146
    :goto_0
    invoke-virtual {p0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 147
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ps;->mInternalBackgroundTint:Lc8/ax;

    goto :goto_0
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 90
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lc8/ax;

    invoke-direct {v0}, Lc8/ax;-><init>()V

    iput-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    .line 93
    :cond_0
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    iput-object p1, v0, Lc8/ax;->mTintList:Landroid/content/res/ColorStateList;

    .line 94
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/ax;->mHasTintList:Z

    .line 95
    invoke-virtual {p0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 96
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 103
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lc8/ax;

    invoke-direct {v0}, Lc8/ax;-><init>()V

    iput-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    .line 106
    :cond_0
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    iput-object p1, v0, Lc8/ax;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 107
    iget-object v0, p0, Lc8/ps;->mBackgroundTint:Lc8/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/ax;->mHasTintMode:Z

    .line 109
    invoke-virtual {p0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 110
    return-void
.end method
