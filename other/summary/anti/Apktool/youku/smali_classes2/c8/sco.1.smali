.class public Lc8/sco;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSampleSize(IIIII)I
    .locals 10
    .param p0, "bitmapW"    # I
    .param p1, "bitmapH"    # I
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 139
    if-eqz p4, :cond_0

    const/16 v3, 0xb4

    if-ne p4, v3, :cond_1

    .line 140
    :cond_0
    int-to-double v4, p0

    .line 141
    .local v4, "w":D
    int-to-double v0, p1

    .line 147
    .local v0, "h":D
    :goto_0
    int-to-double v6, p2

    div-double v6, v4, v6

    int-to-double v8, p3

    div-double v8, v0, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 148
    .local v2, "sampleSize":I
    return v2

    .line 143
    .end local v0    # "h":D
    .end local v2    # "sampleSize":I
    .end local v4    # "w":D
    :cond_1
    int-to-double v4, p1

    .line 144
    .restart local v4    # "w":D
    int-to-double v0, p0

    .restart local v0    # "h":D
    goto :goto_0
.end method

.method public static decode(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I

    .prologue
    .line 29
    invoke-static/range {p0 .. p1}, Lc8/sco;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 30
    .local v13, "stream":Ljava/io/InputStream;
    if-nez v13, :cond_1

    .line 31
    const/4 v9, 0x0

    .line 55
    :cond_0
    :goto_0
    return-object v9

    .line 34
    :cond_1
    invoke-static/range {p0 .. p1}, Lc8/tco;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 36
    .local v7, "orientation":I
    const/4 v9, 0x0

    .line 37
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 38
    .local v11, "imageSize":[I
    invoke-static {v13, v11}, Lc8/sco;->decodeImageBounds(Ljava/io/InputStream;[I)Z

    move-result v10

    .line 39
    .local v10, "decoded":Z
    invoke-static {v13}, Lc8/vco;->closeSilently(Ljava/io/Closeable;)V

    .line 41
    if-eqz v10, :cond_0

    .line 43
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 44
    :cond_2
    const/4 v12, 0x1

    .line 49
    .local v12, "sampleSize":I
    :goto_1
    invoke-static {}, Lc8/sco;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 50
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput v12, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v2 .. v8}, Lc8/sco;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 46
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "sampleSize":I
    :cond_3
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    move/from16 v0, p2

    int-to-double v14, v0

    const-wide v16, 0x3ff3333333333333L    # 1.2

    mul-double v14, v14, v16

    double-to-int v5, v14

    move/from16 v0, p3

    int-to-double v14, v0

    const-wide v16, 0x3ff3333333333333L    # 1.2

    mul-double v14, v14, v16

    double-to-int v6, v14

    invoke-static {v2, v3, v5, v6, v7}, Lc8/sco;->computeSampleSize(IIIII)I

    move-result v12

    .restart local v12    # "sampleSize":I
    goto :goto_1
.end method

.method static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "orientation"    # I
    .param p6, "pass"    # I

    .prologue
    .line 61
    const/4 v8, 0x0

    .line 65
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0x14

    move/from16 v0, p6

    if-le v0, v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lc8/sco;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 70
    .local v10, "stream":Ljava/io/InputStream;
    if-nez v10, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v10, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 75
    invoke-static {v10}, Lc8/vco;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    if-eqz v8, :cond_3

    .line 78
    if-lez p3, :cond_3

    if-lez p4, :cond_3

    .line 79
    move/from16 v0, p5

    invoke-static {v8, p3, p4, v0}, Lc8/rco;->resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 80
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    if-eq v8, v9, :cond_2

    .line 81
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_2
    move-object v8, v9

    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    move-object v1, v8

    .line 95
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    invoke-static {v10}, Lc8/vco;->closeSilently(Ljava/io/Closeable;)V

    .line 89
    if-eqz v8, :cond_4

    .line 90
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_4
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    add-int/lit8 v7, p6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lc8/sco;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method public static decodeImageBounds(Ljava/io/InputStream;[I)Z
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outSize"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    .line 128
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p1, v2

    .line 129
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, p1, v1

    .line 132
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 233
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 234
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 235
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 237
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 238
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 239
    return-object v0
.end method

.method static openContentInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 120
    :cond_0
    :goto_0
    return-object v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 110
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    const-string/jumbo v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/sco;->openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_3
    const-string/jumbo v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-static {p0, p1}, Lc8/sco;->openContentInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_4
    const-string/jumbo v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_5
    invoke-static {p1}, Lc8/sco;->openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method static openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 192
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .local v3, "finalUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 216
    .local v0, "code":I
    const/16 v5, 0x12d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x12f

    if-ne v0, v5, :cond_1

    .line 218
    :cond_0
    const-string/jumbo v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "newLocation":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lc8/sco;->openRemoteInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 226
    .end local v0    # "code":I
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "finalUrl":Ljava/net/URL;
    .end local v4    # "newLocation":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v5, v6

    .line 195
    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "finalUrl":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 203
    goto :goto_0

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 212
    goto :goto_0

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "code":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 224
    :catch_3
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 226
    goto :goto_0
.end method
