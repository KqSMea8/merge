.class public Lc8/SH;
.super Ljava/lang/Object;
.source "ImageTool.java"


# static fields
.field private static final MAX_LENGTH:I = 0x2800


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    .line 202
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 206
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readRotationDegree(Ljava/lang/String;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "degree":I
    if-nez p0, :cond_0

    move v1, v0

    .line 260
    .end local v0    # "degree":I
    .local v1, "degree":I
    :goto_0
    return v1

    .line 244
    .end local v1    # "degree":I
    .restart local v0    # "degree":I
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 246
    .local v4, "orientation":I
    packed-switch v4, :pswitch_data_0

    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "orientation":I
    :goto_1
    :pswitch_0
    move v1, v0

    .line 260
    .end local v0    # "degree":I
    .restart local v1    # "degree":I
    goto :goto_0

    .line 248
    .end local v1    # "degree":I
    .restart local v0    # "degree":I
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 249
    goto :goto_1

    .line 251
    :pswitch_2
    const/16 v0, 0xb4

    .line 252
    goto :goto_1

    .line 254
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 257
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "orientation":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .prologue
    .line 125
    const/16 v3, 0x2800

    if-le p1, v3, :cond_0

    .line 126
    const/16 p1, 0x2800

    .line 128
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 133
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v4, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 134
    .local v2, "temp":I
    :goto_0
    int-to-float v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 135
    .local v0, "be":I
    if-gtz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    .line 137
    :cond_1
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 133
    .end local v0    # "be":I
    .end local v2    # "temp":I
    :cond_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    .line 267
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 268
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 271
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 272
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 273
    move-object p0, v7

    .line 279
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 48
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v0

    new-instance v1, Lc8/RH;

    invoke-direct {v1, p0, p2}, Lc8/RH;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 115
    return-void
.end method

.method public static toDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imageStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 215
    if-nez p1, :cond_0

    .line 230
    :goto_0
    return-object v4

    .line 219
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 220
    .local v0, "b":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 223
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    goto :goto_0

    .line 224
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 230
    .end local v0    # "b":[B
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 149
    if-nez p0, :cond_0

    .line 150
    const/4 v9, 0x0

    .line 161
    :goto_0
    return-object v9

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 152
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 153
    .local v4, "h":I
    if-le v3, v4, :cond_1

    move v8, v3

    .line 154
    .local v8, "temp":I
    :goto_1
    if-le v8, p1, :cond_2

    .line 155
    int-to-float v0, p1

    int-to-float v2, v8

    div-float v7, v0, v2

    .line 156
    .local v7, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 157
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 158
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 159
    .local v9, "zoomedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    .end local v8    # "temp":I
    .end local v9    # "zoomedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    move v8, v4

    .line 153
    goto :goto_1

    .restart local v8    # "temp":I
    :cond_2
    move-object v9, p0

    .line 161
    goto :goto_0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxLongSide"    # J
    .param p3, "maxShortSide"    # J

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 169
    const/4 p0, 0x0

    .line 190
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 170
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 171
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 174
    .local v6, "h":I
    if-le v5, v6, :cond_3

    .line 175
    move v10, v5

    .line 176
    .local v10, "longSide":I
    move v13, v6

    .line 181
    .local v13, "shortSide":I
    :goto_1
    int-to-long v2, v10

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2

    int-to-long v2, v13

    cmp-long v2, v2, p3

    if-lez v2, :cond_0

    .line 182
    :cond_2
    move-wide/from16 v0, p1

    long-to-float v2, v0

    int-to-float v3, v10

    div-float v9, v2, v3

    .line 183
    .local v9, "longScale":F
    move-wide/from16 v0, p3

    long-to-float v2, v0

    int-to-float v3, v13

    div-float v12, v2, v3

    .line 184
    .local v12, "shortScale":F
    cmpg-float v2, v9, v12

    if-gez v2, :cond_4

    move v11, v9

    .line 185
    .local v11, "scale":F
    :goto_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 186
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, "zoomedBitmap":Landroid/graphics/Bitmap;
    move-object p0, v14

    .line 188
    goto :goto_0

    .line 178
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "longScale":F
    .end local v10    # "longSide":I
    .end local v11    # "scale":F
    .end local v12    # "shortScale":F
    .end local v13    # "shortSide":I
    .end local v14    # "zoomedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    move v10, v6

    .line 179
    .restart local v10    # "longSide":I
    move v13, v5

    .restart local v13    # "shortSide":I
    goto :goto_1

    .restart local v9    # "longScale":F
    .restart local v12    # "shortScale":F
    :cond_4
    move v11, v12

    .line 184
    goto :goto_2
.end method
