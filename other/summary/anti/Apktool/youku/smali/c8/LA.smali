.class public Lc8/LA;
.super Ljava/lang/Object;
.source "DexReleaser.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final CLASS_SUFFIX:Ljava/lang/String; = "classes"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 299
    const/16 v2, 0x4000

    new-array v1, v2, [B

    .line 301
    .local v1, "readContent":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method private static getUpdatedDexEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "originalEntryName"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string/jumbo v1, "classes.dex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string/jumbo v1, "classes2.dex"

    .line 392
    :goto_0
    return-object v1

    .line 391
    :cond_0
    const-string/jumbo v1, "classes"

    const-string/jumbo v2, ".dex"

    invoke-static {p0, v1, v2}, Lc8/aB;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, "dexIndex":I
    const-string/jumbo v1, "classes%s.dex"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasDexFile(Ljava/util/zip/ZipFile;)Z
    .locals 1
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 295
    const-string/jumbo v0, "classes.dex"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArt()Z
    .locals 2

    .prologue
    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNewBundleFileValid(Ljava/io/File;)Z
    .locals 3
    .param p0, "bundleFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 399
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    const-string/jumbo v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "classes2.dex"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 401
    .local v0, "result":Z
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    return v0

    .line 399
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "result":Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static preProcessPatch(Ljava/util/zip/ZipFile;Ljava/io/File;)Ljava/io/File;
    .locals 18
    .param p0, "sourceZip"    # Ljava/util/zip/ZipFile;
    .param p1, "sourceFile"    # Ljava/io/File;

    .prologue
    .line 307
    const-string/jumbo v14, "classes.dex"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 308
    const/4 v10, 0x0

    .line 309
    .local v10, "target":Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    .line 310
    .local v7, "rawZip":Ljava/util/zip/ZipFile;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "dexpatch"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 313
    .local v2, "dexPatch":Z
    if-eqz v2, :cond_6

    .line 315
    :try_start_0
    sget-object v14, Lc8/xA;->kernalBundle:Lc8/xA;

    if-nez v14, :cond_5

    new-instance v14, Ljava/util/zip/ZipFile;

    sget-object v15, Lc8/CA;->APK_PATH:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v7, v14

    .line 321
    .end local v7    # "rawZip":Ljava/util/zip/ZipFile;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ".tmp"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 322
    .local v13, "targetFile":Ljava/io/File;
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v10    # "target":Ljava/util/zip/ZipOutputStream;
    .local v11, "target":Ljava/util/zip/ZipOutputStream;
    const/4 v1, 0x1

    .line 326
    .local v1, "dexIndex":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 327
    .local v9, "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    .end local v11    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "target":Ljava/util/zip/ZipOutputStream;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 329
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 331
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "META-INF"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 334
    :cond_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 335
    .local v5, "out":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 336
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_0

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14, v10}, Lc8/LA;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 369
    .end local v1    # "dexIndex":I
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v5    # "out":Ljava/util/zip/ZipEntry;
    .end local v9    # "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 370
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    if-eqz v10, :cond_2

    .line 374
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 375
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 377
    :cond_2
    if-eqz v7, :cond_3

    .line 378
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 384
    .end local v2    # "dexPatch":Z
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "target":Ljava/util/zip/ZipOutputStream;
    :cond_3
    :goto_3
    const/4 v13, 0x0

    :cond_4
    :goto_4
    return-object v13

    .line 315
    .restart local v2    # "dexPatch":Z
    .restart local v7    # "rawZip":Ljava/util/zip/ZipFile;
    .restart local v10    # "target":Ljava/util/zip/ZipOutputStream;
    :cond_5
    :try_start_5
    new-instance v14, Ljava/util/zip/ZipFile;

    sget-object v15, Lc8/xA;->kernalBundle:Lc8/xA;

    .line 317
    invoke-virtual {v15}, Lc8/xA;->getRevisionZip()Ljava/io/File;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v7, v14

    goto :goto_0

    .line 319
    :cond_6
    new-instance v8, Ljava/util/zip/ZipFile;

    sget-object v14, Lc8/CA;->APK_PATH:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .end local v7    # "rawZip":Ljava/util/zip/ZipFile;
    .local v8, "rawZip":Ljava/util/zip/ZipFile;
    move-object v7, v8

    .local v7, "rawZip":Ljava/lang/Object;
    goto/16 :goto_0

    .line 341
    .end local v7    # "rawZip":Ljava/lang/Object;
    .end local v8    # "rawZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "dexIndex":I
    .restart local v9    # "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13    # "targetFile":Ljava/io/File;
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v2, :cond_c

    sget-object v14, Lc8/xA;->kernalBundle:Lc8/xA;

    if-nez v14, :cond_c

    .line 344
    :cond_8
    :goto_5
    const-string/jumbo v15, "%s%s%s"

    const/4 v14, 0x3

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    const-string/jumbo v17, "classes"

    aput-object v17, v16, v14

    const/16 v17, 0x1

    const/4 v14, 0x1

    if-le v1, v14, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_6
    aput-object v14, v16, v17

    const/4 v14, 0x2

    const-string/jumbo v17, ".dex"

    aput-object v17, v16, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 345
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_a

    .line 346
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lc8/LA;->getUpdatedDexEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 347
    .local v12, "targetEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 348
    invoke-virtual {v7, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14, v10}, Lc8/LA;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    .line 350
    goto :goto_5

    .line 344
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "targetEntry":Ljava/util/zip/ZipEntry;
    :cond_9
    const-string/jumbo v14, ""
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 373
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_a
    if-eqz v10, :cond_b

    .line 374
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 375
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 377
    :cond_b
    if-eqz v7, :cond_4

    .line 378
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 379
    :catch_1
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 356
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_c
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 357
    .local v6, "rawEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_d
    :goto_7
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 358
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 359
    .local v3, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "classes"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ".dex"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    new-instance v5, Ljava/util/zip/ZipEntry;

    .line 360
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lc8/LA;->getUpdatedDexEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v5    # "out":Ljava/util/zip/ZipEntry;
    :goto_8
    invoke-virtual {v10, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 363
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_d

    .line 364
    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14, v10}, Lc8/LA;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 372
    .end local v1    # "dexIndex":I
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v5    # "out":Ljava/util/zip/ZipEntry;
    .end local v6    # "rawEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "targetFile":Ljava/io/File;
    :catchall_0
    move-exception v14

    .line 373
    :goto_9
    if-eqz v10, :cond_e

    .line 374
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 375
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 377
    :cond_e
    if-eqz v7, :cond_f

    .line 378
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 381
    :cond_f
    :goto_a
    throw v14

    .line 360
    .restart local v1    # "dexIndex":I
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v6    # "rawEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13    # "targetFile":Ljava/io/File;
    :cond_10
    :try_start_9
    new-instance v5, Ljava/util/zip/ZipEntry;

    .line 361
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 373
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_11
    if-eqz v10, :cond_12

    .line 374
    :try_start_a
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 375
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 377
    :cond_12
    if-eqz v7, :cond_4

    .line 378
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 379
    :catch_2
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 379
    .end local v1    # "dexIndex":I
    .end local v6    # "rawEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "sourceEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "targetFile":Ljava/io/File;
    .local v3, "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 380
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 372
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "dexIndex":I
    .restart local v11    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v13    # "targetFile":Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "target":Ljava/util/zip/ZipOutputStream;
    goto :goto_9

    .line 369
    .end local v10    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "target":Ljava/util/zip/ZipOutputStream;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11    # "target":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "target":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_2
