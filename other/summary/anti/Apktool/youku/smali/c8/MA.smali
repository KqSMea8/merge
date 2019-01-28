.class public Lc8/MA;
.super Ljava/lang/Object;
.source "NativeLibReleaser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mappingInternalDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "revisionDir"    # Ljava/io/File;

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 290
    new-instance v0, Ljava/io/File;

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage/com.taobao.maindex_internal/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v0, "internalLibDir":Ljava/io/File;
    const/4 v1, 0x2

    .line 293
    .local v1, "retryCount":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 296
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    add-int/lit8 v1, v1, -0x1

    .line 300
    if-gtz v1, :cond_0

    .line 301
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    const-string/jumbo v2, "BundleArchiveRevision"

    const-string/jumbo v3, "create internal LibDir Failed : com.taobao.maindex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "internalLibDir":Ljava/io/File;
    .end local v1    # "retryCount":I
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public static releaseLibs(Ljava/io/File;Ljava/io/File;)Z
    .locals 24
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "reversionDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "lib"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_0

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "lib"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 227
    const/16 v19, 0x1

    .line 285
    :goto_0
    return v19

    .line 229
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 230
    .local v5, "bundleFile":Ljava/util/zip/ZipFile;
    const-string/jumbo v10, "lib/armeabi"

    .line 231
    .local v10, "extractTag":Ljava/lang/String;
    sget-object v19, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v20, "x86"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 232
    const-string/jumbo v19, "lib/x86/"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 233
    const-string/jumbo v10, "lib/x86"

    .line 236
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "entries":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 237
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/zip/ZipEntry;

    .line 238
    .local v18, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "entryName":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string/jumbo v19, "../"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 240
    const/4 v14, 0x0

    .line 241
    .local v14, "numAttempts":I
    const/4 v13, 0x0

    .line 242
    .local v13, "isExtractionSuccessful":Z
    :cond_3
    :goto_1
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    if-nez v13, :cond_4

    .line 243
    add-int/lit8 v14, v14, 0x1

    .line 245
    :try_start_0
    const-string/jumbo v19, "%s%s%s%s%s"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p1 .. p1}, Lc8/MA;->mappingInternalDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "lib"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x4

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    .line 246
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 245
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 247
    .local v17, "targetPath":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 248
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v6, "decompressDirFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 250
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v6    # "decompressDirFile":Ljava/io/File;
    .end local v17    # "targetPath":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_2

    .line 278
    if-nez v13, :cond_2

    .line 279
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 254
    .restart local v17    # "targetPath":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    :try_start_1
    const-string/jumbo v20, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, "fileDir":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v12, "fileDirFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6

    .line 257
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_6
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 262
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    .local v3, "bi":Ljava/io/BufferedInputStream;
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v15, v0, [B

    .line 264
    .local v15, "readContent":[B
    invoke-virtual {v3, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    .line 265
    .local v16, "readCount":I
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 266
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v4, v15, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 267
    invoke-virtual {v3, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    goto :goto_2

    .line 269
    :cond_7
    const/4 v13, 0x1

    .line 270
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 272
    .end local v3    # "bi":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "fileDir":Ljava/lang/String;
    .end local v12    # "fileDirFile":Ljava/io/File;
    .end local v15    # "readContent":[B
    .end local v16    # "readCount":I
    .end local v17    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 273
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 285
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v13    # "isExtractionSuccessful":Z
    .end local v14    # "numAttempts":I
    .end local v18    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_8
    const/16 v19, 0x1

    goto/16 :goto_0
.end method
