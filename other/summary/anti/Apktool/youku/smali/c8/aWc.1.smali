.class public Lc8/aWc;
.super Lc8/DOf;
.source "WithCornerMaskImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x1

.field public static final RATIO_TYPE_CHILD_BRAND_ZONE:I = 0x7

.field public static final RATIO_TYPE_FREQUENCY:I = 0x6

.field public static final RATIO_TYPE_HOME:I = 0x2

.field public static final RATIO_TYPE_HOME_PAD_SLIDE:I = 0x3

.field public static final RATIO_TYPE_NORMAL:I = 0x0

.field public static final RATIO_TYPE_NORMAL_IMG:I = 0x5

.field public static final RATIO_TYPE_PORTRAIT:I = 0x4

.field public static final RATIO_TYPE_WIDE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WithCornerMaskImageView"


# instance fields
.field private isCustomOnDraw:Z

.field private isNeedGifCorner:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsCanDrawCorner:Z

.field private mIsRightCorner:Z

.field private mMaskColor:I

.field private mMaskPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRoundPx:I

.field private mTmpOval:Landroid/graphics/RectF;

.field private ratio_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc8/aWc;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lc8/DOf;-><init>(Landroid/content/Context;)V

    .line 80
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lc8/aWc;->mMaskColor:I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->home_img_corer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ratioType"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lc8/DOf;-><init>(Landroid/content/Context;)V

    .line 80
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lc8/aWc;->mMaskColor:I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    .line 90
    iput p2, p0, Lc8/aWc;->ratio_type:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->home_img_corer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lc8/DOf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lc8/aWc;->mMaskColor:I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    .line 101
    invoke-direct {p0, p2}, Lc8/aWc;->initattrs(Landroid/util/AttributeSet;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->home_img_corer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 103
    return-void
.end method

.method private addArc(Landroid/graphics/Path;FFFFFF)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweepAngle"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    .line 181
    :cond_0
    iget-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 182
    iget-object v0, p0, Lc8/aWc;->mTmpOval:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p6, p7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 183
    return-void
.end method

.method private initattrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0}, Lc8/aWc;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/phone/R$styleable;->ChannelCellImageLayout:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 294
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/youku/phone/R$styleable;->ChannelCellImageLayout_ratio:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lc8/aWc;->ratio_type:I

    .line 296
    invoke-virtual {p0}, Lc8/aWc;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/phone/R$styleable;->WithCornerMaskImageView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 297
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/youku/phone/R$styleable;->WithCornerMaskImageView_is_right_corner:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lc8/aWc;->mIsRightCorner:Z

    .line 298
    return-void
.end method

