.class public Lc8/pgb;
.super Landroid/os/AsyncTask;
.source "LoadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mLimitSize:I

.field private mTargetDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "targetDir"    # Ljava/lang/String;
    .param p4, "limitSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const/16 v0, 0xa0

    iput v0, p0, Lc8/pgb;->mLimitSize:I

    .line 30
    iput-object p1, p0, Lc8/pgb;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lc8/pgb;->mImageView:Landroid/widget/ImageView;

    .line 32
    iput-object p3, p0, Lc8/pgb;->mTargetDir:Ljava/lang/String;

    .line 33
    iput p4, p0, Lc8/pgb;->mLimitSize:I

    .line 34
    return-void
.end method

.method private downloadImage(Ljava/lang/String;)V
    .locals 16
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v7, 0x0

    .line 83
    .local v7, "con":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 84
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 85
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 87
    .local v10, "imageFile":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 89
    const/16 v14, 0x1388

    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v14, 0x3a98

    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 92
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_6

    .line 93
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v11, Ljava/io/File;

    invoke-direct/range {p0 .. p1}, Lc8/pgb;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .end local v10    # "imageFile":Ljava/io/File;
    .local v11, "imageFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v14

    if-nez v14, :cond_0

    .line 97
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    :cond_0
    :goto_0
    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    const/16 v14, 0x400

    :try_start_5
    new-array v1, v14, [B

    .line 106
    .local v1, "b":[B
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    .local v12, "length":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_5

    .line 107
    const/4 v14, 0x0

    invoke-virtual {v6, v1, v14, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 108
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 112
    .end local v1    # "b":[B
    .end local v12    # "length":I
    :catch_0
    move-exception v8

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/File;
    .restart local v10    # "imageFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 113
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    if-eqz v2, :cond_1

    .line 117
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_1
    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 122
    :cond_2
    if-eqz v7, :cond_3

    .line 123
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 129
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    .line 130
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lc8/pgb;->mLimitSize:I

    invoke-static {v14, v15}, Lc8/ogb;->decodeSampledBitmapFromResource(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 132
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 133
    invoke-static/range {p1 .. p1}, Lc8/qgb;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lc8/ogb;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 136
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    return-void

    .line 98
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "imageFile":Ljava/io/File;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "imageFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 99
    .local v8, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    .line 112
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/File;
    .restart local v10    # "imageFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "imageFile":Ljava/io/File;
    .restart local v1    # "b":[B
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "imageFile":Ljava/io/File;
    .restart local v12    # "length":I
    :cond_5
    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/File;
    .restart local v10    # "imageFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 116
    .end local v1    # "b":[B
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    :cond_6
    if-eqz v2, :cond_7

    .line 117
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_7
    if-eqz v5, :cond_8

    .line 120
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 122
    :cond_8
    if-eqz v7, :cond_3

    .line 123
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 125
    :catch_3
    move-exception v8

    .line 126
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 125
    .end local v13    # "url":Ljava/net/URL;
    .local v8, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 126
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 115
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 116
    :goto_4
    if-eqz v2, :cond_9

    .line 117
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_9
    if-eqz v5, :cond_a

    .line 120
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 122
    :cond_a
    if-eqz v7, :cond_b

    .line 123
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 127
    :cond_b
    :goto_5
    throw v14

    .line 125
    :catch_5
    move-exception v8

    .line 126
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 115
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "imageFile":Ljava/io/File;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "imageFile":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/File;
    .restart local v10    # "imageFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "imageFile":Ljava/io/File;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "imageFile":Ljava/io/File;
    :catchall_3
    move-exception v14

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/File;
    .restart local v10    # "imageFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 112
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "url":Ljava/net/URL;
    :catch_6
    move-exception v8

    goto/16 :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_7
    move-exception v8

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/pgb;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/pgb;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lc8/qgb;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "imagePath":Ljava/lang/String;
    return-object v2
.end method

.method private loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lc8/pgb;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "imgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lc8/pgb;->downloadImage(Ljava/lang/String;)V

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lc8/pgb;->mLimitSize:I

    invoke-static {v2, v3}, Lc8/ogb;->decodeSampledBitmapFromResource(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 67
    invoke-static {p1}, Lc8/qgb;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc8/ogb;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 71
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lc8/pgb;->mImageUrl:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lc8/pgb;->mImageUrl:Ljava/lang/String;

    invoke-static {v1}, Lc8/qgb;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/ogb;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "imgBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 42
    iget-object v1, p0, Lc8/pgb;->mImageUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lc8/pgb;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/pgb;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lc8/pgb;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lc8/pgb;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lc8/pgb;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
