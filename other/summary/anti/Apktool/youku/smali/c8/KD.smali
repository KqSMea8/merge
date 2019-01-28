.class public Lc8/KD;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field static final BUFFER:I = 0x400

.field private static final TAG:Ljava/lang/String; = "FileManager"

.field public static final UNZIP_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/KD;->copy(Ljava/io/File;Ljava/io/File;[B)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 10
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v6, 0x0

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 236
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 238
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    const-string/jumbo v7, "FileManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "src file not exist, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    if-eqz v2, :cond_1

    .line 262
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 269
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 275
    :cond_2
    :goto_1
    return v6

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 247
    :cond_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_5

    :try_start_5
    array-length v7, p2

    const/16 v8, 0xa

    if-ge v7, v8, :cond_6

    .line 250
    :cond_5
    const/16 v7, 0x800

    new-array p2, v7, [B

    .line 252
    :cond_6
    :goto_2
    invoke-virtual {v3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "b":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_8

    .line 253
    const/4 v7, 0x0

    invoke-virtual {v5, p2, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 257
    .end local v0    # "b":I
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 258
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 260
    if-eqz v2, :cond_7

    .line 262
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    if-eqz v4, :cond_2

    .line 269
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 270
    :catch_3
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 256
    const/4 v6, 0x1

    .line 260
    if-eqz v3, :cond_9

    .line 262
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 267
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 269
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_6
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 272
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 263
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 263
    .end local v0    # "b":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v2, :cond_b

    .line 262
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 267
    :cond_b
    :goto_8
    if-eqz v4, :cond_c

    .line 269
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 272
    :cond_c
    :goto_9
    throw v6

    .line 263
    :catch_7
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 257
    :catch_9
    move-exception v1

    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lc8/KD;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "srcDir"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 286
    invoke-static {p0}, Lc8/KD;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {p1}, Lc8/KD;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 291
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 294
    .local v3, "file":[Ljava/io/File;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 296
    .local v0, "buffer":[B
    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v7

    .line 298
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v3

    if-ge v4, v8, :cond_4

    .line 299
    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 301
    aget-object v5, v3, v4

    .line 303
    .local v5, "sourceFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v6, "targetFile":Ljava/io/File;
    invoke-static {v5, v6, v0}, Lc8/KD;->copy(Ljava/io/File;Ljava/io/File;[B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    .end local v5    # "sourceFile":Ljava/io/File;
    .end local v6    # "targetFile":Ljava/io/File;
    :cond_2
    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "dir1":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "dir2":Ljava/lang/String;
    invoke-static {v1, v2}, Lc8/KD;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 298
    .end local v1    # "dir1":Ljava/lang/String;
    .end local v2    # "dir2":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 318
    :cond_4
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v3, 0x0

    .line 134
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 135
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v5, 0x800

    :try_start_1
    new-array v0, v5, [B

    .line 140
    .local v0, "buffer":[B
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "i":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 141
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 143
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 144
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyFile: dest FileNotFoundException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-eqz v3, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v4, :cond_4

    .line 150
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 151
    :catch_2
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string/jumbo v5, "FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyFile: write IOException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v3, :cond_0

    .line 150
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 151
    :catch_4
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    .line 150
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 153
    :cond_3
    :goto_5
    throw v5

    .line 151
    :catch_5
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 145
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 143
    :catch_7
    move-exception v1

    goto/16 :goto_2

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static createBaseDir(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "rootDir"    # Ljava/lang/String;
    .param p2, "myDir"    # Ljava/lang/String;
    .param p3, "hasSDCard"    # Z

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "baseDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 161
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    if-nez v0, :cond_2

    .line 181
    invoke-static {p0, p1, p2}, Lc8/KD;->createInnerCacheStorage(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2
    const-string/jumbo v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createBaseDir path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v0

    .line 167
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    invoke-static {p0}, Lc8/JH;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public static createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "dir":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_1
    return-object v1
.end method

.method public static createInnerCacheStorage(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "rootDir"    # Ljava/lang/String;
    .param p2, "myDir"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string/jumbo v0, ""

    .line 190
    .local v0, "baseDir":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string/jumbo v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createInnerCacheStorage path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method public static createInnerfileStorage(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "rootDir"    # Ljava/lang/String;
    .param p2, "myDir"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string/jumbo v0, ""

    .line 210
    .local v0, "baseDir":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string/jumbo v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createInnerfileStorage path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method private static formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string/jumbo v0, "//"

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 329
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 331
    :cond_0
    return-object p0
.end method

.method public static unZipByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "unZipDir"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 343
    .local v14, "startUnZipTime":J
    const/4 v5, 0x0

    .line 344
    .local v5, "dest":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 345
    .local v12, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 347
    .local v16, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string/jumbo v18, "wv_zip_url"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v18, "device_identifier"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v18, "config_version"

    sget-object v19, Lc8/DB;->commonConfig:Lc8/EB;

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/EB;->v:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v18, "zip_degrade_config"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lc8/DB;->commonConfig:Lc8/EB;

    move-object/from16 v0, v20

    iget v0, v0, Lc8/EB;->zipDegradeMode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lc8/DB;->commonConfig:Lc8/EB;

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/EB;->zipDegradeList:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d

    .line 355
    :goto_0
    :try_start_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 357
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_0
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 362
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .local v17, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .local v8, "e":Ljava/util/Enumeration;
    move-object v6, v5

    .line 363
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .local v6, "dest":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 364
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 366
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string/jumbo v18, "../"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 371
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "destFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, "desFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 374
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 380
    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    .line 381
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 383
    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    :try_start_5
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 384
    .local v2, "by":[B
    :goto_3
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "c":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    .line 385
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 388
    .end local v2    # "by":[B
    .end local v3    # "c":I
    :catchall_0
    move-exception v18

    .line 389
    :goto_4
    if-eqz v5, :cond_3

    .line 390
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 397
    :cond_3
    :goto_5
    if-eqz v12, :cond_4

    .line 398
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 403
    :cond_4
    :goto_6
    :try_start_8
    throw v18
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 406
    .end local v4    # "desFile":Ljava/io/File;
    .end local v7    # "destFilePath":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object/from16 v16, v17

    .line 407
    .end local v11    # "f":Ljava/io/File;
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_7
    :try_start_9
    const-string/jumbo v18, "FileManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unZipByFilePath failed : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v18

    .line 410
    if-eqz v16, :cond_5

    .line 412
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 417
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_b
    const-string/jumbo v19, "wv_zip_url"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v19, "device_identifier"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v19, "config_version"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v19, "zip_degrade_config"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    .line 428
    :cond_5
    :goto_9
    return-object v18

    .line 375
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "desFile":Ljava/io/File;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v7    # "destFilePath":Ljava/lang/String;
    .local v8, "e":Ljava/util/Enumeration;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 376
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 377
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2

    .line 406
    .end local v4    # "desFile":Ljava/io/File;
    .end local v7    # "destFilePath":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "name":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object/from16 v16, v17

    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    move-object v5, v6

    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 389
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "by":[B
    .restart local v3    # "c":I
    .restart local v4    # "desFile":Ljava/io/File;
    .restart local v7    # "destFilePath":Ljava/lang/String;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v5, :cond_8

    .line 390
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 391
    const/4 v5, 0x0

    .line 397
    :cond_8
    :goto_a
    if-eqz v12, :cond_9

    .line 398
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 399
    const/4 v12, 0x0

    :cond_9
    move-object v6, v5

    .line 403
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 393
    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    .line 394
    .local v10, "er":Ljava/io/IOException;
    :try_start_f
    const-string/jumbo v18, "FileManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "stream failed to close : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    .line 410
    .end local v2    # "by":[B
    .end local v3    # "c":I
    .end local v4    # "desFile":Ljava/io/File;
    .end local v7    # "destFilePath":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "er":Ljava/io/IOException;
    .end local v13    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v11    # "f":Ljava/io/File;
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_b
    if-eqz v16, :cond_a

    .line 412
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 417
    :goto_c
    :try_start_11
    const-string/jumbo v19, "wv_zip_url"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v19, "device_identifier"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v19, "config_version"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v19, "zip_degrade_config"

    const-string/jumbo v20, ""

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 422
    :cond_a
    :goto_d
    throw v18

    .line 401
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "by":[B
    .restart local v3    # "c":I
    .restart local v4    # "desFile":Ljava/io/File;
    .restart local v7    # "destFilePath":Ljava/lang/String;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v10

    .line 402
    .restart local v10    # "er":Ljava/io/IOException;
    :try_start_12
    const-string/jumbo v18, "FileManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "stream failed to close : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 404
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 393
    .end local v2    # "by":[B
    .end local v3    # "c":I
    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .end local v10    # "er":Ljava/io/IOException;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    .line 394
    .restart local v10    # "er":Ljava/io/IOException;
    const-string/jumbo v19, "FileManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "stream failed to close : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 401
    .end local v10    # "er":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 402
    .restart local v10    # "er":Ljava/io/IOException;
    const-string/jumbo v19, "FileManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "stream failed to close : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_6

    .line 410
    .end local v4    # "desFile":Ljava/io/File;
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v7    # "destFilePath":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "er":Ljava/io/IOException;
    .end local v13    # "name":Ljava/lang/String;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    :cond_b
    if-eqz v17, :cond_c

    .line 412
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 417
    .end local v8    # "e":Ljava/util/Enumeration;
    :goto_e
    :try_start_14
    const-string/jumbo v18, "wv_zip_url"

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v18, "device_identifier"

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v18, "config_version"

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v18, "zip_degrade_config"

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    .line 425
    :cond_c
    :goto_f
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 426
    const-string/jumbo v18, "FileManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unZipByFilePath use time(ms) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_d
    const-string/jumbo v18, "success"

    move-object/from16 v16, v17

    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    move-object v5, v6

    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 413
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v8

    .line 414
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v18, "FileManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "zipfile failed to close : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 413
    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .end local v11    # "f":Ljava/io/File;
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v8

    .line 414
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v19, "FileManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "zipfile failed to close : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 413
    .end local v8    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 414
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "FileManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "zipfile failed to close : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .end local v8    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v19

    goto/16 :goto_d

    .line 410
    :catchall_2
    move-exception v18

    goto/16 :goto_b

    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/util/Enumeration;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    move-object v5, v6

    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v11    # "f":Ljava/io/File;
    :catch_a
    move-exception v19

    goto/16 :goto_9

    .line 406
    :catch_b
    move-exception v8

    goto/16 :goto_7

    .line 422
    .end local v5    # "dest":Ljava/io/FileOutputStream;
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_c
    move-exception v18

    goto/16 :goto_f

    .line 388
    .restart local v4    # "desFile":Ljava/io/File;
    .restart local v7    # "destFilePath":Ljava/lang/String;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "name":Ljava/lang/String;
    :catchall_4
    move-exception v18

    move-object v5, v6

    .end local v6    # "dest":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v4    # "desFile":Ljava/io/File;
    .end local v7    # "destFilePath":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v18

    goto/16 :goto_0
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 14
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "destDir"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v10

    .line 72
    :cond_1
    const-string/jumbo v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    :cond_2
    const/4 v4, 0x0

    .line 76
    .local v4, "output":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 79
    .local v8, "zipFile":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    .local v9, "zipFile":Ljava/util/zip/ZipInputStream;
    const/16 v11, 0x400

    :try_start_1
    new-array v0, v11, [B

    .line 83
    .local v0, "b":[B
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v11, 0xc8

    invoke-direct {v6, v11}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v6, "pathBuffer":Ljava/lang/StringBuffer;
    move-object v5, v4

    .line 84
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_9

    .line 85
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "../"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 89
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "loadFile":Ljava/io/File;
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 108
    .end local v3    # "loadFile":Ljava/io/File;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .line 109
    .end local v0    # "b":[B
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v11, "FileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unzip: IOException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    if-eqz v4, :cond_4

    .line 113
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_4
    if-eqz v8, :cond_5

    .line 116
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    .line 118
    :cond_5
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v11, "FileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "close Stream Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "b":[B
    .restart local v3    # "loadFile":Ljava/io/File;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_7

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v11, 0x0

    const/16 v12, 0x400

    :try_start_6
    invoke-virtual {v9, v0, v11, v12}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_8

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 108
    .end local v0    # "b":[B
    .end local v2    # "length":I
    .end local v3    # "loadFile":Ljava/io/File;
    .end local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 104
    .end local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "length":I
    .restart local v3    # "loadFile":Ljava/io/File;
    .restart local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    :cond_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v4

    .line 106
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 107
    .end local v2    # "length":I
    .end local v3    # "loadFile":Ljava/io/File;
    :cond_9
    const/4 v10, 0x1

    .line 112
    if-eqz v5, :cond_a

    .line 113
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_a
    if-eqz v9, :cond_b

    .line 116
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 118
    :cond_b
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 121
    :catch_3
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "FileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "close Stream Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v10

    .line 112
    :goto_4
    if-eqz v4, :cond_c

    .line 113
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_c
    if-eqz v8, :cond_d

    .line 116
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    .line 118
    :cond_d
    if-eqz p0, :cond_e

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 123
    :cond_e
    :goto_5
    throw v10

    .line 121
    :catch_4
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "FileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "close Stream Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "b":[B
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 108
    .end local v0    # "b":[B
    .end local v6    # "pathBuffer":Ljava/lang/StringBuffer;
    :catch_5
    move-exception v1

    goto/16 :goto_2
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "destDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lc8/KD;->unzip(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unzip([BLjava/lang/String;)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "destDir"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lc8/KD;->unzip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
