.class public Lc8/Tdo;
.super Lc8/Ubo;
.source "SmoothImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rdo;,
        Lc8/Qdo;,
        Lc8/Sdo;
    }
.end annotation


# static fields
.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_TRANSFORM_IN:I = 0x1

.field private static final STATE_TRANSFORM_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmoothImageView"


# instance fields
.field private bitHeight:I

.field private bitWidth:I

.field private mBgAlpha:I

.field private final mBgColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOriginalHeight:I

.field private mOriginalLocationX:I

.field private mOriginalLocationY:I

.field private mOriginalWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSmoothMatrix:Landroid/graphics/Matrix;

.field private mState:I

.field private mTransformListener:Lc8/Rdo;

.field private mTransformStart:Z

.field private mTransfrom:Lc8/Sdo;

.field private maxScale:F

.field private minScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lc8/Ubo;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lc8/Tdo;->mState:I

    .line 41
    iput-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lc8/Tdo;->mBgColor:I

    .line 47
    iput v1, p0, Lc8/Tdo;->mBgAlpha:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/Tdo;->minScale:F

    .line 54
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lc8/Tdo;->maxScale:F

    .line 58
    invoke-virtual {p0}, Lc8/Tdo;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lc8/Ubo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lc8/Tdo;->mState:I

    .line 41
    iput-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lc8/Tdo;->mBgColor:I

    .line 47
    iput v1, p0, Lc8/Tdo;->mBgAlpha:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/Tdo;->minScale:F

    .line 54
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lc8/Tdo;->maxScale:F

    .line 63
    invoke-virtual {p0}, Lc8/Tdo;->init()V

    .line 64
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Tdo;)Lc8/Sdo;
    .locals 1
    .param p0, "x0"    # Lc8/Tdo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    return-object v0
.end method

