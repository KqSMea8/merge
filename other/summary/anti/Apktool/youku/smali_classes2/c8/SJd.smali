.class public Lc8/SJd;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBitmap(Lc8/JId;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lc8/WHd;
    .locals 11
    .param p0, "response"    # Lc8/JId;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/JId;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/widget/ImageView$ScaleType;",
            ")",
            "Lc8/WHd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v9, 0x0

    new-array v3, v9, [B

    .line 73
    .local v3, "data":[B
    :try_start_0
    invoke-virtual {p0}, Lc8/JId;->body()Lc8/KId;

    move-result-object v9

    invoke-virtual {v9}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v9

    invoke-static {v9}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v9

    invoke-interface {v9}, Lc8/AJd;->readByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    :goto_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 80
    iput-object p3, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 81
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v10, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v2, :cond_3

    .line 110
    new-instance v9, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v9, p0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    invoke-static {v9}, Lc8/SJd;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v9

    invoke-static {v9}, Lc8/WHd;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;

    move-result-object v9

    .line 112
    :goto_2
    return-object v9

    .line 74
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v10, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 86
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 88
    .local v0, "actualHeight":I
    invoke-static {p1, p2, v1, v0, p4}, Lc8/SJd;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 90
    .local v6, "desiredWidth":I
    invoke-static {p2, p1, v0, v1, p4}, Lc8/SJd;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 93
    .local v5, "desiredHeight":I
    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {v1, v0, v6, v5}, Lc8/SJd;->findBestSampleSize(IIII)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    const/4 v9, 0x0

    array-length v10, v3

    .line 97
    invoke-static {v3, v9, v10, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 99
    .local v8, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-gt v9, v6, :cond_1

    .line 100
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v9, v5, :cond_2

    .line 101
    :cond_1
    const/4 v9, 0x1

    invoke-static {v8, v6, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 105
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v2, v8

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 112
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v8    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {v2}, Lc8/WHd;->success(Ljava/lang/Object;)Lc8/WHd;

    move-result-object v9

    goto :goto_2
.end method

.method public static findBestSampleSize(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 158
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 159
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 160
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 161
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 162
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    .line 163
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    .line 165
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method public static getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1
    .param p0, "error"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 215
    const-string/jumbo v0, "connectionError"

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorDetail(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 217
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorBody(Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public static getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 237
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    .line 238
    .local v0, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    instance-of v1, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_0

    .line 240
    const-string/jumbo v1, "networkOnMainThreadError"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorDetail(Ljava/lang/String;)V

    .line 244
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 245
    return-object v0

    .line 242
    :cond_0
    const-string/jumbo v1, "connectionError"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorDetail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1
    .param p0, "error"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 231
    const-string/jumbo v0, "parseError"

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorDetail(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorBody(Ljava/lang/String;)V

    .line 233
    return-object p0
.end method

.method public static getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 1
    .param p0, "error"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .param p1, "request"    # Lc8/VHd;
    .param p2, "code"    # I

    .prologue
    .line 223
    invoke-virtual {p1, p0}, Lc8/VHd;->parseNetworkError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object p0

    .line 224
    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 225
    const-string/jumbo v0, "responseFromServerError"

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorDetail(Ljava/lang/String;)V

    .line 226
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    .line 60
    .local v1, "fileNameMap":Ljava/net/FileNameMap;
    invoke-interface {v1, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "contentTypeFor":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "application/octet-stream"

    .line 64
    :cond_0
    return-object v0
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 120
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 153
    .end local p2    # "actualPrimary":I
    :cond_0
    :goto_0
    return p2

    .line 124
    .restart local p2    # "actualPrimary":I
    :cond_1
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_2

    .line 125
    if-eqz p0, :cond_0

    move p2, p0

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    if-nez p0, :cond_3

    .line 132
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 133
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_0

    .line 136
    .end local v0    # "ratio":D
    :cond_3
    if-nez p1, :cond_4

    move p2, p0

    .line 137
    goto :goto_0

    .line 140
    :cond_4
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 141
    .restart local v0    # "ratio":D
    move v2, p0

    .line 143
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_6

    .line 144
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5

    .line 145
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_5
    move p2, v2

    .line 147
    goto :goto_0

    .line 150
    :cond_6
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 151
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_7
    move p2, v2

    .line 153
    goto :goto_0
.end method

.method public static saveFile(Lc8/JId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "response"    # Lc8/JId;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "is":Ljava/io/InputStream;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 173
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 175
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lc8/JId;->body()Lc8/KId;

    move-result-object v8

    invoke-virtual {v8}, Lc8/KId;->byteStream()Ljava/io/InputStream;

    move-result-object v6

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 183
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v7    # "len":I
    :catchall_0
    move-exception v8

    move-object v4, v5

    .line 188
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    :cond_2
    :goto_3
    throw v8

    .line 185
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "len":I
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 197
    :cond_5
    :goto_5
    return-void

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 189
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "len":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 190
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_1
.end method
