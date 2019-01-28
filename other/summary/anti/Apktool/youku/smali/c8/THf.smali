.class public abstract Lc8/THf;
.super Ljava/lang/Object;
.source "LogFileUploader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public startUpload(Ljava/lang/String;Lc8/PHf;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/PHf;

    .prologue
    .line 17
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v1, "dirs":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 21
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v3, "src":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lc8/IHf;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 25
    .local v0, "dest":Ljava/io/File;
    const/4 v4, 0x0

    .line 26
    .local v4, "zipFilePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0, v0}, Lc8/THf;->zipFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 29
    :cond_1
    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {p0, v4, p2}, Lc8/THf;->upload(Ljava/lang/String;Lc8/PHf;)V

    .line 37
    .end local v0    # "dest":Ljava/io/File;
    .end local v4    # "zipFilePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 32
    .restart local v0    # "dest":Ljava/io/File;
    .restart local v4    # "zipFilePath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lc8/THf;->upload(Ljava/lang/String;Lc8/PHf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    .end local v0    # "dest":Ljava/io/File;
    .end local v4    # "zipFilePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract upload(Ljava/lang/String;Lc8/PHf;)V
.end method

.method public zipFile(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v11

    .line 58
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 61
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "tmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v9, "zipFileDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 63
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_2
    new-instance v8, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, "zipFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 73
    .local v2, "buf":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v10, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v10, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 78
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    .line 80
    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 81
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "buf":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .end local v7    # "ze":Ljava/util/zip/ZipEntry;
    .end local v8    # "zipFile":Ljava/io/File;
    .end local v9    # "zipFileDir":Ljava/io/File;
    .end local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 83
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .restart local v7    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zipFile":Ljava/io/File;
    .restart local v9    # "zipFileDir":Ljava/io/File;
    .restart local v10    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 84
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 85
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_0
.end method
