.class public Lc8/DGo;
.super Ljava/lang/Object;
.source "VipBitmapUtils.java"


# static fields
.field private static final DEFAULT_MAX_BM_SIZE:J = 0x3d090L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "baseBM"    # Landroid/graphics/Bitmap;
    .param p1, "frontBM"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 115
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    return-object p0
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 706
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 707
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 708
    const/16 v3, 0x64

    .line 709
    .local v3, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v5, :cond_0

    .line 710
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 711
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 712
    add-int/lit8 v3, v3, -0xa

    goto :goto_0

    .line 714
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 715
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 716
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 223
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 224
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 226
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 227
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 231
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 241
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 226
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 227
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    .line 229
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 227
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 236
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 237
    goto :goto_2

    .line 238
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 241
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lc8/DGo;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 209
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 211
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 212
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    shl-int/lit8 v1, v2, 0x3

    .line 217
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static decodeBitmapOptionsInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, 0x0

    .line 246
    const/4 v9, 0x0

    .line 247
    .local v9, "input":Ljava/io/InputStream;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    .local v11, "opt":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 251
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 252
    const/4 v0, 0x0

    invoke-static {v9, v0, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v9, :cond_0

    .line 287
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 292
    .end local v11    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v11

    .line 254
    .restart local v11    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    move-object v10, v9

    .line 256
    .end local v9    # "input":Ljava/io/InputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .local v10, "input":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, "path":Ljava/lang/String;
    invoke-static {}, Lc8/JGo;->hasICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    :cond_1
    :goto_1
    if-eqz v12, :cond_6

    .line 274
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 276
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 277
    const/4 v0, 0x0

    invoke-static {v9, v0, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    if-eqz v9, :cond_0

    .line 287
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 264
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v10    # "input":Ljava/io/InputStream;
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 265
    .restart local v12    # "path":Ljava/lang/String;
    const-string/jumbo v0, "file:///mnt"

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 266
    const-string/jumbo v0, "file:///mnt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 267
    :cond_3
    const-string/jumbo v0, "file://"

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 268
    const-string/jumbo v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v12

    goto :goto_1

    .line 279
    :catch_2
    move-exception v8

    move-object v9, v10

    .line 280
    .end local v10    # "input":Ljava/io/InputStream;
    .local v8, "e1":Ljava/io/FileNotFoundException;
    .restart local v9    # "input":Ljava/io/InputStream;
    :goto_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 283
    .end local v8    # "e1":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    if-eqz v9, :cond_4

    .line 287
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_4
    move-object v11, v13

    .line 292
    goto/16 :goto_0

    .line 285
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v9, :cond_5

    .line 287
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 289
    :cond_5
    :goto_6
    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "path":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_4

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "path":Ljava/lang/String;
    :catch_5
    move-exception v1

    goto :goto_6

    .line 285
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto :goto_5

    .line 279
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "path":Ljava/lang/String;
    :catch_6
    move-exception v8

    goto :goto_2

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    :cond_6
    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 514
    if-nez p0, :cond_1

    .line 515
    const/4 v1, 0x0

    .line 531
    :cond_0
    :goto_0
    return-object v1

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 520
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 524
    .local v2, "scale":F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 525
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 526
    const/4 v3, 0x0

    invoke-static {v0, p0, p1, p2, v3}, Lc8/DGo;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 528
    .local v1, "miniThumbnail":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    if-eq v1, p0, :cond_0

    .line 529
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 522
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "miniThumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "scale":F
    :cond_2
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2    # "scale":F
    goto :goto_1
.end method

.method public static declared-synchronized getBitmapForView(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-class v4, Lc8/DGo;

    monitor-enter v4

    const/16 v2, 0x1000

    .line 1017
    .local v2, "targetMax":I
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1018
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1019
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1021
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1022
    const/high16 v3, 0x1000000

    invoke-static {v1, v2, v3}, Lc8/DGo;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1023
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1024
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 1025
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1026
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v4

    return-object v0

    .line 1015
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 400
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 402
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 403
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 404
    return-object v0
.end method

.method public static getCardBackgroundImageDataByUri(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v12, 0x19000

    const/16 v8, 0x3c0

    const/4 v10, 0x1

    .line 417
    const/16 v7, 0x64

    invoke-static {p1, p0, v7, v8, v8}, Lc8/DGo;->getResizedImageData(Landroid/content/Context;Landroid/net/Uri;III)[B

    move-result-object v0

    .line 422
    .local v0, "data":[B
    const/16 v5, 0x64

    .line 423
    .local v5, "quality":I
    array-length v2, v0

    .line 424
    .local v2, "len":I
    :cond_0
    int-to-long v8, v2

    cmp-long v7, v8, v12

    if-lez v7, :cond_1

    .line 425
    add-int/lit8 v5, v5, -0x4

    .line 427
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 428
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 429
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 430
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 431
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 432
    .local v6, "sourceBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 434
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v2, v7

    .line 438
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    int-to-long v8, v2

    cmp-long v7, v8, v12

    if-gtz v7, :cond_0

    .line 444
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 448
    .end local v0    # "data":[B
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "sourceBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0

    .line 439
    .restart local v0    # "data":[B
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "sourceBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getCompressedImage(Landroid/content/Context;Landroid/net/Uri;I)[B
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "maxPixels"    # I

    .prologue
    .line 851
    const-class v23, Lc8/DGo;

    monitor-enter v23

    const/4 v8, 0x0

    .line 852
    .local v8, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 854
    .local v10, "os":Ljava/io/ByteArrayOutputStream;
    if-nez p2, :cond_0

    const v4, 0xc3500

    .line 856
    .local v4, "IMAGE_MAX_SIZE":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 858
    .local v16, "uriContent":Ljava/lang/String;
    const-string/jumbo v22, "://"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-gtz v22, :cond_1

    .line 859
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 863
    .local v15, "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 865
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 866
    .local v9, "o":Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 867
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 868
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 869
    const/4 v13, 0x1

    .line 871
    .local v13, "scale":I
    :goto_2
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    mul-int v22, v22, v24

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v13

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    div-double v26, v26, v28

    mul-double v24, v24, v26

    int-to-double v0, v4

    move-wide/from16 v26, v0

    cmpl-double v22, v24, v26

    if-lez v22, :cond_2

    .line 872
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v4    # "IMAGE_MAX_SIZE":I
    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "scale":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriContent":Ljava/lang/String;
    :cond_0
    move/from16 v4, p2

    .line 854
    goto :goto_0

    .line 861
    .restart local v4    # "IMAGE_MAX_SIZE":I
    .restart local v16    # "uriContent":Ljava/lang/String;
    :cond_1
    move-object/from16 v15, p1

    .restart local v15    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 876
    .restart local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "scale":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 877
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v13, v0, :cond_5

    .line 878
    add-int/lit8 v13, v13, -0x1

    .line 881
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 882
    .restart local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    iput v13, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 883
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 885
    .local v5, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 886
    .local v7, "height":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 887
    .local v17, "width":I
    int-to-double v0, v4

    move-wide/from16 v24, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    int-to-double v0, v7

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 888
    .local v20, "y":D
    int-to-double v0, v7

    move-wide/from16 v24, v0

    div-double v24, v20, v24

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v18, v24, v26

    .line 889
    .local v18, "x":D
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v22, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 891
    .local v14, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object v5, v14

    .line 892
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 893
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .local v11, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x55

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 894
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 896
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 897
    .local v12, "ret":[B
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v11

    .line 915
    .end local v7    # "height":I
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "width":I
    .end local v18    # "x":D
    .end local v20    # "y":D
    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_3
    if-eqz v10, :cond_3

    .line 917
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 922
    :cond_3
    :goto_4
    if-eqz v8, :cond_4

    .line 924
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 927
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "ret":[B
    .end local v13    # "scale":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriContent":Ljava/lang/String;
    :cond_4
    :goto_5
    monitor-exit v23

    return-object v12

    .line 899
    .restart local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "scale":I
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriContent":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 900
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 901
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 902
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 904
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .restart local v12    # "ret":[B
    move-object v10, v11

    .line 905
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 908
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "ret":[B
    :catch_0
    move-exception v6

    move-object v10, v11

    .line 909
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "scale":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriContent":Ljava/lang/String;
    .local v6, "e":Ljava/io/IOException;
    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 910
    const/4 v12, 0x0

    .line 915
    if-eqz v10, :cond_6

    .line 917
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 922
    :cond_6
    :goto_7
    if-eqz v8, :cond_4

    .line 924
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 925
    :catch_1
    move-exception v6

    .line 926
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 851
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 918
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "ret":[B
    .restart local v13    # "scale":I
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriContent":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 919
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 925
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 926
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 918
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "ret":[B
    .end local v13    # "scale":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriContent":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 919
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 911
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 912
    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 913
    const/4 v12, 0x0

    .line 915
    if-eqz v10, :cond_7

    .line 917
    :try_start_c
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 922
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_9
    if-eqz v8, :cond_4

    .line 924
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 925
    :catch_6
    move-exception v6

    .line 926
    .local v6, "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 918
    .local v6, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 919
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_9

    .line 915
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    :goto_a
    if-eqz v10, :cond_8

    .line 917
    :try_start_f
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 922
    :cond_8
    :goto_b
    if-eqz v8, :cond_9

    .line 924
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 927
    :cond_9
    :goto_c
    :try_start_11
    throw v22

    .line 918
    :catch_8
    move-exception v6

    .line 919
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 925
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 926
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_c

    .line 915
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "scale":I
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriContent":Ljava/lang/String;
    :catchall_2
    move-exception v22

    move-object v10, v11

    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 911
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v6

    move-object v10, v11

    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 908
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "scale":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriContent":Ljava/lang/String;
    :catch_b
    move-exception v6

    goto :goto_6
.end method

.method public static getCompressedImage(Landroid/content/Context;Ljava/lang/String;I)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxPixels"    # I

    .prologue
    .line 838
    const-string/jumbo v1, "content"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 846
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {p0, v0, p2}, Lc8/DGo;->getCompressedImage(Landroid/content/Context;Landroid/net/Uri;I)[B

    move-result-object v1

    return-object v1

    .line 840
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v1, "file"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 843
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getCompressedImageOptions(Landroid/content/Context;Ljava/io/InputStream;I)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxPixels"    # I

    .prologue
    .line 933
    if-nez p2, :cond_0

    const v0, 0xc3500

    .line 936
    .local v0, "IMAGE_MAX_SIZE":I
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 937
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 938
    const/4 v4, 0x0

    invoke-static {p1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 940
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_1
    const/4 v3, 0x1

    .line 947
    .local v3, "scale":I
    :goto_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    int-to-double v6, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 948
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "IMAGE_MAX_SIZE":I
    .end local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scale":I
    :cond_0
    move v0, p2

    .line 933
    goto :goto_0

    .line 941
    .restart local v0    # "IMAGE_MAX_SIZE":I
    .restart local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 950
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "scale":I
    :cond_1
    return v3
.end method

.method public static declared-synchronized getCompressedImageRet(Landroid/content/Context;ILjava/io/InputStream;I)[B
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "maxPixels"    # I

    .prologue
    .line 955
    const-class v19, Lc8/DGo;

    monitor-enter v19

    const/4 v9, 0x0

    .line 957
    .local v9, "os":Ljava/io/ByteArrayOutputStream;
    if-nez p3, :cond_2

    const v4, 0xc3500

    .line 959
    .local v4, "IMAGE_MAX_SIZE":I
    :goto_0
    :try_start_0
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 962
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 963
    add-int/lit8 p1, p1, -0x1

    .line 966
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 967
    .local v8, "o":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p1

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 968
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 970
    .local v5, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 971
    .local v7, "height":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 972
    .local v13, "width":I
    int-to-double v0, v4

    move-wide/from16 v20, v0

    int-to-double v0, v13

    move-wide/from16 v22, v0

    int-to-double v0, v7

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 973
    .local v16, "y":D
    int-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v20, v16, v20

    int-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v14, v20, v22

    .line 974
    .local v14, "x":D
    double-to-int v0, v14

    move/from16 v18, v0

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 976
    .local v12, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object v5, v12

    .line 977
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 978
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .local v10, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x55

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 979
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 981
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 982
    .local v11, "ret":[B
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v9, v10

    .line 997
    .end local v7    # "height":I
    .end local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "width":I
    .end local v14    # "x":D
    .end local v16    # "y":D
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v9, :cond_0

    .line 999
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    .line 1006
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1009
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "ret":[B
    :cond_1
    :goto_3
    monitor-exit v19

    return-object v11

    .end local v4    # "IMAGE_MAX_SIZE":I
    :cond_2
    move/from16 v4, p3

    .line 957
    goto/16 :goto_0

    .line 984
    .restart local v4    # "IMAGE_MAX_SIZE":I
    :cond_3
    :try_start_4
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 985
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 986
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 987
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 989
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .restart local v11    # "ret":[B
    move-object v9, v10

    .line 990
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 993
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "ret":[B
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 994
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 995
    const/4 v11, 0x0

    .line 997
    if-eqz v9, :cond_4

    .line 999
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1004
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    if-eqz p2, :cond_1

    .line 1006
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1007
    :catch_1
    move-exception v6

    .line 1008
    .local v6, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 955
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 1000
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "ret":[B
    :catch_2
    move-exception v6

    .line 1001
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1007
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 1008
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1000
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "ret":[B
    .local v6, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 1001
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 997
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    :goto_6
    if-eqz v9, :cond_5

    .line 999
    :try_start_b
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1004
    :cond_5
    :goto_7
    if-eqz p2, :cond_6

    .line 1006
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1009
    :cond_6
    :goto_8
    :try_start_d
    throw v18

    .line 1000
    :catch_5
    move-exception v6

    .line 1001
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1007
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 1008
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 997
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v18

    move-object v9, v10

    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 993
    .end local v5    # "b":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v6

    goto :goto_4
.end method

.method public static getFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entireFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 598
    const-string/jumbo v4, "content"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 600
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 601
    .local v1, "imageUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_data"

    aput-object v5, v2, v4

    .local v2, "projection":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 602
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 603
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "_data"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 604
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 605
    new-instance v8, Ljava/io/File;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v8, "imageFile":Ljava/io/File;
    invoke-static {}, Lc8/JGo;->hasICS()Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 614
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 609
    .end local v8    # "imageFile":Ljava/io/File;
    :cond_1
    const-string/jumbo v3, "file"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    new-instance v8, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "imageFile":Ljava/io/File;
    goto :goto_0

    .line 612
    .end local v8    # "imageFile":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "imageFile":Ljava/io/File;
    goto :goto_0
.end method

.method public static getImage(Ljava/lang/String;FF)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "limitW"    # F
    .param p2, "limitH"    # F

    .prologue
    .line 675
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 677
    .local v3, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 678
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 680
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 681
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 682
    .local v4, "w":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 684
    .local v2, "h":I
    const/4 v0, 0x1

    .line 685
    .local v0, "be":I
    if-le v4, v2, :cond_2

    int-to-float v5, v4

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 686
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, p1

    float-to-int v0, v5

    .line 690
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 691
    const/4 v0, 0x1

    .line 692
    :cond_1
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 694
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 696
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 687
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-ge v4, v2, :cond_0

    int-to-float v5, v2

    cmpl-float v5, v5, p2

    if-lez v5, :cond_0

    .line 688
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, p2

    float-to-int v0, v5

    goto :goto_0
.end method

.method public static getImageDataByUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 378
    const/4 v2, 0x0

    .line 381
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 382
    const/4 v3, 0x0

    invoke-static {}, Lc8/DGo;->getBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 388
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 390
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 391
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    if-eqz v2, :cond_0

    .line 390
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 391
    :catch_2
    move-exception v1

    .line 392
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 390
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 393
    :cond_1
    :goto_1
    throw v3

    .line 391
    :catch_3
    move-exception v1

    .line 392
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageDataByUri(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x320

    .line 367
    const/16 v0, 0x64

    invoke-static {p1, p0, v0, v1, v1}, Lc8/DGo;->getResizedImageData(Landroid/content/Context;Landroid/net/Uri;III)[B

    move-result-object v0

    return-object v0
.end method

.method public static getImageLayoutParams(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_3

    .line 1037
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1038
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v1, p2

    invoke-static {p0, v1}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p0, v2}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1048
    .restart local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .line 1039
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1040
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p0, v1}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, p3

    invoke-static {p0, v2}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 1041
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1042
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v1, p2

    invoke-static {p0, v1}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, p3

    invoke-static {p0, v2}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 1045
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, v1}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {p0, v2}, Lc8/FGo;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method public static getImageThumbDataByUri(Landroid/net/Uri;Landroid/content/Context;)[B
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa0

    .line 452
    const/16 v0, 0x64

    invoke-static {p1, p0, v0, v1, v1}, Lc8/DGo;->getResizedImageData(Landroid/content/Context;Landroid/net/Uri;III)[B

    move-result-object v0

    return-object v0
.end method

.method public static getPortraitByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 142
    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 145
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    const/4 v3, 0x0

    .line 142
    if-eqz v1, :cond_0

    .line 144
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 144
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 147
    :cond_1
    :goto_1
    throw v3

    .line 145
    :catch_3
    move-exception v0

    .line 146
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getResizedImageData(Landroid/content/Context;Landroid/net/Uri;III)[B
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "quality"    # I
    .param p3, "widthLimit"    # I
    .param p4, "heightLimit"    # I

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "input":Ljava/io/InputStream;
    invoke-static {p0, p1}, Lc8/DGo;->decodeBitmapOptionsInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 158
    .local v6, "opt":Landroid/graphics/BitmapFactory$Options;
    if-nez v6, :cond_1

    .line 159
    const/4 v12, 0x0

    .line 201
    :cond_0
    :goto_0
    return-object v12

    .line 161
    :cond_1
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 162
    .local v10, "outWidth":I
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 163
    .local v9, "outHeight":I
    const/4 v11, 0x1

    .line 164
    .local v11, "s":I
    :goto_1
    div-int v12, v10, v11

    move/from16 v0, p3

    if-gt v12, v0, :cond_2

    div-int v12, v9, v11

    move/from16 v0, p4

    if-le v12, v0, :cond_3

    .line 165
    :cond_2
    shl-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 168
    :cond_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 175
    const/4 v12, 0x0

    invoke-static {v4, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 176
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p2

    invoke-virtual {v1, v12, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 196
    if-eqz v4, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v12

    move-object v5, v4

    .line 184
    .end local v4    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    :try_start_3
    invoke-static {v4, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 186
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p2

    invoke-virtual {v1, v12, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 196
    if-eqz v4, :cond_0

    .line 198
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 199
    :catch_2
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 191
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    move-object v4, v5

    .line 192
    .end local v5    # "input":Ljava/io/InputStream;
    .local v3, "e1":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/InputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    const/4 v12, 0x0

    .line 196
    if-eqz v4, :cond_0

    .line 198
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 199
    :catch_4
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v4, :cond_4

    .line 198
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 201
    :cond_4
    :goto_4
    throw v12

    .line 199
    :catch_5
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 191
    :catch_6
    move-exception v3

    goto :goto_2
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPx"    # F

    .prologue
    const/4 v9, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 101
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 103
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 105
    const v5, -0xbdbdbe

    .line 106
    .local v5, "roundColor":I
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {v0, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 109
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    return-object v1
.end method

.method public static getScaleddImage(Landroid/content/Context;Landroid/net/Uri;II)[B
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "widthLimit"    # I
    .param p3, "heightLimit"    # I

    .prologue
    const/4 v5, 0x0

    .line 296
    const/4 v3, 0x0

    .line 298
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 299
    const/4 v6, 0x0

    invoke-static {}, Lc8/DGo;->getBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {v0, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 301
    .local v1, "c":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 313
    if-eqz v3, :cond_0

    .line 315
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Bitmap;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v5

    .line 316
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "c":Landroid/graphics/Bitmap;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    if-eqz v3, :cond_0

    .line 315
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 316
    :catch_2
    move-exception v2

    .line 317
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 315
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    :cond_1
    :goto_1
    throw v5

    .line 316
    :catch_3
    move-exception v2

    .line 317
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getThumbBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 408
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 409
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 410
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 411
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 412
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 413
    return-object v0
.end method

.method public static getZoomImage(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)[B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "widthLimit"    # I
    .param p3, "heightLimit"    # I
    .param p4, "isThumbnail"    # Z
    .param p5, "quality"    # I

    .prologue
    .line 41
    const/4 v10, 0x0

    .line 43
    .local v10, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 44
    .local v4, "sourceWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 45
    .local v5, "sourceHeight":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 46
    .local v12, "scale":F
    if-eqz p4, :cond_3

    .line 47
    if-le v4, v5, :cond_2

    .line 48
    int-to-float v1, p2

    int-to-float v2, v4

    div-float v12, v1, v2

    .line 49
    int-to-float v1, v5

    mul-float/2addr v1, v12

    move/from16 v0, p3

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 50
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v12, v1, v2

    .line 70
    :cond_0
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 72
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 73
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v11, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p5

    invoke-virtual {v8, v1, v0, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 82
    if-eqz v10, :cond_1

    .line 84
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    .end local v4    # "sourceWidth":I
    .end local v5    # "sourceHeight":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "scale":F
    :cond_1
    :goto_1
    return-object v1

    .line 53
    .restart local v4    # "sourceWidth":I
    .restart local v5    # "sourceHeight":I
    .restart local v12    # "scale":F
    :cond_2
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v12, v1, v2

    .line 54
    int-to-float v1, v4

    mul-float/2addr v1, v12

    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 55
    int-to-float v1, p2

    int-to-float v2, v4

    div-float v12, v1, v2

    goto :goto_0

    .line 59
    :cond_3
    if-le v4, v5, :cond_4

    .line 60
    if-le v4, p2, :cond_0

    .line 61
    int-to-float v1, p2

    int-to-float v2, v4

    div-float v12, v1, v2

    goto :goto_0

    .line 64
    :cond_4
    move/from16 v0, p3

    if-le v5, v0, :cond_0

    .line 65
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v12, v1, v2

    goto :goto_0

    .line 78
    .end local v4    # "sourceWidth":I
    .end local v5    # "sourceHeight":I
    .end local v12    # "scale":F
    :catch_0
    move-exception v9

    .line 79
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    const/4 v1, 0x0

    .line 82
    if-eqz v10, :cond_1

    .line 84
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    .line 82
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 84
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 86
    :cond_5
    :goto_2
    throw v1

    .restart local v4    # "sourceWidth":I
    .restart local v5    # "sourceHeight":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "scale":F
    :catch_2
    move-exception v2

    goto :goto_1

    .end local v4    # "sourceWidth":I
    .end local v5    # "sourceHeight":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "scale":F
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static imageCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 457
    .local v8, "srcWid":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 458
    .local v7, "srcHei":I
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 459
    .local v3, "destW":I
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 460
    .local v4, "destH":I
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bmPath"    # Ljava/lang/String;

    .prologue
    const-wide/32 v12, 0x3d090

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 620
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 629
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 630
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 631
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 632
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 633
    .local v2, "length":J
    cmp-long v5, v2, v12

    if-lez v5, :cond_2

    .line 634
    div-long v6, v2, v12

    .line 635
    .local v6, "ratio":J
    long-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-long v8, v10

    .line 636
    .local v8, "simpleSize":J
    long-to-int v5, v8

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 638
    :try_start_0
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 640
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    const/4 v0, 0x0

    .line 642
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 643
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "ratio":J
    .end local v8    # "simpleSize":J
    :cond_2
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static loadBitmap([B)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bmByte"    # [B

    .prologue
    const-wide/32 v12, 0x3d090

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 650
    if-eqz p0, :cond_0

    array-length v8, p0

    if-nez v8, :cond_1

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 671
    :goto_0
    return-object v0

    .line 654
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 655
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 656
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 657
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 658
    array-length v8, p0

    int-to-long v2, v8

    .line 659
    .local v2, "length":J
    cmp-long v8, v2, v12

    if-lez v8, :cond_2

    .line 660
    div-long v4, v2, v12

    .line 661
    .local v4, "ratio":J
    long-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v6, v8

    .line 662
    .local v6, "simpleSize":J
    long-to-int v8, v6

    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 664
    const/4 v8, 0x0

    :try_start_0
    array-length v9, p0

    invoke-static {p0, v8, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 666
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    const/4 v0, 0x0

    .line 668
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 669
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "ratio":J
    .end local v6    # "simpleSize":J
    :cond_2
    array-length v8, p0

    invoke-static {p0, v9, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static loadThumbnail(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "videoName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 481
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v10

    const-string/jumbo v0, "_display_name"

    aput-object v0, v2, v11

    .line 482
    .local v2, "proj":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_display_name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 484
    .local v9, "videocursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 486
    .local v7, "curThumb":Landroid/graphics/Bitmap;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 489
    .local v6, "crThumb":Landroid/content/ContentResolver;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 490
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 491
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v3, 0x3

    check-cast v4, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v6, v0, v1, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 495
    .end local v6    # "crThumb":Landroid/content/ContentResolver;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-static {}, Lc8/JGo;->hasICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    if-eqz v9, :cond_1

    .line 497
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_1
    return-object v7
.end method

.method public static rotateImage(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "degrees"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 827
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 828
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 830
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v7

    .line 832
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveBitmapToSDCard(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0}, Lc8/DGo;->saveBitmapToSDCard(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 332
    return-void
.end method

.method public static saveBitmapToSDCard(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageType"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 347
    :goto_0
    const/4 v1, 0x0

    .line 349
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 353
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    const/16 v3, 0x64

    invoke-virtual {p1, p2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 355
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 364
    :goto_3
    return-void

    .line 345
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 350
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 361
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static scaleToAdapterWh(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "limitWidth"    # I
    .param p2, "limitHeight"    # I

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 465
    .local v4, "srcWid":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 466
    .local v3, "srcHei":I
    int-to-float v5, p1

    int-to-float v6, v4

    div-float v2, v5, v6

    .line 467
    .local v2, "scaleW":F
    int-to-float v5, p2

    int-to-float v6, v3

    div-float v1, v5, v6

    .line 468
    .local v1, "scaleH":F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 469
    .local v0, "destScale":F
    int-to-float v5, v4

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v6, v3

    mul-float/2addr v6, v0

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 1059
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1060
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1062
    .local v6, "width":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1063
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1064
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1065
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1066
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1067
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1068
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1069
    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1070
    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v9, 0x0

    .line 725
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 726
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 728
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 729
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 730
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 731
    .local v4, "rectF":Landroid/graphics/RectF;
    int-to-float v5, p1

    .line 732
    .local v5, "roundPx":F
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 733
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 734
    const v6, -0xbdbdbe

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    invoke-virtual {v0, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 736
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 737
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 738
    return-object v1
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "scaleUp"    # Z

    .prologue
    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 536
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 537
    .local v18, "deltaY":I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 541
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 542
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    .local v15, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 545
    .local v17, "deltaXHalf":I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 546
    .local v19, "deltaYHalf":I
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 548
    .local v26, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 549
    .local v21, "dstX":I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 550
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 551
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 593
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v17    # "deltaXHalf":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v26    # "src":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 554
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 555
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 557
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 558
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 560
    .local v27, "viewAspect":F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_5

    .line 561
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 562
    .local v25, "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v25, v3

    if-lez v3, :cond_4

    .line 563
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 577
    :goto_1
    if-eqz p0, :cond_8

    .line 579
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 584
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 585
    .local v23, "dx1":I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 587
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 589
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 590
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 565
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    :cond_4
    const/16 p0, 0x0

    .line 567
    goto :goto_1

    .line 568
    .end local v25    # "scale":F
    :cond_5
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 569
    .restart local v25    # "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v25, v3

    if-lez v3, :cond_7

    .line 570
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 572
    :cond_7
    const/16 p0, 0x0

    goto :goto_1

    .line 581
    :cond_8
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_2
.end method
