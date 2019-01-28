.class public Lc8/BA;
.super Ljava/lang/Object;
.source "KernalBundleArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/AA;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final BUNDLE_NAME:Ljava/lang/String; = "com_taobao_maindex.zip"

.field public static final DEXPATCH_DIR:Ljava/lang/String; = "dexpatch/"

.field public static final TAG:Ljava/lang/String; = "KernalBundleArchive"


# instance fields
.field private bundleDir:Ljava/io/File;

.field private hasResources:Z

.field private libraryDirectory:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private odexFile:[Ldalvik/system/DexFile;

.field private revisionDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleDir"    # Ljava/io/File;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "dexPatchVersion"    # J
    .param p6, "process"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/BA;->hasResources:Z

    .line 245
    iput-object p1, p0, Lc8/BA;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lc8/BA;->bundleDir:Ljava/io/File;

    .line 247
    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p0, p3, p4, p5}, Lc8/BA;->purge(Ljava/lang/String;J)V

    .line 250
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 251
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dexpatch/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    .line 255
    :goto_0
    iget-object v2, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "can not find kernal bundle"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    goto :goto_0

    .line 258
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lc8/BA;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "lib"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/BA;->libraryDirectory:Ljava/io/File;

    .line 259
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    const-string/jumbo v3, "com_taobao_maindex.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    .local v0, "bundleFile":Ljava/io/File;
    new-instance v2, Lc8/AA;

    iget-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-direct {v2, p0, v3, v5}, Lc8/AA;-><init>(Lc8/BA;Ljava/io/File;Z)V

    invoke-virtual {v2, v0, v5}, Lc8/AA;->release(Ljava/io/File;Z)Z

    move-result v1

    .line 261
    .local v1, "success":Z
    if-eqz v1, :cond_4

    iget-object v2, p0, Lc8/BA;->odexFile:[Ldalvik/system/DexFile;

    if-nez v2, :cond_5

    .line 262
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "process patch failed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)V
    .locals 8
    .param p1, "bundleDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-boolean v6, p0, Lc8/BA;->hasResources:Z

    .line 268
    iput-object p1, p0, Lc8/BA;->bundleDir:Ljava/io/File;

    .line 269
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_5

    .line 270
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dexpatch/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    .line 274
    :goto_0
    iget-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    iget-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 277
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    const-string/jumbo v4, "com_taobao_maindex.zip"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v0, "bundleFile":Ljava/io/File;
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v0}, Lc8/BA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 281
    :cond_1
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 282
    .local v2, "zip":Ljava/util/zip/ZipFile;
    iput-boolean v6, p0, Lc8/BA;->hasResources:Z

    .line 284
    const-string/jumbo v3, "resources.arsc"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    const-string/jumbo v5, "newAssets/assets"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/BA;->hasResources:Z

    .line 287
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 288
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lc8/BA;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lc8/BA;->libraryDirectory:Ljava/io/File;

    .line 289
    new-instance v3, Lc8/AA;

    iget-object v4, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-direct {v3, p0, v4, v6}, Lc8/AA;-><init>(Lc8/BA;Ljava/io/File;Z)V

    invoke-virtual {v3, v0, v6}, Lc8/AA;->release(Ljava/io/File;Z)Z

    move-result v1

    .line 290
    .local v1, "success":Z
    if-eqz v1, :cond_4

    iget-object v3, p0, Lc8/BA;->odexFile:[Ldalvik/system/DexFile;

    if-nez v3, :cond_6

    .line 291
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process mainDex failed!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    .end local v0    # "bundleFile":Ljava/io/File;
    .end local v1    # "success":Z
    .end local v2    # "zip":Ljava/util/zip/ZipFile;
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    goto :goto_0

    .line 293
    .restart local v0    # "bundleFile":Ljava/io/File;
    .restart local v1    # "success":Z
    .restart local v2    # "zip":Ljava/util/zip/ZipFile;
    :cond_6
    return-void
.end method

.method static synthetic access$002(Lc8/BA;[Ldalvik/system/DexFile;)[Ldalvik/system/DexFile;
    .locals 0
    .param p0, "x0"    # Lc8/BA;
    .param p1, "x1"    # [Ldalvik/system/DexFile;

    .prologue
    .line 224
    iput-object p1, p0, Lc8/BA;->odexFile:[Ldalvik/system/DexFile;

    return-object p1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    const/16 v2, 0x4000

    new-array v1, v2, [B

    .line 340
    .local v1, "readContent":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 341
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method public static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 396
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 398
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 400
    .local v0, "buffers":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "realLength":I
    if-lez v5, :cond_3

    .line 401
    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "buffers":[B
    .end local v5    # "realLength":I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz p0, :cond_0

    .line 405
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 409
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 410
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 414
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 415
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 418
    :cond_2
    :goto_4
    throw v6

    .line 404
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffers":[B
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "realLength":I
    :cond_3
    if-eqz p0, :cond_4

    .line 405
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 409
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 410
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 414
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 415
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 420
    :cond_6
    :goto_7
    return-void

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 412
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 417
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 406
    .end local v0    # "buffers":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "realLength":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 412
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 417
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 404
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 364
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 368
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    aget-object v2, v0, v1

    invoke-static {v2}, Lc8/BA;->deleteDirectory(Ljava/io/File;)V

    .line 367
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 374
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private mappingInternalDirectory()Ljava/io/File;
    .locals 6

    .prologue
    .line 423
    iget-object v1, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "storage/com.taobao.maindex_internal/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 381
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 382
    const-string/jumbo p0, ""

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 386
    const-string/jumbo p0, ""

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getArchiveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 355
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    const-string/jumbo v2, "com_taobao_maindex.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLibraryDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc8/BA;->libraryDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getOdexFile()[Ldalvik/system/DexFile;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lc8/BA;->odexFile:[Ldalvik/system/DexFile;

    return-object v0
.end method

.method public getRevisionDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lc8/BA;->revisionDir:Ljava/io/File;

    return-object v0
.end method

.method public purge(Ljava/lang/String;J)V
    .locals 10
    .param p1, "uniqueTag"    # Ljava/lang/String;
    .param p2, "dexPatchVersion"    # J

    .prologue
    const/4 v6, 0x0

    .line 301
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lc8/BA;->bundleDir:Ljava/io/File;

    const-string/jumbo v8, "dexpatch/"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v0, "dexPatchDir":Ljava/io/File;
    new-instance v7, Lc8/yA;

    invoke-direct {v7, p0, p2, p3}, Lc8/yA;-><init>(Lc8/BA;J)V

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 312
    .local v1, "dexPatchs":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 313
    array-length v8, v1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v5, v1, v7

    .line 314
    .local v5, "patch":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 315
    invoke-static {v5}, Lc8/BA;->deleteDirectory(Ljava/io/File;)V

    .line 313
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 321
    .end local v5    # "patch":Ljava/io/File;
    :cond_1
    iget-object v7, p0, Lc8/BA;->bundleDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 322
    .local v3, "dirs":[Ljava/io/File;
    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v3, v6

    .line 323
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "dexpatch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 324
    invoke-static {v2}, Lc8/BA;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    .end local v0    # "dexPatchDir":Ljava/io/File;
    .end local v1    # "dexPatchs":[Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dirs":[Ljava/io/File;
    :catch_0
    move-exception v4

    .line 328
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method
