.class public Lc8/Hso;
.super Landroid/widget/ImageView;
.source "NumeralView.java"


# static fields
.field private static final numRes:[I

.field private static final oneLeftRes:I

.field private static final oneRightRes:I


# instance fields
.field private isNumChanged:Z

.field private showNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_1_c:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/youku/phone/R$drawable;->ucenter_lv_9:I

    aput v2, v0, v1

    sput-object v0, Lc8/Hso;->numRes:[I

    .line 34
    sget v0, Lcom/youku/phone/R$drawable;->ucenter_lv_1_l:I

    sput v0, Lc8/Hso;->oneLeftRes:I

    .line 35
    sget v0, Lcom/youku/phone/R$drawable;->ucenter_lv_1_r:I

    sput v0, Lc8/Hso;->oneRightRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lc8/Hso;->showNumber:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hso;->isNumChanged:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lc8/Hso;->showNumber:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hso;->isNumChanged:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lc8/Hso;->showNumber:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hso;->isNumChanged:Z

    .line 39
    return-void
.end method

.method private mergeNumberBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    .local v11, "total_width":I
    const/4 v8, 0x0

    .line 79
    .local v8, "per_width":I
    const/4 v7, 0x0

    .line 80
    .local v7, "per_height":I
    iget v12, p0, Lc8/Hso;->showNumber:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "numStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    new-array v1, v12, [Landroid/graphics/Bitmap;

    .line 83
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 84
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 85
    .local v5, "num":I
    sget-object v12, Lc8/Hso;->numRes:[I

    aget v0, v12, v5

    .line 86
    .local v0, "bitmapRes":I
    const/4 v12, 0x1

    if-ne v5, v12, :cond_0

    .line 87
    if-nez v4, :cond_1

    .line 88
    sget v0, Lc8/Hso;->oneLeftRes:I

    .line 93
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lc8/Hso;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v1, v4

    .line 95
    aget-object v12, v1, v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 96
    aget-object v12, v1, v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 97
    add-int/2addr v11, v8

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v4, v12, :cond_0

    .line 90
    sget v0, Lc8/Hso;->oneRightRes:I

    goto :goto_1

    .line 100
    .end local v0    # "bitmapRes":I
    .end local v5    # "num":I
    :cond_2
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v7, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 101
    .local v9, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    :goto_2
    array-length v12, v1

    if-ge v4, v12, :cond_3

    .line 104
    new-instance v10, Landroid/graphics/Rect;

    aget-object v12, v1, v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    aget-object v13, v1, v4

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v10, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v10, "srcRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    mul-int v12, v8, v4

    add-int/lit8 v13, v4, 0x1

    mul-int/2addr v13, v8

    invoke-direct {v3, v12, v14, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v3, "dstRect":Landroid/graphics/Rect;
    aget-object v12, v1, v4

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v10, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 108
    .end local v3    # "dstRect":Landroid/graphics/Rect;
    .end local v10    # "srcRect":Landroid/graphics/Rect;
    :cond_3
    return-object v9
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget v1, p0, Lc8/Hso;->showNumber:I

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lc8/Hso;->isNumChanged:Z

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/Hso;->isNumChanged:Z

    .line 66
    invoke-direct {p0}, Lc8/Hso;->mergeNumberBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "mergeBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lc8/Hso;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    .end local v0    # "mergeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setNumber(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 54
    iget v0, p0, Lc8/Hso;->showNumber:I

    if-eq v0, p1, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hso;->isNumChanged:Z

    .line 56
    iput p1, p0, Lc8/Hso;->showNumber:I

    .line 57
    invoke-virtual {p0}, Lc8/Hso;->postInvalidate()V

    .line 59
    :cond_0
    return-void
.end method
