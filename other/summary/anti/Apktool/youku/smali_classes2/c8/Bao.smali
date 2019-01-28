.class public Lc8/Bao;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapRoom(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "nagetive"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 64
    .local v5, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 65
    .local v4, "srcHeight":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float v3, v8, v9

    .line 66
    .local v3, "scaleWidth":F
    int-to-float v8, p2

    int-to-float v9, v4

    div-float v2, v8, v9

    .line 67
    .local v2, "scaleHeight":F
    cmpg-float v8, v3, v2

    if-gez v8, :cond_3

    move v0, v6

    .line 68
    .local v0, "compare":Z
    :goto_0
    if-eqz p3, :cond_0

    if-nez v0, :cond_4

    move v0, v6

    .line 69
    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    .line 70
    :goto_2
    if-eqz v0, :cond_1

    move v2, v3

    .line 71
    :cond_1
    if-nez v0, :cond_2

    int-to-float v7, v5

    mul-float/2addr v7, v3

    float-to-int p1, v7

    .end local p1    # "newWidth":I
    :cond_2
    if-nez v0, :cond_6

    .end local p2    # "newHeight":I
    :goto_3
    invoke-static {p0, p1, p2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    .end local v1    # "resizedBitmap":Landroid/graphics/Bitmap;
    :goto_4
    return-object v1

    .end local v0    # "compare":Z
    .restart local p1    # "newWidth":I
    .restart local p2    # "newHeight":I
    :cond_3
    move v0, v7

    .line 67
    goto :goto_0

    .restart local v0    # "compare":Z
    :cond_4
    move v0, v7

    .line 68
    goto :goto_1

    :cond_5
    move v3, v2

    .line 69
    goto :goto_2

    .line 71
    .end local p1    # "newWidth":I
    :cond_6
    int-to-float v7, v4

    mul-float/2addr v7, v2

    float-to-int p2, v7

    goto :goto_3

    .end local p2    # "newHeight":I
    .restart local v1    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object v1, p0

    .line 77
    goto :goto_4
.end method

.method public static bitmapRoomBoth(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 106
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    .end local v0    # "resizedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 273
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 277
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 278
    const-string/jumbo v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, "orientation":I
    if-eq v3, v5, :cond_0

    .line 281
    packed-switch v3, :pswitch_data_0

    .line 296
    .end local v3    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 283
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 284
    goto :goto_1

    .line 286
    :pswitch_2
    const/16 v0, 0xb4

    .line 287
    goto :goto_1

    .line 289
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .end local v3    # "orientation":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 281
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

.method public static readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 171
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 175
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static readBitmap(Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sampleSize"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 147
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 152
    :cond_0
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 153
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 160
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "myCaptureFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 224
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    const-string/jumbo v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/abo;->toUpperCase(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "fileSuffix":Ljava/lang/String;
    invoke-static {v3}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "PNG"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 234
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    const/4 v5, 0x1

    .line 240
    if-eqz v1, :cond_1

    .line 242
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v0, v1

    .line 244
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fileSuffix":Ljava/lang/String;
    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_2
    return v5

    .line 229
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fileSuffix":Ljava/lang/String;
    .restart local v4    # "myCaptureFile":Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-static {v3}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "WEBP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 236
    .end local v3    # "fileSuffix":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 237
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    const/4 v5, 0x0

    .line 240
    if-eqz v0, :cond_2

    .line 242
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    .line 232
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fileSuffix":Ljava/lang/String;
    .restart local v4    # "myCaptureFile":Ljava/io/File;
    :cond_4
    :try_start_6
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 240
    .end local v3    # "fileSuffix":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_4
    if-eqz v0, :cond_5

    .line 242
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 244
    :cond_5
    :goto_5
    throw v5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fileSuffix":Ljava/lang/String;
    .restart local v4    # "myCaptureFile":Ljava/io/File;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fileSuffix":Ljava/lang/String;
    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 240
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 236
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method public static saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 188
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :goto_0
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/abo;->toUpperCase(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "fileSuffix":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileSuffix::->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    invoke-static {v3}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "PNG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :goto_3
    return-void

    .line 184
    .end local v3    # "fileSuffix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileSuffix":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "WEBP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 195
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 37
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 38
    .local v2, "srcHeight":I
    int-to-float v4, p1

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 40
    .local v1, "scaleWidth":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 49
    .end local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 47
    goto :goto_0
.end method

.method public static scaleMidCutBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 82
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lc8/Bao;->bitmapRoom(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "resizedBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, p2, :cond_2

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 90
    :cond_2
    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    throw v1
.end method

.method public static writeBitmapOnBitMap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "back"    # Landroid/graphics/Bitmap;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 126
    invoke-static {p0, p2, p3}, Lc8/Bao;->bitmapRoomBoth(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    :goto_0
    return-object v4

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 133
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 134
    .local v3, "y":F
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 135
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 136
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "JPG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 258
    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 259
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 261
    return-void

    .line 257
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method
