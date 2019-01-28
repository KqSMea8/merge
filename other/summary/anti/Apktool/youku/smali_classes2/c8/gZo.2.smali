.class public Lc8/gZo;
.super Landroid/widget/ImageView;
.source "DonutCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fZo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DonutCircleImageView"

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBorder:F

.field private mBorderColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private multiR:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lc8/gZo;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lc8/gZo;->mResource:I

    .line 52
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lc8/gZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 54
    const v0, 0x3f851eb8    # 1.04f

    iput v0, p0, Lc8/gZo;->multiR:F

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lc8/gZo;->mBorder:F

    .line 57
    iput v1, p0, Lc8/gZo;->mBorderColor:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/gZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v6, p0, Lc8/gZo;->mResource:I

    .line 52
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v5, p0, Lc8/gZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 54
    const v5, 0x3f851eb8    # 1.04f

    iput v5, p0, Lc8/gZo;->multiR:F

    .line 56
    iput v7, p0, Lc8/gZo;->mBorder:F

    .line 57
    iput v6, p0, Lc8/gZo;->mBorderColor:I

    .line 72
    sget-object v5, Lcom/youku/phone/R$styleable;->DonutCircleImageView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/youku/phone/R$styleable;->DonutCircleImageView_android_scaleType:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 74
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 75
    sget-object v5, Lc8/gZo;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Lc8/gZo;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    :cond_0
    sget v5, Lcom/youku/phone/R$styleable;->DonutCircleImageView_multiRadius:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 78
    .local v4, "times":F
    cmpl-float v5, v4, v7

    if-lez v5, :cond_1

    .line 79
    invoke-virtual {p0, v4}, Lc8/gZo;->setMultiR(F)V

    .line 83
    :cond_1
    sget v5, Lcom/youku/phone/R$styleable;->DonutCircleImageView_donutBorderWidth:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 84
    .local v1, "bw":F
    sget v5, Lcom/youku/phone/R$styleable;->DonutCircleImageView_donutBorderColor:I

    const/high16 v6, 0x1a000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 85
    .local v2, "color":I
    cmpl-float v5, v1, v7

    if-lez v5, :cond_2

    .line 86
    invoke-virtual {p0, v1}, Lc8/gZo;->setBorder(F)V

    .line 87
    invoke-direct {p0, v2}, Lc8/gZo;->setBorderColor(I)V

    .line 89
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 91
    return-void
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lc8/gZo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "rsrc":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 173
    :goto_0
    return-object v2

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 164
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lc8/gZo;->mResource:I

    if-eqz v2, :cond_1

    .line 166
    :try_start_0
    iget v2, p0, Lc8/gZo;->mResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lc8/gZo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fZo;->fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    iput v2, p0, Lc8/gZo;->mResource:I

    goto :goto_1
.end method

.method private setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 94
    iput p1, p0, Lc8/gZo;->mBorderColor:I

    .line 95
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 96
    return-void
.end method

.method private updateDrawable()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc8/fZo;

    iget-object v1, p0, Lc8/gZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lc8/fZo;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc8/fZo;

    iget v1, p0, Lc8/gZo;->multiR:F

    invoke-virtual {v0, v1}, Lc8/fZo;->setMultiR(F)V

    .line 182
    iget v0, p0, Lc8/gZo;->mBorder:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc8/fZo;

    iget v1, p0, Lc8/gZo;->mBorder:F

    invoke-virtual {v0, v1}, Lc8/fZo;->setBorder(F)V

    .line 184
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc8/fZo;

    iget v1, p0, Lc8/gZo;->mBorderColor:I

    invoke-virtual {v0, v1}, Lc8/fZo;->setBorderColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 101
    invoke-virtual {p0}, Lc8/gZo;->invalidate()V

    .line 102
    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc8/gZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setBorder(F)V
    .locals 0
    .param p1, "border"    # F

    .prologue
    .line 122
    iput p1, p0, Lc8/gZo;->mBorder:F

    .line 123
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 124
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lc8/gZo;->mResource:I

    .line 137
    invoke-virtual {p0}, Lc8/gZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/fZo;->fromBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lc8/fZo;

    move-result-object v0

    iput-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 140
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lc8/gZo;->mResource:I

    .line 129
    invoke-virtual {p0}, Lc8/gZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/fZo;->fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 132
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 144
    iget v0, p0, Lc8/gZo;->mResource:I

    if-eq v0, p1, :cond_0

    .line 145
    iput p1, p0, Lc8/gZo;->mResource:I

    .line 146
    invoke-direct {p0}, Lc8/gZo;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lc8/gZo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 150
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 155
    invoke-virtual {p0}, Lc8/gZo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/gZo;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public setMultiR(F)V
    .locals 0
    .param p1, "times"    # F

    .prologue
    .line 117
    iput p1, p0, Lc8/gZo;->multiR:F

    .line 118
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 119
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    iput-object p1, p0, Lc8/gZo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 113
    invoke-direct {p0}, Lc8/gZo;->updateDrawable()V

    .line 114
    return-void
.end method