.end method

.method public static releaseDexes(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 11
    .param p0, "bundleFile"    # Ljava/io/File;
    .param p1, "reversionDir"    # Ljava/io/File;
    .param p2, "externalStorage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 239
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 240
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {v7}, Lc8/LA;->hasDexFile(Ljava/util/zip/ZipFile;)Z

    move-result v3

    .line 241
    .local v3, "hasDexFile":Z
    if-nez v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v8

    .line 244
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lc8/LA;->isArt()Z

    move-result v10

    if-nez v10, :cond_4

    .line 245
    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 246
    .local v1, "entryEnumeration":Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 248
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".dex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v0, "dexFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 251
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v2}, Lc8/LA;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 257
    .end local v0    # "dexFile":Ljava/io/File;
    .end local v1    # "entryEnumeration":Ljava/util/Enumeration;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-static {v7, p0}, Lc8/LA;->preProcessPatch(Ljava/util/zip/ZipFile;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 258
    .local v4, "mergedFile":Ljava/io/File;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 260
    invoke-virtual {v4, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 261
    .local v5, "success":Z
    if-eqz v5, :cond_5

    invoke-static {p0}, Lc8/LA;->isNewBundleFileValid(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_5
    move v8, v9

    .line 262
    goto :goto_0

    .end local v5    # "success":Z
    :cond_6
    move v8, v9

    .line 265
    goto :goto_0

    .line 268
    .restart local v5    # "success":Z
    :cond_7
    :try_start_0
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_0
.end method
