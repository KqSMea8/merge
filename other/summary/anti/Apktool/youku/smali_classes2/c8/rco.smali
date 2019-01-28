.class public Lc8/rco;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qco;
    }
.end annotation


# static fields
.field public static final MAX_SZIE:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static bitmapTobytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, "a":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static bitmapTobytesNoCompress(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    .local v0, "a":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static byteToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 419
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 420
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 421
    .local v4, "width":I
    const/4 v3, 0x1

    .line 423
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 425
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 426
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 430
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 432
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static compress(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    .line 201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    div-int/lit16 v9, v9, 0x400

    const/16 v10, 0x400

    if-le v9, v10, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 205
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    .local v5, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 210
    .local v6, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 211
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 212
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 213
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 214
    .local v7, "w":I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 216
    .local v3, "h":I
    const/high16 v4, 0x44480000    # 800.0f

    .line 217
    .local v4, "hh":F
    const/high16 v8, 0x43f00000    # 480.0f

    .line 219
    .local v8, "ww":F
    const/4 v1, 0x1

    .line 220
    .local v1, "be":I
    if-le v7, v3, :cond_3

    int-to-float v9, v7

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    .line 221
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v1, v9

    .line 225
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    const/4 v1, 0x1

    .line 226
    :cond_2
    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 228
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 229
    .restart local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lc8/rco;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 222
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-ge v7, v3, :cond_1

    int-to-float v9, v3

    cmpl-float v9, v9, v4

    if-lez v9, :cond_1

    .line 223
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v4

    float-to-int v1, v9

    goto :goto_0
.end method

.method private static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 237
    const/16 v3, 0x64

    .line 239
    .local v3, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v5, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 241
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 242
    add-int/lit8 v3, v3, -0xa

    goto :goto_0

    .line 246
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 247
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static genRotateBitmap([B)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 134
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bMap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 138
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 139
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 141
    .local v7, "bMapRotate":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    return-object v7
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 158
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 168
    return-object v2

    .line 165
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Lc8/qco;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 97
    new-instance v1, Lc8/qco;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Lc8/qco;-><init>(II)V

    return-object v1
.end method

.method public static getImageCompress(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v4, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 178
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 180
    .local v5, "w":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 182
    .local v2, "h":I
    const/high16 v3, 0x44480000    # 800.0f

    .line 183
    .local v3, "hh":F
    const/high16 v6, 0x43f00000    # 480.0f

    .line 185
    .local v6, "ww":F
    const/4 v0, 0x1

    .line 186
    .local v0, "be":I
    if-le v5, v2, :cond_2

    int-to-float v7, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_2

    .line 187
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v0, v7

    .line 191
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 192
    :cond_1
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 194
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 195
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lc8/rco;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 188
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-ge v5, v2, :cond_0

    int-to-float v7, v2

    cmpl-float v7, v7, v3

    if-lez v7, :cond_0

    .line 189
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v0, v7

    goto :goto_0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v4, 0x0

    .line 69
    .local v4, "rotate":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "imageFile":Ljava/io/File;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 74
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 88
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v4

    .line 76
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "imageFile":Ljava/io/File;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v4, 0x10e

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    const/16 v4, 0xb4

    .line 80
    goto :goto_0

    .line 82
    :pswitch_3
    const/16 v4, 0x5a

    goto :goto_0

    .line 85
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 407
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 408
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 410
    invoke-static {v1, p1, p2}, Lc8/rco;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 411
    .local v0, "inSampleSize":I
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 412
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 413
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 414
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getScaledSize(III)Lc8/qco;
    .locals 8
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "numPixels"    # I

    .prologue
    .line 102
    int-to-float v3, p0

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 104
    .local v0, "ratio":F
    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 105
    .local v1, "scaledHeight":I
    float-to-double v4, v0

    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 108
    .local v2, "scaledWidth":I
    new-instance v3, Lc8/qco;

    invoke-direct {v3, v2, v1}, Lc8/qco;-><init>(II)V

    return-object v3
.end method

.method public static getScreenViewBitmap(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 299
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 311
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/rco;->resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 352
    move v8, p1

    .line 353
    .local v8, "dstWidth":I
    move v7, p2

    .line 354
    .local v7, "dstHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 355
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 357
    .local v4, "srcHeight":I
    const/16 v0, 0x5a

    if-eq p3, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_1

    .line 358
    :cond_0
    move v8, p2

    .line 359
    move v7, p1

    .line 362
    :cond_1
    const/4 v9, 0x0

    .line 364
    .local v9, "needsResize":Z
    if-gt v3, v8, :cond_2

    if-le v4, v7, :cond_6

    .line 365
    :cond_2
    const/4 v9, 0x1

    .line 366
    if-le v3, v4, :cond_5

    if-le v3, v8, :cond_5

    .line 367
    int-to-float v0, v8

    int-to-float v1, v3

    div-float v11, v0, v1

    .line 368
    .local v11, "p":F
    int-to-float v0, v4

    mul-float/2addr v0, v11

    float-to-int v7, v0

    .line 378
    .end local v11    # "p":F
    :goto_0
    if-nez v9, :cond_3

    if-eqz p3, :cond_4

    .line 381
    :cond_3
    if-nez p3, :cond_7

    .line 382
    const/4 v0, 0x1

    invoke-static {p0, v8, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "output":Landroid/graphics/Bitmap;
    :goto_1
    move-object p0, v10

    .line 390
    .end local v10    # "output":Landroid/graphics/Bitmap;
    .end local p0    # "input":Landroid/graphics/Bitmap;
    :cond_4
    return-object p0

    .line 370
    .restart local p0    # "input":Landroid/graphics/Bitmap;
    :cond_5
    int-to-float v0, v7

    int-to-float v1, v4

    div-float v11, v0, v1

    .line 371
    .restart local v11    # "p":F
    int-to-float v0, v3

    mul-float/2addr v0, v11

    float-to-int v8, v0

    goto :goto_0

    .line 374
    .end local v11    # "p":F
    :cond_6
    move v8, v3

    .line 375
    move v7, v4

    goto :goto_0

    .line 384
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 385
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v8

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v7

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 386
    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 387
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "output":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 328
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 329
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 330
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 331
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveBitmap2file(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 12
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 261
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 262
    .local v3, "format":Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x64

    .line 263
    .local v4, "quality":I
    const/4 v5, 0x0

    .line 266
    .local v5, "stream":Ljava/io/OutputStream;
    :try_start_0
    const-string/jumbo v8, "mounted"

    .line 267
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 287
    :goto_0
    return v7

    .line 273
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "SDCardRoot":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 276
    const-string/jumbo v8, "Utils"

    const-string/jumbo v9, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u591f"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v0    # "SDCardRoot":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 287
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    goto :goto_0

    .line 281
    .restart local v0    # "SDCardRoot":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "bitmapFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 283
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "stream":Ljava/io/OutputStream;
    .local v6, "stream":Ljava/io/OutputStream;
    move-object v5, v6

    .line 286
    .end local v6    # "stream":Ljava/io/OutputStream;
    .restart local v5    # "stream":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public printscreen_share(Landroid/view/View;Landroid/app/Activity;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "view1":Landroid/view/View;
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 254
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 257
    return-void
.end method
