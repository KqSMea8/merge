.class public Lc8/Nao;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static conn:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lc8/Nao;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Nao;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 607
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 608
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 609
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 619
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 620
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs combineBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "columns"    # I
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 646
    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_1

    .line 647
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Wrong parameters:columns must > 0 and bitmaps.length must >0."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 650
    :cond_1
    const/4 v6, 0x0

    .line 652
    .local v6, "maxWidthPerImage":I
    const/4 v5, 0x0

    .line 654
    .local v5, "maxHeightPerImage":I
    const/4 v2, 0x0

    .line 657
    .local v2, "imageTotalWidth":I
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_4

    aget-object v1, p1, v13

    .line 658
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v6, v15, :cond_2

    .line 659
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-le v5, v15, :cond_3

    .line 660
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v2, v15

    .line 661
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 657
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto :goto_1

    .line 659
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_2

    .line 669
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p1

    array-length v13, v0

    move/from16 v0, p0

    if-lt v0, v13, :cond_5

    .line 670
    const/4 v10, 0x1

    .line 671
    .local v10, "rows":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p0, v0

    .line 673
    move v9, v2

    .line 674
    .local v9, "newBitmapWidth":I
    mul-int v8, v10, v5

    .line 681
    .local v8, "newBitmapHeight":I
    :goto_3
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 682
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_4
    if-ge v12, v10, :cond_8

    .line 683
    const/4 v4, 0x0

    .line 684
    .local v4, "left":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_5
    move/from16 v0, p0

    if-ge v11, v0, :cond_7

    .line 685
    mul-int v13, v12, p0

    add-int v3, v13, v11

    .line 686
    .local v3, "index":I
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v3, v13, :cond_7

    .line 690
    aget-object v13, p1, v3

    new-instance v14, Landroid/graphics/PointF;

    int-to-float v15, v4

    mul-int v16, v12, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v7, v13, v14}, Lc8/Nao;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 691
    aget-object v13, p1, v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v4, v13

    .line 684
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 676
    .end local v3    # "index":I
    .end local v4    # "left":I
    .end local v7    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "newBitmapHeight":I
    .end local v9    # "newBitmapWidth":I
    .end local v10    # "rows":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_5
    move-object/from16 v0, p1

    array-length v13, v0

    rem-int v13, v13, p0

    if-nez v13, :cond_6

    move-object/from16 v0, p1

    array-length v13, v0

    div-int v10, v13, p0

    .line 678
    .restart local v10    # "rows":I
    :goto_6
    mul-int v9, p0, v6

    .line 679
    .restart local v9    # "newBitmapWidth":I
    mul-int v8, v10, v5

    .restart local v8    # "newBitmapHeight":I
    goto :goto_3

    .line 676
    .end local v8    # "newBitmapHeight":I
    .end local v9    # "newBitmapWidth":I
    .end local v10    # "rows":I
    :cond_6
    move-object/from16 v0, p1

    array-length v13, v0

    div-int v13, v13, p0

    add-int/lit8 v10, v13, 0x1

    goto :goto_6

    .line 682
    .restart local v4    # "left":I
    .restart local v7    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "newBitmapHeight":I
    .restart local v9    # "newBitmapWidth":I
    .restart local v10    # "rows":I
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 694
    .end local v4    # "left":I
    .end local v11    # "x":I
    :cond_8
    return-object v7
.end method

.method public static createReflectionImageWithNoOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 176
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 178
    .local v17, "height":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 182
    const/16 v16, 0x8

    .line 183
    .local v16, "divider":I
    const/4 v2, 0x0

    div-int v1, v17, v16

    mul-int/lit8 v3, v1, 0x7

    div-int v5, v17, v16

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 191
    .local v19, "reflectionImage":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    .local v15, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 196
    .local v18, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v11, v1

    const v12, 0x70ffffff

    const v13, 0xffffff

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 200
    .local v7, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 202
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    const/4 v9, 0x0

    div-int v1, v17, v16

    int-to-float v10, v1

    int-to-float v11, v4

    .line 205
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v12, v1

    move-object v8, v15

    move-object/from16 v13, v18

    .line 204
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    return-object v19
.end method

