.class public Lc8/OA;
.super Ljava/lang/Object;
.source "ApkUtils.java"


# static fields
.field static final SYSTEM_ROOT_STATE_DISABLE:I = 0x0

.field static final SYSTEM_ROOT_STATE_ENABLE:I = 0x1

.field static final SYSTEM_ROOT_STATE_UNKNOW:I = -0x1

.field private static sApkZip:Ljava/util/zip/ZipFile;

.field private static systemRootState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, -0x1

    sput v0, Lc8/OA;->systemRootState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 308
    :cond_0
    const/4 v4, 0x0

    .line 318
    :goto_0
    return-object v4

    .line 310
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 311
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 312
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static final chmod(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 322
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 325
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chmod 555 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 327
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 353
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 354
    .local v0, "childFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 359
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lc8/OA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 353
    .end local v1    # "dir":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lc8/OA;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 364
    .end local v0    # "childFile":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 371
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 373
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 375
    .local v0, "buffers":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "realLength":I
    if-lez v5, :cond_3

    .line 376
    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 378
    .end local v0    # "buffers":[B
    .end local v5    # "realLength":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 379
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v6

    const-string/jumbo v7, "container_bundle_unzip_fail"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v2}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 380
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz p0, :cond_0

    .line 383
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 387
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 388
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 392
    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 393
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 396
    :cond_2
    :goto_5
    throw v6

    .line 382
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffers":[B
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "realLength":I
    :cond_3
    if-eqz p0, :cond_4

    .line 383
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 387
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 388
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 392
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 393
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 398
    :cond_6
    :goto_8
    return-void

    .line 384
    :catch_1
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 389
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 390
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 394
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 395
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 384
    .end local v0    # "buffers":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "realLength":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 389
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 390
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 394
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 395
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 378
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static getApk()Ljava/util/zip/ZipFile;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lc8/OA;->sApkZip:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lc8/OA;->loadZip()V

    .line 242
    :cond_0
    sget-object v0, Lc8/OA;->sApkZip:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method public static final getApkPublicKey(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v4, 0x0

    .line 257
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string/jumbo v10, "classes.dex"

    invoke-virtual {v5, v10}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 259
    .local v6, "je":Ljava/util/jar/JarEntry;
    if-eqz v6, :cond_2

    .line 260
    const/16 v10, 0x1000

    new-array v9, v10, [B

    .line 261
    .local v9, "readBuffer":[B
    invoke-static {v5, v6, v9}, Lc8/OA;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 262
    .local v1, "certs":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_2

    .line 263
    array-length v10, v1

    new-array v8, v10, [Ljava/lang/String;

    .line 264
    .local v8, "publicKeys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_0

    .line 265
    aget-object v0, v1, v3

    .line 266
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 267
    .local v7, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lc8/OA;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    if-eqz v5, :cond_1

    .line 276
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    .line 283
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v8    # "publicKeys":[Ljava/lang/String;
    .end local v9    # "readBuffer":[B
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :goto_2
    return-object v8

    .line 277
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v1    # "certs":[Ljava/security/cert/Certificate;
    .restart local v3    # "i":I
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    .restart local v8    # "publicKeys":[Ljava/lang/String;
    .restart local v9    # "readBuffer":[B
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    .end local v8    # "publicKeys":[Ljava/lang/String;
    .end local v9    # "readBuffer":[B
    :cond_2
    if-eqz v5, :cond_5

    .line 276
    :try_start_3
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 283
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :cond_3
    :goto_3
    const/4 v8, 0x0

    goto :goto_2

    .line 277
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    :catch_1
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 279
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_3

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    :catch_2
    move-exception v10

    :goto_4
    if-eqz v4, :cond_3

    .line 276
    :try_start_4
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 277
    :catch_3
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v4, :cond_4

    .line 276
    :try_start_5
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 279
    :cond_4
    :goto_6
    throw v10

    .line 277
    :catch_4
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_5

    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v10

    move-object v4, v5

    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_4

    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    :cond_5
    move-object v4, v5

    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_3
.end method

.method public static isRootSystem()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    sget v5, Lc8/OA;->systemRootState:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 338
    sget v5, Lc8/OA;->systemRootState:I

    if-ne v5, v3, :cond_0

    .line 348
    .local v2, "suSearchPaths":[Ljava/lang/String;
    :goto_0
    return v3

    .end local v2    # "suSearchPaths":[Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "/system/bin/"

    aput-object v5, v2, v4

    const-string/jumbo v5, "/system/xbin/"

    aput-object v5, v2, v3

    const/4 v5, 0x2

    const-string/jumbo v6, "/system/sbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "/sbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "/vendor/bin/"

    aput-object v6, v2, v5

    .line 341
    .restart local v2    # "suSearchPaths":[Ljava/lang/String;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 342
    .local v1, "searchPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "su"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 344
    sput v3, Lc8/OA;->systemRootState:I

    goto :goto_0

    .line 341
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "searchPath":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 348
    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 291
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 292
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 295
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 296
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 302
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized loadZip()V
    .locals 4

    .prologue
    .line 246
    const-class v2, Lc8/OA;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/OA;->sApkZip:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 252
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v2

    return-void

    .line 250
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v1, Lc8/OA;->sApkZip:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
