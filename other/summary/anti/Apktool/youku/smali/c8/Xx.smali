.class public Lc8/Xx;
.super Ljava/lang/Object;
.source "AtlasBundleInfoManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AtlasBundleInfoManager"

.field private static sManager:Lc8/Xx;


# instance fields
.field private mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;


# direct methods
.method private constructor <init>()V
    .locals 13

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v9, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-nez v9, :cond_5

    .line 257
    const-string/jumbo v9, "bundleInfo"

    invoke-static {v9}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getFrameworkProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "bundleInfoStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 259
    const-string/jumbo v9, "compressInfo"

    invoke-static {v9}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getFrameworkProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "compressInfo":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "compressInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 261
    invoke-static {v0}, Lc8/Xx;->uncompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string/jumbo v9, "AtlasBundleInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "the result of decoded info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    if-nez v0, :cond_1

    .line 265
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "bundleinfo is invalid"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 267
    :cond_1
    const/4 v8, 0x2

    .line 268
    .local v8, "retryCount":I
    const/4 v3, 0x0

    .line 272
    .local v3, "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/Wx;->generateBundleInfo()Landroid/taobao/atlas/bundleInfo/BundleListing;

    move-result-object v9

    iput-object v9, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    .line 273
    const-string/jumbo v9, "AtlasBundleInfoManager"

    const-string/jumbo v10, "generate info from generator"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lc8/Xx;->updateBundleListingWithExtraInfo()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    :goto_1
    if-eqz v3, :cond_5

    .line 295
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v2, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "InitBundleInfoByVersionIfNeed"

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v9

    const-string/jumbo v10, "container_bundleinfo_parse_fail"

    invoke-virtual {v9, v10, v2, v3}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 298
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "parse bundleinfo failed"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 274
    .end local v2    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 275
    .local v5, "exception":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    invoke-static {v0}, Lc8/Zx;->parseArray(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 277
    .local v6, "infos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    if-nez v6, :cond_3

    .line 278
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 279
    .restart local v2    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "InitBundleInfoByVersionIfNeed"

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v9

    const-string/jumbo v10, "container_bundleinfo_parse_fail"

    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "the infos is null!"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v2, v11}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 282
    .end local v2    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v7, Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-direct {v7}, Landroid/taobao/atlas/bundleInfo/BundleListing;-><init>()V

    .line 283
    .local v7, "listing":Landroid/taobao/atlas/bundleInfo/BundleListing;
    invoke-virtual {v7, v6}, Landroid/taobao/atlas/bundleInfo/BundleListing;->setBundles(Ljava/util/LinkedHashMap;)V

    .line 284
    iput-object v7, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 288
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v6    # "infos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    .end local v7    # "listing":Landroid/taobao/atlas/bundleInfo/BundleListing;
    :catch_1
    move-exception v4

    .line 290
    .local v4, "error":Ljava/lang/Throwable;
    move-object v3, v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    add-int/lit8 v8, v8, -0x1

    .line 293
    if-gtz v8, :cond_2

    goto :goto_1

    .line 301
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "error":Ljava/lang/Throwable;
    .end local v8    # "retryCount":I
    :cond_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "read bundleInfo failed"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 304
    .end local v0    # "bundleInfoStr":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private getFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 435
    .local v3, "inputReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v5, ""

    .line 438
    .local v5, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 445
    :cond_0
    if-eqz v1, :cond_1

    .line 447
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v0, v1

    .line 443
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "inputReader":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-object v5

    .line 448
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 441
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputReader":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    const/4 v5, 0x0

    .line 445
    if-eqz v0, :cond_2

    .line 447
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 448
    :catch_2
    move-exception v2

    .line 449
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 445
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_3

    .line 447
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 450
    :cond_3
    :goto_5
    throw v6

    .line 448
    :catch_3
    move-exception v2

    .line 449
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 445
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 441
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static declared-synchronized instance()Lc8/Xx;
    .locals 2

    .prologue
    .line 249
    const-class v1, Lc8/Xx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Xx;->sManager:Lc8/Xx;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lc8/Xx;

    invoke-direct {v0}, Lc8/Xx;-><init>()V

    sput-object v0, Lc8/Xx;->sManager:Lc8/Xx;

    .line 252
    :cond_0
    sget-object v0, Lc8/Xx;->sManager:Lc8/Xx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uncompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "base64EncodeStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 411
    .local v1, "gzipArray":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 412
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 414
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v5, "ungzip":Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 417
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    if-ltz v3, :cond_0

    .line 418
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v3    # "n":I
    .end local v5    # "ungzip":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v6

    .line 424
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 425
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 428
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .line 420
    .restart local v0    # "buffer":[B
    .restart local v3    # "n":I
    .restart local v5    # "ungzip":Ljava/util/zip/GZIPInputStream;
    :cond_0
    :try_start_2
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 425
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    .line 423
    .end local v0    # "buffer":[B
    .end local v3    # "n":I
    .end local v5    # "ungzip":Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v6

    .line 424
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 425
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 426
    :goto_3
    throw v6

    :catch_2
    move-exception v7

    goto :goto_3

    .line 427
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private updateBundleListingWithExtraInfo()V
    .locals 11

    .prologue
    .line 385
    iget-object v7, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v7}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v7

    if-nez v7, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string/jumbo v7, "%s%s.json"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "bundleInfo-"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v10}, Lc8/bB;->getPackageInfo(Landroid/app/Application;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "fileName":Ljava/lang/String;
    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-direct {p0, v3, v7}, Lc8/Xx;->getFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "extraInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 392
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 394
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 395
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 396
    .local v5, "jb":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v4

    .line 397
    .local v4, "info":Lc8/Yx;
    const-string/jumbo v7, "size"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v4, Lc8/Yx;->size:J

    .line 398
    const-string/jumbo v7, "md5"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/Yx;->md5:Ljava/lang/String;

    .line 399
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/Yx;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "info":Lc8/Yx;
    .end local v5    # "jb":Lorg/json/JSONObject;
    .end local v6    # "x":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v4, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v4}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v3

    .line 347
    :cond_1
    iget-object v4, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v4}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 348
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 350
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Yx;

    .line 351
    .local v0, "bundleInfo":Lc8/Yx;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc8/Yx;->getActivities()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lc8/Yx;->getActivities()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    invoke-virtual {v0}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 355
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc8/Yx;->getServices()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lc8/Yx;->getServices()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    invoke-virtual {v0}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 359
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc8/Yx;->getReceivers()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lc8/Yx;->getReceivers()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 360
    invoke-virtual {v0}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 363
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc8/Yx;->getContentProviders()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lc8/Yx;->getContentProviders()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    invoke-virtual {v0}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getBundleInfo()Landroid/taobao/atlas/bundleInfo/BundleListing;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    return-object v0
.end method