.method public static createReflectionImageWithOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 136
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 138
    .local v18, "height":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 142
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    div-int/lit8 v6, v18, 0x2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 144
    .local v20, "reflectionImage":Landroid/graphics/Bitmap;
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v18

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 147
    .local v16, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    const/4 v2, 0x0

    add-int/lit8 v3, v18, 0x1

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 159
    .local v19, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x8

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 161
    .local v8, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    const/4 v10, 0x0

    move/from16 v0, v18

    int-to-float v11, v0

    int-to-float v12, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v13, v2

    move-object/from16 v9, v17

    move-object/from16 v14, v19

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    return-object v16
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 376
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 377
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 378
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    return-object v0

    .line 378
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getBitmapFromView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 417
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 418
    .local v3, "widthSpec":I
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 419
    .local v2, "heightSpec":I
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 420
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 421
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 424
    return-object v0
.end method

.method public static getDrawableImageSize(Landroid/content/Context;I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 634
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 636
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getImageFromAssetsFile(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 549
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 551
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 552
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 553
    .local v3, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v3    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 556
    if-eqz v4, :cond_0

    .line 558
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 559
    :catch_1
    move-exception v2

    .line 560
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getNetworkImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 579
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 580
    sput-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 581
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 582
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 584
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 586
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 587
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 592
    sget-object v4, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 593
    sget-object v4, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 597
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v3

    .line 592
    .restart local v2    # "url":Ljava/net/URL;
    :cond_1
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2

    .line 593
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 597
    .end local v2    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_2

    .line 593
    sget-object v3, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_3

    .line 593
    sget-object v4, Lc8/Nao;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v3
.end method

.method public static getResourceFromBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 464
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 466
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 467
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 468
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 469
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 470
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 307
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 310
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 313
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 314
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 315
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    invoke-virtual {v0, v4, v9, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 317
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 318
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 319
    return-object v1
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPx"    # F

    .prologue
    const/4 v8, 0x0

    .line 391
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 392
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 395
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 397
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 399
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    invoke-virtual {v0, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 401
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 402
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 403
    return-object v1
.end method

.method public static getViewThumbnail(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x3e800000    # 0.25f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 432
    if-nez p0, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 454
    :goto_0
    return-object v1

    .line 435
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 436
    .local v1, "mThumb":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 437
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 438
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 439
    .local v2, "mThumbCanvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x3

    invoke-direct {v5, v8, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 440
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 441
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 442
    .local v3, "mThumbPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 443
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    invoke-virtual {p0, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 448
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 449
    invoke-virtual {v2, v0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 453
    invoke-virtual {p0, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public static makeReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 35
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 232
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    .line 234
    .local v29, "height":I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 238
    const/16 v27, 0x8

    .line 239
    .local v27, "divider":I
    const/4 v4, 0x0

    div-int v3, v29, v27

    mul-int/lit8 v5, v3, 0x7

    div-int v7, v29, v27

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 243
    .local v9, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 244
    .local v12, "bmpWidth":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 245
    .local v16, "bmpHeight":I
    mul-int v3, v12, v16

    shl-int/lit8 v3, v3, 0x2

    new-array v10, v3, [I

    .line 246
    .local v10, "pixels":[I
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v12

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 248
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v12, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 250
    .local v17, "reverseBitmap":Landroid/graphics/Bitmap;
    const/16 v34, 0x0

    .local v34, "y":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 251
    mul-int v19, v34, v12

    const/16 v21, 0x0

    sub-int v3, v16, v34

    add-int/lit8 v22, v3, -0x1

    const/16 v24, 0x1

    move-object/from16 v18, v10

    move/from16 v20, v12

    move/from16 v23, v12

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 250
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v10

    move/from16 v20, v12

    move/from16 v23, v12

    move/from16 v24, v16

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 256
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v12, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 258
    .local v32, "reflectionBitmap":Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    .line 259
    .local v25, "alpha":I
    const/16 v34, 0x0

    :goto_1
    move/from16 v0, v34

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 260
    const/16 v33, 0x0

    .local v33, "x":I
    :goto_2
    move/from16 v0, v33

    if-ge v0, v12, :cond_1

    .line 261
    mul-int v3, v34, v12

    add-int v30, v3, v33

    .line 262
    .local v30, "index":I
    aget v3, v10, v30

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v0, v3, 0xff

    move/from16 v31, v0

    .line 263
    .local v31, "r":I
    aget v3, v10, v30

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v0, v3, 0xff

    move/from16 v28, v0

    .line 264
    .local v28, "g":I
    aget v3, v10, v30

    and-int/lit16 v0, v3, 0xff

    move/from16 v26, v0

    .line 265
    .local v26, "b":I
    shl-int/lit8 v3, v31, 0x10

    or-int v3, v3, v25

    shl-int/lit8 v4, v28, 0x8

    or-int/2addr v3, v4

    or-int v3, v3, v26

    aput v3, v10, v30

    .line 266
    aget v3, v10, v30

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 260
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 268
    .end local v26    # "b":I
    .end local v28    # "g":I
    .end local v30    # "index":I
    .end local v31    # "r":I
    :cond_1
    const/high16 v3, 0x1000000

    add-int v25, v25, v3

    .line 259
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 270
    .end local v33    # "x":I
    :cond_2
    return-object v32
.end method

.method public static mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "first"    # Landroid/graphics/Bitmap;
    .param p1, "second"    # Landroid/graphics/Bitmap;
    .param p2, "fromPoint"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 705
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v2

    .line 714
    :goto_0
    return-object v1

    .line 708
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 709
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 710
    .local v0, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 711
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 712
    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 713
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 530
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 531
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 532
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 533
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 536
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static recycledBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recycledTypedArray(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    :cond_0
    return-void
.end method

.method public static recycledVelocityTracker(Landroid/view/VelocityTracker;)V
    .locals 0
    .param p0, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V

    .line 122
    :cond_0
    return-void
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 85
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v0, p0

    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 64
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 65
    .local v4, "height":I
    move v9, p1

    .line 66
    .local v9, "newWidth":I
    move v8, p2

    .line 68
    .local v8, "newHeight":I
    int-to-float v1, v9

    int-to-float v2, v3

    div-float v12, v1, v2

    .line 69
    .local v12, "scaleWidth":F
    int-to-float v1, v8

    int-to-float v2, v4

    div-float v11, v1, v2

    .line 71
    .local v11, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .local v10, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object p0, v10

    .line 82
    goto :goto_0

    .line 83
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "newHeight":I
    .end local v9    # "newWidth":I
    .end local v10    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "scaleHeight":F
    .end local v12    # "scaleWidth":F
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 281
    .local v3, "bmpWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 282
    .local v7, "bmpHeight":I
    mul-int v0, v3, v7

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    .line 283
    .local v1, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 288
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 290
    .local v13, "reflectionBitmap":Landroid/graphics/Bitmap;
    const/high16 v8, 0x64000000

    .line 291
    .local v8, "alpha":I
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_0
    if-ge v15, v7, :cond_1

    .line 292
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_1
    if-ge v14, v3, :cond_0

    .line 293
    mul-int v0, v15, v3

    add-int v11, v0, v14

    .line 294
    .local v11, "index":I
    aget v0, v1, v11

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v12, v0, 0xff

    .line 295
    .local v12, "r":I
    aget v0, v1, v11

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v10, v0, 0xff

    .line 296
    .local v10, "g":I
    aget v0, v1, v11

    and-int/lit16 v9, v0, 0xff

    .line 297
    .local v9, "b":I
    shl-int/lit8 v0, v12, 0x10

    or-int/2addr v0, v8

    shl-int/lit8 v2, v10, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v9

    aput v0, v1, v11

    .line 298
    aget v0, v1, v11

    invoke-virtual {v13, v14, v15, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 292
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 300
    .end local v9    # "b":I
    .end local v10    # "g":I
    .end local v11    # "index":I
    .end local v12    # "r":I
    :cond_0
    const/high16 v0, 0xa000000

    sub-int/2addr v8, v0

    .line 291
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 302
    .end local v14    # "x":I
    :cond_1
    return-object v13
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "sourceImg"    # Landroid/graphics/Bitmap;
    .param p1, "number"    # I

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 211
    .local v1, "argb":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 211
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 220
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 221
    return-object p0
.end method

.method private static traverseFile(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p0, "traversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "imageFilePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fileFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, "traverseFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 510
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 522
    :cond_0
    return-void

    .line 512
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 513
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lc8/Nao;->traverseFile(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 512
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_3
    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 516
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 518
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static traverseImageFilePath(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "traversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v2, "imageFilePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v3, "traverseFile":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v2

    .line 484
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 485
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    .local v0, "fileFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v4, ".png"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v4, ".bmp"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v4, ".jpeg"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string/jumbo v4, ".gif"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v4, ".jpg"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v4, ".tiff"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-static {p0, v2, v0}, Lc8/Nao;->traverseFile(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static viewConvertBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 330
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 333
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 335
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 336
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 341
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 342
    const-string/jumbo v4, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed getViewBitmap("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    .line 345
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 348
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 349
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 362
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 363
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 365
    .local v9, "scaleWidht":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 366
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 367
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 368
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
