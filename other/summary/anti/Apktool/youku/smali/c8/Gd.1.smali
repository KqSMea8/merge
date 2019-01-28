.class public Lc8/Gd;
.super Lc8/uf;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Lc8/rd;
    value = Lc8/Cd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ed;,
        Lc8/Cd;,
        Lc8/Fd;,
        Lc8/Dd;
    }
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field mCompatPadding:Z

.field private mImageHelper:Lc8/Cs;

.field mImagePadding:I

.field private mImpl:Lc8/Td;

.field private mMaxImageSize:I

.field private mRippleColor:I

.field final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Gd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Gd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lc8/uf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    .line 142
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lc8/Gd;->mTouchArea:Landroid/graphics/Rect;

    .line 159
    invoke-static {p1}, Lc8/Ue;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 161
    sget-object v3, Lcom/youku/phone/R$styleable;->FloatingActionButton:[I

    sget v4, Lcom/youku/phone/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lc8/Gd;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 165
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_backgroundTintMode:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/sf;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lc8/Gd;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 167
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lc8/Gd;->mRippleColor:I

    .line 168
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lc8/Gd;->mSize:I

    .line 169
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lc8/Gd;->mBorderWidth:I

    .line 170
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 171
    .local v1, "elevation":F
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 173
    .local v2, "pressedTranslationZ":F
    sget v3, Lcom/youku/phone/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lc8/Gd;->mCompatPadding:Z

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance v3, Lc8/Cs;

    invoke-direct {v3, p0}, Lc8/Cs;-><init>(Landroid/widget/ImageView;)V

    iput-object v3, p0, Lc8/Gd;->mImageHelper:Lc8/Cs;

    .line 177
    iget-object v3, p0, Lc8/Gd;->mImageHelper:Lc8/Cs;

    invoke-virtual {v3, p2, p3}, Lc8/Cs;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 179
    invoke-virtual {p0}, Lc8/Gd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$dimen;->design_fab_image_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lc8/Gd;->mMaxImageSize:I

    .line 181
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v3

    iget-object v4, p0, Lc8/Gd;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lc8/Gd;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v6, p0, Lc8/Gd;->mRippleColor:I

    iget v7, p0, Lc8/Gd;->mBorderWidth:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lc8/Td;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 183
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/Td;->setElevation(F)V

    .line 184
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/Td;->setPressedTranslationZ(F)V

    .line 185
    return-void
.end method

.method static synthetic access$001(Lc8/Gd;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lc8/Gd;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lc8/uf;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Lc8/Td;
    .locals 4

    .prologue
    .line 800
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 801
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 802
    new-instance v1, Lc8/Vd;

    new-instance v2, Lc8/Ed;

    invoke-direct {v2, p0}, Lc8/Ed;-><init>(Lc8/Gd;)V

    sget-object v3, Lc8/sf;->DEFAULT_ANIMATOR_CREATOR:Lc8/af;

    invoke-direct {v1, p0, v2, v3}, Lc8/Vd;-><init>(Lc8/uf;Lc8/ge;Lc8/af;)V

    .line 808
    :goto_0
    return-object v1

    .line 804
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 805
    new-instance v1, Lc8/Qd;

    new-instance v2, Lc8/Ed;

    invoke-direct {v2, p0}, Lc8/Ed;-><init>(Lc8/Gd;)V

    sget-object v3, Lc8/sf;->DEFAULT_ANIMATOR_CREATOR:Lc8/af;

    invoke-direct {v1, p0, v2, v3}, Lc8/Qd;-><init>(Lc8/uf;Lc8/ge;Lc8/af;)V

    goto :goto_0

    .line 808
    :cond_1
    new-instance v1, Lc8/Nd;

    new-instance v2, Lc8/Ed;

    invoke-direct {v2, p0}, Lc8/Ed;-><init>(Lc8/Gd;)V

    sget-object v3, Lc8/sf;->DEFAULT_ANIMATOR_CREATOR:Lc8/af;

    invoke-direct {v1, p0, v2, v3}, Lc8/Nd;-><init>(Lc8/uf;Lc8/ge;Lc8/af;)V

    goto :goto_0
.end method

.method private getImpl()Lc8/Td;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lc8/Gd;->mImpl:Lc8/Td;

    if-nez v0, :cond_0

    .line 794
    invoke-direct {p0}, Lc8/Gd;->createImpl()Lc8/Td;

    move-result-object v0

    iput-object v0, p0, Lc8/Gd;->mImpl:Lc8/Td;

    .line 796
    :cond_0
    iget-object v0, p0, Lc8/Gd;->mImpl:Lc8/Td;

    return-object v0
.end method

.method private getSizeDimension(I)I
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, Lc8/Gd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 439
    .local v1, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 451
    :pswitch_0
    sget v3, Lcom/youku/phone/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    return v3

    .line 442
    :pswitch_1
    invoke-static {v1}, Lc8/Zi;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    .line 443
    .local v2, "width":I
    invoke-static {v1}, Lc8/Zi;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    .line 444
    .local v0, "height":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x1d6

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    .line 445
    invoke-direct {p0, v3}, Lc8/Gd;->getSizeDimension(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 446
    invoke-direct {p0, v3}, Lc8/Gd;->getSizeDimension(I)I

    move-result v3

    goto :goto_0

    .line 448
    .end local v0    # "height":I
    .end local v2    # "width":I
    :pswitch_2
    sget v3, Lcom/youku/phone/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static resolveAdjustedSize(II)I
    .locals 3
    .param p0, "desiredSize"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 508
    move v0, p0

    .line 509
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 510
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 511
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 528
    :goto_0
    return v0

    .line 515
    :sswitch_0
    move v0, p0

    .line 516
    goto :goto_0

    .line 521
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    goto :goto_0

    .line 525
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Lc8/Dd;)Lc8/Sd;
    .locals 1
    .param p1, "listener"    # Lc8/Dd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Bd;

    invoke-direct {v0, p0, p1}, Lc8/Bd;-><init>(Lc8/Gd;Lc8/Dd;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Lc8/uf;->drawableStateChanged()V

    .line 470
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {p0}, Lc8/Gd;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Td;->onDrawableStateChanged([I)V

    .line 471
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lc8/Gd;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lc8/Gd;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .prologue
    .line 777
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lc8/Gd;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/Gd;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 490
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 491
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 492
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 493
    const/4 v0, 0x1

    .line 495
    :cond_0
    return v0
.end method

.method public getRippleColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 215
    iget v0, p0, Lc8/Gd;->mRippleColor:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lc8/Gd;->mSize:I

    return v0
.end method

.method getSizeDimension()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lc8/Gd;->mSize:I

    invoke-direct {p0, v0}, Lc8/Gd;->getSizeDimension(I)I

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lc8/Gd;->mCompatPadding:Z

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Gd;->hide(Lc8/Dd;)V

    .line 338
    return-void
.end method

.method public hide(Lc8/Dd;)V
    .locals 1
    .param p1, "listener"    # Lc8/Dd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/Gd;->hide(Lc8/Dd;Z)V

    .line 348
    return-void
.end method

.method hide(Lc8/Dd;Z)V
    .locals 2
    .param p1, "listener"    # Lc8/Dd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 351
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/Gd;->wrapOnVisibilityChangedListener(Lc8/Dd;)Lc8/Sd;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc8/Td;->hide(Lc8/Sd;Z)V

    .line 352
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 476
    invoke-super {p0}, Lc8/uf;->jumpDrawablesToCurrentState()V

    .line 477
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->jumpDrawableToCurrentState()V

    .line 478
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Lc8/uf;->onAttachedToWindow()V

    .line 458
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->onAttachedToWindow()V

    .line 459
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lc8/uf;->onDetachedFromWindow()V

    .line 464
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->onDetachedFromWindow()V

    .line 465
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lc8/Gd;->getSizeDimension()I

    move-result v2

    .line 191
    .local v2, "preferredSize":I
    iget v4, p0, Lc8/Gd;->mMaxImageSize:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lc8/Gd;->mImagePadding:I

    .line 192
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Td;->updatePadding()V

    .line 194
    invoke-static {v2, p1}, Lc8/Gd;->resolveAdjustedSize(II)I

    move-result v3

    .line 195
    .local v3, "w":I
    invoke-static {v2, p2}, Lc8/Gd;->resolveAdjustedSize(II)I

    move-result v1

    .line 199
    .local v1, "h":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    .local v0, "d":I
    iget-object v4, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lc8/Gd;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 542
    :cond_0
    invoke-super {p0, p1}, Lc8/uf;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 536
    :pswitch_0
    iget-object v0, p0, Lc8/Gd;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc8/Gd;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gd;->mTouchArea:Landroid/graphics/Rect;

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 302
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 292
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 297
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lc8/Gd;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 255
    iput-object p1, p0, Lc8/Gd;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 256
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Td;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Lc8/Gd;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 284
    iput-object p1, p0, Lc8/Gd;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 285
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Td;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 789
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Td;->setElevation(F)V

    .line 790
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 307
    iget-object v0, p0, Lc8/Gd;->mImageHelper:Lc8/Cs;

    invoke-virtual {v0, p1}, Lc8/Cs;->setImageResource(I)V

    .line 308
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 229
    iget v0, p0, Lc8/Gd;->mRippleColor:I

    if-eq v0, p1, :cond_0

    .line 230
    iput p1, p0, Lc8/Gd;->mRippleColor:I

    .line 231
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Td;->setRippleColor(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 396
    iget v0, p0, Lc8/Gd;->mSize:I

    if-eq p1, v0, :cond_0

    .line 397
    iput p1, p0, Lc8/Gd;->mSize:I

    .line 398
    invoke-virtual {p0}, Lc8/Gd;->requestLayout()V

    .line 400
    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .param p1, "useCompatPadding"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lc8/Gd;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 366
    iput-boolean p1, p0, Lc8/Gd;->mCompatPadding:Z

    .line 367
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Td;->onCompatShadowChanged()V

    .line 369
    :cond_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lc8/uf;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Gd;->show(Lc8/Dd;)V

    .line 316
    return-void
.end method

.method public show(Lc8/Dd;)V
    .locals 1
    .param p1, "listener"    # Lc8/Dd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/Gd;->show(Lc8/Dd;Z)V

    .line 326
    return-void
.end method

.method show(Lc8/Dd;Z)V
    .locals 2
    .param p1, "listener"    # Lc8/Dd;
    .param p2, "fromUser"    # Z

    .prologue
    .line 329
    invoke-direct {p0}, Lc8/Gd;->getImpl()Lc8/Td;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/Gd;->wrapOnVisibilityChangedListener(Lc8/Dd;)Lc8/Sd;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc8/Td;->show(Lc8/Sd;Z)V

    .line 330
    return-void
.end method