.method private recreateMask(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 150
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    .line 153
    :cond_0
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 155
    iget v0, p0, Lc8/aWc;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v4, v0, v1

    .line 158
    .local v4, "fullArcSize":F
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    add-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    add-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    const/high16 v1, -0x40000000    # -2.0f

    add-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 165
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    iget v1, p0, Lc8/aWc;->mRadius:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    iget-object v1, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lc8/aWc;->addArc(Landroid/graphics/Path;FFFFFF)V

    .line 167
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    int-to-float v2, p2

    iget v3, p0, Lc8/aWc;->mRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v1, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    int-to-float v0, p2

    sub-float v3, v0, v4

    int-to-float v5, p2

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lc8/aWc;->addArc(Landroid/graphics/Path;FFFFFF)V

    .line 169
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lc8/aWc;->mRadius:F

    sub-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    iget-object v6, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    int-to-float v0, p1

    sub-float v7, v0, v4

    int-to-float v0, p2

    sub-float v8, v0, v4

    int-to-float v9, p1

    int-to-float v10, p2

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, -0x3d4c0000    # -90.0f

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lc8/aWc;->addArc(Landroid/graphics/Path;FFFFFF)V

    .line 171
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lc8/aWc;->mRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget-object v6, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    int-to-float v0, p1

    sub-float v7, v0, v4

    const/4 v8, 0x0

    int-to-float v9, p1

    const/4 v11, 0x0

    const/high16 v12, -0x3d4c0000    # -90.0f

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lc8/aWc;->addArc(Landroid/graphics/Path;FFFFFF)V

    .line 173
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    iget v1, p0, Lc8/aWc;->mRadius:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v0, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 176
    .end local v4    # "fullArcSize":F
    :cond_1
    return-void
.end method


# virtual methods
.method public isRightCorner()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lc8/aWc;->mIsRightCorner:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lc8/DOf;->onAttachedToWindow()V

    .line 303
    invoke-virtual {p0}, Lc8/aWc;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lc8/ivf;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lc8/ivf;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lc8/ivf;->start()V

    .line 307
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Lc8/DOf;->onDetachedFromWindow()V

    .line 312
    invoke-virtual {p0}, Lc8/aWc;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lc8/ivf;

    if-eqz v1, :cond_0

    .line 314
    check-cast v0, Lc8/ivf;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lc8/ivf;->stop()V

    .line 316
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Lc8/aWc;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lc8/aWc;->isCustomOnDraw:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lc8/aWc;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/aWc;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    :goto_0
    iget-boolean v1, p0, Lc8/aWc;->mIsRightCorner:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc8/aWc;->isNeedGifCorner:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget-object v1, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lc8/aWc;->mMaskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, p0, Lc8/aWc;->mMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lc8/aWc;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    :cond_0
    iget-object v1, p0, Lc8/aWc;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lc8/aWc;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    :cond_1
    return-void

    .line 238
    :cond_2
    invoke-super {p0, p1}, Lc8/DOf;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 254
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 255
    invoke-super {p0, p1, p2}, Lc8/DOf;->onMeasure(II)V

    .line 289
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {v4, p1}, Lc8/aWc;->getDefaultSize(II)I

    move-result v2

    invoke-static {v4, p2}, Lc8/aWc;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lc8/aWc;->setMeasuredDimension(II)V

    .line 260
    invoke-virtual {p0}, Lc8/aWc;->getMeasuredWidth()I

    move-result v1

    .line 262
    .local v1, "childWidthSize":I
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 263
    invoke-virtual {p0}, Lc8/aWc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Mzo;->isPad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    div-int/lit8 v0, v2, 0x2

    .line 286
    .local v0, "childHeightSize":I
    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 287
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 288
    invoke-super {p0, p1, p2}, Lc8/DOf;->onMeasure(II)V

    goto :goto_0

    .line 266
    .end local v0    # "childHeightSize":I
    :cond_1
    div-int/lit8 v0, v1, 0x3

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 268
    .end local v0    # "childHeightSize":I
    :cond_2
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 269
    invoke-virtual {p0}, Lc8/aWc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Mzo;->isPad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    div-int/lit8 v0, v2, 0x2

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 272
    .end local v0    # "childHeightSize":I
    :cond_3
    mul-int/lit8 v2, v1, 0x7

    div-int/lit8 v0, v2, 0xf

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 274
    .end local v0    # "childHeightSize":I
    :cond_4
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 275
    mul-int/lit8 v2, v1, 0x7

    div-int/lit8 v0, v2, 0xf

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 276
    .end local v0    # "childHeightSize":I
    :cond_5
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 277
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v0, v2, 0x2

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 278
    .end local v0    # "childHeightSize":I
    :cond_6
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 280
    mul-int/lit16 v2, v1, 0xbc

    div-int/lit16 v0, v2, 0xdb

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 281
    .end local v0    # "childHeightSize":I
    :cond_7
    iget v2, p0, Lc8/aWc;->ratio_type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    .line 282
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v0, v2, 0x10

    .restart local v0    # "childHeightSize":I
    goto :goto_1

    .line 284
    .end local v0    # "childHeightSize":I
    :cond_8
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v0, v2, 0x10

    .restart local v0    # "childHeightSize":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lc8/DOf;->onSizeChanged(IIII)V

    .line 144
    if-ne p3, p1, :cond_0

    if-eq p4, p2, :cond_1

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/aWc;->recreateMask(II)V

    .line 147
    :cond_1
    return-void
.end method

.method public setCanDrawCorner(Z)V
    .locals 0
    .param p1, "canDrawCorner"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lc8/aWc;->mIsCanDrawCorner:Z

    .line 120
    return-void
.end method

.method public setCustomOnDraw(Z)V
    .locals 0
    .param p1, "isCustom"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lc8/aWc;->isCustomOnDraw:Z

    .line 139
    return-void
.end method

.method public setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/aWc;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    return-void
.end method

.method public setMaskColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/high16 v1, -0x1000000

    .line 186
    and-int v0, p1, v1

    if-nez v0, :cond_0

    .line 187
    or-int/2addr p1, v1

    .line 190
    :cond_0
    iput p1, p0, Lc8/aWc;->mMaskColor:I

    .line 192
    invoke-virtual {p0}, Lc8/aWc;->invalidate()V

    .line 193
    return-void
.end method

.method public setNeedGifCorner(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lc8/aWc;->isNeedGifCorner:Z

    .line 135
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/aWc;->setRadius(FI)V

    .line 131
    return-void
.end method

.method public setRadius(FI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "unit"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lc8/aWc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lc8/aWc;->mRadius:F

    .line 124
    invoke-virtual {p0}, Lc8/aWc;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lc8/aWc;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc8/aWc;->recreateMask(II)V

    .line 126
    invoke-virtual {p0}, Lc8/aWc;->invalidate()V

    .line 127
    return-void
.end method

.method public setRightCorner(Z)V
    .locals 0
    .param p1, "isRight"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lc8/aWc;->mIsRightCorner:Z

    .line 116
    return-void
.end method
