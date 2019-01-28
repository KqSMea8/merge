.class public Lc8/yxe;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final END_MP_BOUNDARY:Ljava/lang/String;

.field private static final MP_BOUNDARY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HttpManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "weibosdkcore"

    invoke-static {v0}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lc8/yxe;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/yxe;->BOUNDARY:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/yxe;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/yxe;->MP_BOUNDARY:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/yxe;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/yxe;->END_MP_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParams(Ljava/io/OutputStream;Lc8/Fxe;)V
    .locals 12
    .param p0, "baos"    # Ljava/io/OutputStream;
    .param p1, "params"    # Lc8/Fxe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p1}, Lc8/Fxe;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 328
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 329
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 330
    .local v8, "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 332
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    sget-object v10, Lc8/yxe;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"\r\n\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1, v4}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v9, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 342
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 344
    .restart local v8    # "value":Ljava/lang/Object;
    instance-of v10, v8, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_3

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Lc8/yxe;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 351
    move-object v0, v8

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 352
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 354
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 356
    .local v2, "bytes":[B
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 357
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 358
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "bytes":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    instance-of v10, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v10, :cond_2

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Lc8/yxe;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 365
    move-object v0, v8

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v7, v0

    .line 366
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 367
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_1

    .line 371
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lc8/yxe;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    return-void
.end method

.method private static native calcOauthSignNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 248
    const-class v19, Lc8/yxe;

    monitor-enter v19

    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v10, "savePathDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 250
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 252
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v4, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v4, "filePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 312
    :goto_0
    monitor-exit v19

    return-object v18

    .line 257
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 258
    const-string/jumbo v18, ""

    goto :goto_0

    .line 260
    :cond_2
    const-wide/16 v14, 0x0

    .line 261
    .local v14, "tempFileLength":J
    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "_temp"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v11, "tempFile":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 264
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    const v18, 0x493e0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 265
    const v18, 0x493e0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    const-string/jumbo v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 272
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 276
    :goto_2
    const-string/jumbo v18, "RANGE"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "bytes="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-wide/16 v16, 0x0

    .line 278
    .local v16, "totalLength":J
    const-wide/16 v12, 0x0

    .line 279
    .local v12, "startPosition":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 280
    .local v2, "connectCode":I
    const/16 v18, 0xce

    move/from16 v0, v18

    if-eq v2, v0, :cond_3

    .line 283
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    .line 285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 292
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 293
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v18, "rw"

    move-object/from16 v0, v18

    invoke-direct {v3, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v3, "content":Ljava/io/RandomAccessFile;
    invoke-virtual {v3, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 295
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v9, v0, [B

    .line 297
    .local v9, "sBuffer":[B
    :goto_3
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "readBytes":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_6

    .line 298
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v9, v0, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .end local v2    # "connectCode":I
    .end local v3    # "content":Ljava/io/RandomAccessFile;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "readBytes":I
    .end local v9    # "sBuffer":[B
    .end local v12    # "startPosition":J
    .end local v16    # "totalLength":J
    :catch_0
    move-exception v18

    .line 312
    :goto_4
    :try_start_4
    const-string/jumbo v18, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 274
    :cond_4
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 248
    .end local v4    # "filePath":Ljava/io/File;
    .end local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v10    # "savePathDir":Ljava/io/File;
    .end local v11    # "tempFile":Ljava/io/File;
    .end local v14    # "tempFileLength":J
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 288
    .restart local v2    # "connectCode":I
    .restart local v4    # "filePath":Ljava/io/File;
    .restart local v5    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v10    # "savePathDir":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    .restart local v12    # "startPosition":J
    .restart local v14    # "tempFileLength":J
    .restart local v16    # "totalLength":J
    :cond_5
    :try_start_6
    invoke-static {v5}, Lc8/yxe;->readConnectResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "result":Ljava/lang/String;
    new-instance v18, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v2}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v18

    .line 300
    .end local v8    # "result":Ljava/lang/String;
    .restart local v3    # "content":Ljava/io/RandomAccessFile;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "readBytes":I
    .restart local v9    # "sBuffer":[B
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 301
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 303
    const-wide/16 v20, 0x0

    cmp-long v18, v16, v20

    if-eqz v18, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v18, v20, v16

    if-gez v18, :cond_8

    .line 304
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 306
    :cond_8
    invoke-virtual {v11, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v18

    goto/16 :goto_0

    .end local v2    # "connectCode":I
    .end local v3    # "content":Ljava/io/RandomAccessFile;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "readBytes":I
    .end local v9    # "sBuffer":[B
    .end local v12    # "startPosition":J
    .end local v16    # "totalLength":J
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method public static getBoundry()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "t":I
    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_2

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 385
    .local v2, "time":J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 386
    long-to-int v4, v2

    int-to-char v4, v4

    rem-int/lit8 v4, v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 383
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 388
    const-wide/16 v4, 0x41

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 390
    :cond_1
    const-wide/16 v4, 0x61

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 393
    .end local v2    # "time":J
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getOauthSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "part1":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p4}, Lc8/yxe;->calcOauthSignNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 398
    .local v0, "timestamp":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static openRedirectUrl4LocationUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;

    .prologue
    .line 217
    const-string/jumbo v3, "GET"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lc8/Fxe;->encodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1, p0}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 223
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_0
    const-string/jumbo v1, ""

    .line 225
    .local v1, "redirectUrl":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 227
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 228
    .local v2, "statusCode":I
    const/16 v3, 0x12e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_3

    .line 229
    :cond_0
    const-string/jumbo v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    .end local v2    # "statusCode":I
    :cond_1
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v1    # "redirectUrl":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p0}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .restart local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 231
    .restart local v1    # "redirectUrl":Ljava/lang/String;
    .restart local v2    # "statusCode":I
    :cond_3
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 232
    move-object v1, p1

    goto :goto_1

    .end local v2    # "statusCode":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lc8/yxe;->requestHttpExecute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "HttpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method private static readConnectResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 130
    .local v1, "content":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x2000

    :try_start_0
    new-array v0, v7, [B

    .line 131
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 132
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v1    # "content":Ljava/io/ByteArrayOutputStream;
    .local v2, "content":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readBytes":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 139
    .end local v5    # "readBytes":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 140
    .end local v0    # "buffer":[B
    .end local v2    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "content":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    new-instance v7, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v7, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 143
    :goto_2
    if-eqz v4, :cond_0

    .line 144
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    :cond_1
    :goto_4
    throw v7

    .line 136
    .end local v1    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "readBytes":I
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    .local v6, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 144
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 148
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 149
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 154
    :cond_4
    :goto_6
    return-object v6

    :catch_1
    move-exception v7

    goto :goto_5

    .line 153
    :catch_2
    move-exception v7

    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v2    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "readBytes":I
    .end local v6    # "result":Ljava/lang/String;
    .restart local v1    # "content":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    goto :goto_4

    .line 142
    .end local v1    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "content":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "content":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 139
    .end local v0    # "buffer":[B
    :catch_5
    move-exception v3

    goto :goto_1
.end method

.method private static requestHttpExecute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0, p3}, Lc8/yxe;->setHttpCommonParam(Landroid/content/Context;Lc8/Fxe;)V

    .line 74
    const-string/jumbo v6, "GET"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lc8/Fxe;->encodeUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1, p0}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 77
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v6, "GET"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 78
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 80
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 101
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 103
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    .line 104
    invoke-static {v2}, Lc8/yxe;->readConnectResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "response":Ljava/lang/String;
    new-instance v6, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    invoke-direct {v6, v4, v5}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    new-instance v6, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v6, v1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    throw v6

    .line 82
    :cond_0
    :try_start_2
    invoke-static {p1, p0}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 83
    .restart local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 85
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 87
    invoke-virtual {p3}, Lc8/Fxe;->hasBinaryData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-static {v0, p3}, Lc8/yxe;->buildParams(Ljava/io/OutputStream;Lc8/Fxe;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_0

    .line 93
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p3}, Lc8/Fxe;->encodeUrl()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "postParam":Ljava/lang/String;
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 96
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 97
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_0

    .line 107
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "postParam":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_2
    invoke-static {v2}, Lc8/yxe;->readConnectResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 115
    .restart local v4    # "response":Ljava/lang/String;
    return-object v4
.end method

.method private static setHttpCommonParam(Landroid/content/Context;Lc8/Fxe;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lc8/Fxe;

    .prologue
    .line 170
    const-string/jumbo v1, ""

    .line 171
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Fxe;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 172
    invoke-virtual {p1}, Lc8/Fxe;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    const-string/jumbo v7, "aid"

    invoke-virtual {p1, v7, v1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {}, Lc8/yxe;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "timestamp":Ljava/lang/String;
    const-string/jumbo v7, "oauth_timestamp"

    invoke-virtual {p1, v7, v5}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v6, ""

    .line 186
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v7, "access_token"

    invoke-virtual {p1, v7}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "accessToken":Ljava/lang/Object;
    const-string/jumbo v7, "refresh_token"

    invoke-virtual {p1, v7}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "refreshToken":Ljava/lang/Object;
    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Lc8/Fxe;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 190
    .local v3, "phone":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v6, v0

    .line 192
    check-cast v6, Ljava/lang/String;

    .line 202
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lc8/Fxe;->getAppKey()Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-static {p0, v1, v6, v7, v5}, Lc8/yxe;->getOauthSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "oauthSign":Ljava/lang/String;
    const-string/jumbo v7, "oauth_sign"

    invoke-virtual {p1, v7, v2}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 194
    .end local v2    # "oauthSign":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v6, v4

    .line 196
    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 197
    :cond_3
    if-eqz v3, :cond_1

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v6, v3

    .line 199
    check-cast v6, Ljava/lang/String;

    goto :goto_0
.end method
