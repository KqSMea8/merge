.class public Lc8/NA;
.super Ljava/lang/Object;
.source "ResourceReleaser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static releaseResource(Ljava/io/File;Ljava/io/File;)Z
    .locals 23
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "revisionDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v18, Ljava/io/File;

    const-string/jumbo v19, "newAssets/assets"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/io/File;

    const-string/jumbo v19, "newAssets/AndroidManifest.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 223
    :cond_0
    const/16 v18, 0x1

    .line 284
    :goto_0
    return v18

    .line 225
    :cond_1
    new-instance v5, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 226
    .local v5, "bundleFile":Ljava/util/zip/ZipFile;
    const-string/jumbo v9, "assets"

    .line 227
    .local v9, "extractTag":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "entries":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 228
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    .line 229
    .local v17, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "entryName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_3
    const-string/jumbo v18, "../"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 231
    const/4 v13, 0x0

    .line 232
    .local v13, "numAttempts":I
    const/4 v12, 0x0

    .line 233
    .local v12, "isExtractionSuccessful":Z
    :cond_4
    :goto_1
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    if-nez v12, :cond_5

    .line 234
    add-int/lit8 v13, v13, 0x1

    .line 237
    :try_start_0
    const-string/jumbo v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 238
    const-string/jumbo v18, "%s%s%s%s%s"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "newAssets"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x4

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    .line 239
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 238
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, "targetPath":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 245
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v6, "decompressDirFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 247
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v6    # "decompressDirFile":Ljava/io/File;
    .end local v16    # "targetPath":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 274
    if-nez v12, :cond_2

    .line 275
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 241
    :cond_6
    :try_start_1
    const-string/jumbo v18, "%s%s%s%s%s"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "newAssets/assets"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x4

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    .line 242
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 241
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "targetPath":Ljava/lang/String;
    goto :goto_2

    .line 251
    :cond_7
    const/16 v18, 0x0

    const-string/jumbo v19, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "fileDir":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v11, "fileDirFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_8

    .line 254
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 256
    :cond_8
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 260
    .local v3, "bi":Ljava/io/BufferedInputStream;
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v14, v0, [B

    .line 261
    .local v14, "readContent":[B
    invoke-virtual {v3, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    .line 262
    .local v15, "readCount":I
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_9

    .line 263
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v14, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 264
    invoke-virtual {v3, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    goto :goto_3

    .line 266
    :cond_9
    const/4 v12, 0x1

    .line 267
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 270
    .end local v3    # "bi":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "fileDir":Ljava/lang/String;
    .end local v11    # "fileDirFile":Ljava/io/File;
    .end local v14    # "readContent":[B
    .end local v15    # "readCount":I
    .end local v16    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v18

    const/16 v18, 0x0

    goto/16 :goto_0

    .line 281
    .end local v8    # "entryName":Ljava/lang/String;
    .end local v12    # "isExtractionSuccessful":Z
    .end local v13    # "numAttempts":I
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_a
    new-instance v18, Ljava/io/File;

    const-string/jumbo v19, "newAssets/assets"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Ljava/io/File;

    const-string/jumbo v19, "newAssets/AndroidManifest.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 282
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 284
    :cond_b
    const/16 v18, 0x1

    goto/16 :goto_0
.end method