.method public getBundleInfo(Ljava/lang/String;)Lc8/Yx;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v2}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 381
    :cond_1
    :goto_0
    return-object v0

    .line 376
    :cond_2
    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v2}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Yx;

    .line 377
    .local v0, "info":Lc8/Yx;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 381
    goto :goto_0
.end method

.method public getDependencyForBundle(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
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
    const/4 v1, 0x0

    .line 314
    iget-object v3, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v3}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 328
    :cond_0
    return-object v1

    .line 317
    :cond_1
    iget-object v3, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v3}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Yx;

    .line 318
    .local v0, "bundleInfo":Lc8/Yx;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Yx;->getDependency()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    invoke-virtual {v0}, Lc8/Yx;->getDependency()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 321
    invoke-virtual {v0}, Lc8/Yx;->getDependency()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 322
    invoke-virtual {v0}, Lc8/Yx;->getDependency()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isInternalBundle(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 332
    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v2}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    iget-object v2, p0, Lc8/Xx;->mCurrentBundleListing:Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-virtual {v2}, Landroid/taobao/atlas/bundleInfo/BundleListing;->getBundles()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Yx;

    .line 336
    .local v0, "info":Lc8/Yx;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lc8/Yx;->isInternal()Z

    move-result v1

    goto :goto_0
.end method