.method static synthetic access$302(Lc8/Tdo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Tdo;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lc8/Tdo;->mBgAlpha:I

    return p1
.end method

.method static synthetic access$402(Lc8/Tdo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Tdo;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lc8/Tdo;->mState:I

    return p1
.end method

.method static synthetic access$500(Lc8/Tdo;)Lc8/Rdo;
    .locals 1
    .param p0, "x0"    # Lc8/Tdo;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Tdo;->mTransformListener:Lc8/Rdo;

    return-object v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lc8/oco;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc8/oco;

    invoke-virtual {v0}, Lc8/oco;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBmpMatrix()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 297
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    :cond_2
    invoke-direct {p0}, Lc8/Tdo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 307
    :cond_3
    iget-object v0, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v1, v1, Lc8/Sdo;->scale:F

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v2, v2, Lc8/Sdo;->scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 308
    iget-object v0, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v1, v1, Lc8/Sdo;->scale:F

    iget-object v2, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v2, v2, Lc8/Qdo;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v2, v2, Lc8/Sdo;->scale:F

    iget-object v3, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 309
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    iget-object v3, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v3, v3, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v3, v3, Lc8/Qdo;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    neg-float v2, v2

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method private getCenterCropMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 280
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v3, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    :cond_1
    invoke-direct {p0}, Lc8/Tdo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 287
    :cond_2
    iget v3, p0, Lc8/Tdo;->mOriginalWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 288
    .local v1, "xScale":F
    iget v3, p0, Lc8/Tdo;->mOriginalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 289
    .local v2, "yScale":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    move v0, v1

    .line 290
    .local v0, "scale":F
    :goto_1
    iget-object v3, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 291
    iget-object v3, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 292
    iget-object v3, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v6

    iget v5, p0, Lc8/Tdo;->mOriginalWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    iget-object v5, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 293
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v6

    iget v6, p0, Lc8/Tdo;->mOriginalHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    .line 292
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .end local v0    # "scale":F
    :cond_3
    move v0, v2

    .line 289
    goto :goto_1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v4, 0x0

    .line 136
    .local v4, "statusBarHeight":I
    :try_start_0
    const-string/jumbo v7, "com.android.internal.R$dimen"

    invoke-static {v7}, Lc8/Tdo;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "status_bar_height"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 139
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 140
    .local v6, "x":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v5, v4

    .line 145
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "statusBarHeight":I
    .end local v6    # "x":I
    .local v5, "statusBarHeight":I
    :goto_0
    return v5

    .line 142
    .end local v5    # "statusBarHeight":I
    .restart local v4    # "statusBarHeight":I
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v4

    .line 145
    .end local v4    # "statusBarHeight":I
    .restart local v5    # "statusBarHeight":I
    goto :goto_0
.end method

.method private initTransform()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 209
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 213
    :cond_2
    invoke-direct {p0}, Lc8/Tdo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    :cond_3
    iget-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lc8/Tdo;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lc8/Tdo;->getHeight()I

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    new-instance v8, Lc8/Sdo;

    invoke-direct {v8, p0, v10}, Lc8/Sdo;-><init>(Lc8/Tdo;Lc8/Odo;)V

    iput-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    .line 225
    iget v8, p0, Lc8/Tdo;->mOriginalWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 226
    .local v5, "xSScale":F
    iget v8, p0, Lc8/Tdo;->mOriginalHeight:I

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 227
    .local v7, "ySScale":F
    cmpl-float v8, v5, v7

    if-lez v8, :cond_4

    move v3, v5

    .line 228
    .local v3, "startScale":F
    :goto_1
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iput v3, v8, Lc8/Sdo;->startScale:F

    .line 230
    invoke-virtual {p0}, Lc8/Tdo;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 231
    .local v4, "xEScale":F
    invoke-virtual {p0}, Lc8/Tdo;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 232
    .local v6, "yEScale":F
    cmpg-float v8, v4, v6

    if-gez v8, :cond_5

    move v2, v4

    .line 233
    .local v2, "endScale":F
    :goto_2
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iput v2, v8, Lc8/Sdo;->endScale:F

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initTransform.width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lc8/Tdo;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bitmapWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " startScale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v9, v9, Lc8/Sdo;->startScale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " endScale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v9, v9, Lc8/Sdo;->endScale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " this: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    new-instance v9, Lc8/Qdo;

    invoke-direct {v9, p0, v10}, Lc8/Qdo;-><init>(Lc8/Tdo;Lc8/Odo;)V

    iput-object v9, v8, Lc8/Sdo;->startRect:Lc8/Qdo;

    .line 244
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v9, p0, Lc8/Tdo;->mOriginalLocationX:I

    int-to-float v9, v9

    iput v9, v8, Lc8/Qdo;->left:F

    .line 245
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v9, p0, Lc8/Tdo;->mOriginalLocationY:I

    int-to-float v9, v9

    iput v9, v8, Lc8/Qdo;->top:F

    .line 246
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v9, p0, Lc8/Tdo;->mOriginalWidth:I

    int-to-float v9, v9

    iput v9, v8, Lc8/Qdo;->width:F

    .line 247
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v9, p0, Lc8/Tdo;->mOriginalHeight:I

    int-to-float v9, v9

    iput v9, v8, Lc8/Qdo;->height:F

    .line 249
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    new-instance v9, Lc8/Qdo;

    invoke-direct {v9, p0, v10}, Lc8/Qdo;-><init>(Lc8/Tdo;Lc8/Odo;)V

    iput-object v9, v8, Lc8/Sdo;->endRect:Lc8/Qdo;

    .line 250
    iget-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v9, v9, Lc8/Sdo;->endScale:F

    mul-float v1, v8, v9

    .line 251
    .local v1, "bitmapEndWidth":F
    iget-object v8, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v9, v9, Lc8/Sdo;->endScale:F

    mul-float v0, v8, v9

    .line 252
    .local v0, "bitmapEndHeight":F
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->endRect:Lc8/Qdo;

    invoke-virtual {p0}, Lc8/Tdo;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    div-float/2addr v9, v11

    iput v9, v8, Lc8/Qdo;->left:F

    .line 253
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->endRect:Lc8/Qdo;

    invoke-virtual {p0}, Lc8/Tdo;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v0

    div-float/2addr v9, v11

    iput v9, v8, Lc8/Qdo;->top:F

    .line 254
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->endRect:Lc8/Qdo;

    iput v1, v8, Lc8/Qdo;->width:F

    .line 255
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v8, v8, Lc8/Sdo;->endRect:Lc8/Qdo;

    iput v0, v8, Lc8/Qdo;->height:F

    .line 256
    iget-object v8, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    new-instance v9, Lc8/Qdo;

    invoke-direct {v9, p0, v10}, Lc8/Qdo;-><init>(Lc8/Tdo;Lc8/Odo;)V

    iput-object v9, v8, Lc8/Sdo;->rect:Lc8/Qdo;

    goto/16 :goto_0

    .end local v0    # "bitmapEndHeight":F
    .end local v1    # "bitmapEndWidth":F
    .end local v2    # "endScale":F
    .end local v3    # "startScale":F
    .end local v4    # "xEScale":F
    .end local v6    # "yEScale":F
    :cond_4
    move v3, v7

    .line 227
    goto/16 :goto_1

    .restart local v3    # "startScale":F
    .restart local v4    # "xEScale":F
    .restart local v6    # "yEScale":F
    :cond_5
    move v2, v6

    .line 232
    goto/16 :goto_2
.end method

.method private startTransform(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    .line 379
    iget-object v7, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    if-nez v7, :cond_0

    .line 459
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    .line 383
    .local v5, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 386
    const-string/jumbo v7, "scale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v10, v10, Lc8/Sdo;->startScale:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v10, v10, Lc8/Sdo;->endScale:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 388
    .local v3, "scaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "left"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->left:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->left:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 390
    .local v2, "leftHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "top"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->top:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->top:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 392
    .local v4, "topHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "width"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->width:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->width:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 394
    .local v6, "widthHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "height"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->height:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->height:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 396
    .local v1, "heightHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 397
    .local v0, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 414
    :goto_1
    new-instance v7, Lc8/Odo;

    invoke-direct {v7, p0}, Lc8/Odo;-><init>(Lc8/Tdo;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 430
    new-instance v7, Lc8/Pdo;

    invoke-direct {v7, p0, p1}, Lc8/Pdo;-><init>(Lc8/Tdo;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 400
    .end local v0    # "alphaHolder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "heightHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "leftHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "scaleHolder":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "topHolder":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "widthHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1
    const-string/jumbo v7, "scale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v10, v10, Lc8/Sdo;->endScale:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v10, v10, Lc8/Sdo;->startScale:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 402
    .restart local v3    # "scaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "left"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->left:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->left:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 404
    .restart local v2    # "leftHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "top"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->top:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->top:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 406
    .restart local v4    # "topHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "width"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->width:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->width:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 408
    .restart local v6    # "widthHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "height"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->endRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->height:F

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v10, v10, Lc8/Sdo;->startRect:Lc8/Qdo;

    iget v10, v10, Lc8/Qdo;->height:F

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 410
    .restart local v1    # "heightHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 411
    .restart local v0    # "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_1

    .line 396
    .line 410
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public getMaxScale()F
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lc8/Tdo;->maxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lc8/Tdo;->minScale:F

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lc8/Ubo;->init()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0xff

    const/4 v3, 0x1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-virtual {p0}, Lc8/Tdo;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " drawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Tdo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBgAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Tdo;->mBgAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTransfrom.scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v1, v1, Lc8/Sdo;->scale:F

    .line 316
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 318
    iget v1, p0, Lc8/Tdo;->mState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lc8/Tdo;->mState:I

    if-eq v1, v7, :cond_0

    .line 319
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 376
    :cond_0
    :goto_1
    return-void

    .line 316
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    :cond_2
    iget v1, p0, Lc8/Tdo;->mState:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lc8/Tdo;->mState:I

    if-ne v1, v7, :cond_9

    .line 325
    :cond_3
    iget-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    if-eqz v1, :cond_4

    .line 326
    invoke-direct {p0}, Lc8/Tdo;->initTransform()V

    .line 328
    :cond_4
    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    if-nez v1, :cond_5

    .line 329
    invoke-super {p0, p1}, Lc8/Ubo;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 332
    :cond_5
    iget-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    if-eqz v1, :cond_6

    .line 333
    iget v1, p0, Lc8/Tdo;->mState:I

    if-ne v1, v3, :cond_8

    .line 335
    iput v6, p0, Lc8/Tdo;->mBgAlpha:I

    .line 336
    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    invoke-virtual {v1}, Lc8/Sdo;->initStartIn()V

    .line 343
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    if-eqz v1, :cond_7

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.startScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v2, v2, Lc8/Sdo;->startScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.startScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v2, v2, Lc8/Sdo;->endScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.scale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget v2, v2, Lc8/Sdo;->scale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.startRect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->startRect:Lc8/Qdo;

    invoke-virtual {v2}, Lc8/Qdo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.endRect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->endRect:Lc8/Qdo;

    invoke-virtual {v2}, Lc8/Qdo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTransfrom.rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->rect:Lc8/Qdo;

    invoke-virtual {v2}, Lc8/Qdo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    :cond_7
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lc8/Tdo;->mBgAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 354
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    invoke-direct {p0}, Lc8/Tdo;->getBmpMatrix()V

    .line 357
    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v1, v1, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v1, v1, Lc8/Qdo;->left:F

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v2, v2, Lc8/Qdo;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v1, v1, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v1, v1, Lc8/Qdo;->width:F

    iget-object v2, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    iget-object v2, v2, Lc8/Sdo;->rect:Lc8/Qdo;

    iget v2, v2, Lc8/Qdo;->height:F

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 359
    iget-object v1, p0, Lc8/Tdo;->mSmoothMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 360
    invoke-virtual {p0}, Lc8/Tdo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 362
    iget-boolean v1, p0, Lc8/Tdo;->mTransformStart:Z

    if-eqz v1, :cond_0

    .line 363
    iput-boolean v6, p0, Lc8/Tdo;->mTransformStart:Z

    .line 364
    iget v1, p0, Lc8/Tdo;->mState:I

    invoke-direct {p0, v1}, Lc8/Tdo;->startTransform(I)V

    goto/16 :goto_1

    .line 339
    .end local v0    # "saveCount":I
    :cond_8
    iput v4, p0, Lc8/Tdo;->mBgAlpha:I

    .line 340
    iget-object v1, p0, Lc8/Tdo;->mTransfrom:Lc8/Sdo;

    invoke-virtual {v1}, Lc8/Sdo;->initStartOut()V

    goto/16 :goto_2

    .line 371
    :cond_9
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 373
    iget-object v1, p0, Lc8/Tdo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 374
    invoke-super {p0, p1}, Lc8/Ubo;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImageBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iget v1, p0, Lc8/Tdo;->minScale:F

    iget v2, p0, Lc8/Tdo;->maxScale:F

    invoke-super {p0, p1, v0, v1, v2}, Lc8/Ubo;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 92
    iput-object p1, p0, Lc8/Tdo;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lc8/Tdo;->bitWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lc8/Tdo;->bitHeight:I

    .line 97
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lc8/Ubo;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lc8/Tdo;->bitWidth:I

    .line 83
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lc8/Tdo;->bitHeight:I

    .line 85
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .prologue
    .line 481
    iput p1, p0, Lc8/Tdo;->maxScale:F

    .line 482
    invoke-super {p0, p1}, Lc8/Ubo;->setMaxScale(F)V

    .line 483
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F

    .prologue
    .line 492
    iput p1, p0, Lc8/Tdo;->minScale:F

    .line 493
    invoke-super {p0, p1}, Lc8/Ubo;->setMinScale(F)V

    .line 494
    return-void
.end method

.method public setOnTransformListener(Lc8/Rdo;)V
    .locals 0
    .param p1, "listener"    # Lc8/Rdo;

    .prologue
    .line 462
    iput-object p1, p0, Lc8/Tdo;->mTransformListener:Lc8/Rdo;

    .line 463
    return-void
.end method

.method public setOriginalInfo(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "locationX"    # I
    .param p4, "locationY"    # I

    .prologue
    .line 100
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Tdo;->setOriginalInfo(IIIIZ)V

    .line 101
    return-void
.end method

.method public setOriginalInfo(IIIIZ)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "locationX"    # I
    .param p4, "locationY"    # I
    .param p5, "isIgnoreStatusBar"    # Z

    .prologue
    .line 113
    iput p1, p0, Lc8/Tdo;->mOriginalWidth:I

    .line 114
    iput p2, p0, Lc8/Tdo;->mOriginalHeight:I

    .line 115
    iput p3, p0, Lc8/Tdo;->mOriginalLocationX:I

    .line 116
    iput p4, p0, Lc8/Tdo;->mOriginalLocationY:I

    .line 119
    if-nez p5, :cond_0

    .line 120
    iget v0, p0, Lc8/Tdo;->mOriginalLocationY:I

    invoke-virtual {p0}, Lc8/Tdo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Tdo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lc8/Tdo;->mOriginalLocationY:I

    .line 122
    :cond_0
    return-void
.end method

.method public transformIn()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lc8/Tdo;->mState:I

    .line 153
    iput-boolean v0, p0, Lc8/Tdo;->mTransformStart:Z

    .line 154
    invoke-virtual {p0}, Lc8/Tdo;->invalidate()V

    .line 155
    return-void
.end method

.method public transformOut()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x2

    iput v0, p0, Lc8/Tdo;->mState:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Tdo;->mTransformStart:Z

    .line 163
    invoke-virtual {p0}, Lc8/Tdo;->invalidate()V

    .line 164
    return-void
.end method
