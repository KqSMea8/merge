.class public Lc8/GGo;
.super Ljava/lang/Object;
.source "VipFileUtils.java"


# static fields
.field public static final BUFSIZE:I = 0x800

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lc8/GGo;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/GGo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 613
    move-object v7, p0

    .line 614
    .local v7, "path":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 616
    .local v1, "content":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 619
    const-string/jumbo v8, "TestFile"

    const-string/jumbo v9, "The File doesn\'t not exist."

    invoke-static {v8, v9}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    :goto_0
    return-object v1

    .line 623
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 624
    .local v5, "instream":Ljava/io/InputStream;
    if-eqz v5, :cond_0

    .line 625
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 626
    .local v4, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 629
    .local v0, "buffreader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 630
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 632
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 636
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v4    # "inputreader":Ljava/io/InputStreamReader;
    .end local v5    # "instream":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    const-string/jumbo v8, "TestFile"

    const-string/jumbo v9, "The File doesn\'t not exist."

    invoke-static {v8, v9}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :catch_1
    move-exception v2

    .line 639
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "TestFile"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static contentUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 175
    const/4 v8, 0x0

    .line 176
    .local v8, "file":Ljava/io/File;
    if-eqz p1, :cond_1

    .line 177
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    .line 178
    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, "actualimagecursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 180
    .local v6, "actual_image_column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "img_path":Ljava/lang/String;
    invoke-static {}, Lc8/JGo;->hasICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    if-eqz v7, :cond_0

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "actual_image_column_index":I
    .end local v7    # "actualimagecursor":Landroid/database/Cursor;
    .end local v9    # "img_path":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    :cond_1
    return-object v8
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "fileFromPath"    # Ljava/lang/String;
    .param p1, "fileToPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 537
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 540
    .local v4, "length":I
    rem-int/lit16 v8, v4, 0x800

    if-nez v8, :cond_0

    div-int/lit16 v3, v4, 0x800

    .line 541
    .local v3, "len":I
    :goto_0
    const/16 v8, 0x800

    new-array v7, v8, [B

    .line 542
    .local v7, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 543
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    .line 544
    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    .end local v0    # "i":I
    .end local v3    # "len":I
    .end local v7    # "temp":[B
    :cond_0
    div-int/lit16 v8, v4, 0x800
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v3, v8, 0x1

    goto :goto_0

    .line 548
    .restart local v0    # "i":I
    .restart local v3    # "len":I
    .restart local v7    # "temp":[B
    :cond_1
    if-eqz v2, :cond_2

    .line 549
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 550
    :cond_2
    if-eqz v6, :cond_3

    .line 551
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 554
    .end local v0    # "i":I
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "length":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "temp":[B
    :cond_3
    return-void

    .line 548
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v1, :cond_4

    .line 549
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 550
    :cond_4
    if-eqz v5, :cond_5

    .line 551
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v8

    .line 548
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 565
    const/16 v1, 0x2000

    .line 566
    .local v1, "bufferSize":I
    const/4 v3, 0x0

    .line 568
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    new-array v0, v1, [B

    .line 571
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "reacCount":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 572
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 577
    .end local v0    # "buffer":[B
    .end local v5    # "reacCount":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 578
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    if-eqz v3, :cond_0

    .line 584
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 588
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v6

    .line 574
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "reacCount":I
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 575
    const/4 v6, 0x1

    .line 582
    if-eqz v4, :cond_2

    .line 584
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    .line 588
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 586
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 587
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 586
    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "reacCount":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 587
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_3

    .line 584
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 588
    :cond_3
    :goto_5
    throw v6

    .line 586
    :catch_3
    move-exception v2

    .line 587
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 577
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, "parentFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/GGo;->prepareDir(Ljava/lang/String;)Z

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    .line 57
    .local v3, "result":Z
    const-string/jumbo v4, "createFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create folder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/aGo;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    const-string/jumbo v4, "createFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create folder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",result:false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/aGo;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 237
    .local v3, "files":[Ljava/io/File;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 238
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/GGo;->delete(Ljava/lang/String;)V

    .line 237
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 251
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "delete":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "delete":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFileArrays([Ljava/lang/String;)Z
    .locals 5
    .param p0, "delFilePaths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 262
    if-eqz p0, :cond_0

    .line 264
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 265
    .local v1, "delFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "delFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 272
    .end local v0    # "delFile":Ljava/io/File;
    .end local v1    # "delFilePath":Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 264
    .restart local v0    # "delFile":Ljava/io/File;
    .restart local v1    # "delFilePath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "delFile":Ljava/io/File;
    .end local v1    # "delFilePath":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static fileToByteArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v13, 0x0

    .line 102
    .local v13, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 105
    .local v9, "data":[B
    :try_start_0
    const-string/jumbo v4, "content"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 108
    .local v2, "imageUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_data"

    aput-object v5, v3, v4

    .line 109
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 110
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v4, "_data"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 111
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    new-instance v11, Ljava/io/File;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v11, "file":Ljava/io/File;
    invoke-static {}, Lc8/JGo;->hasICS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "imageUri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v13    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v9, v4, [B

    .line 125
    const/4 v12, 0x0

    .line 127
    .local v12, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v15

    .local v15, "temp":I
    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    .line 128
    int-to-byte v4, v15

    aput-byte v4, v9, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 117
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "i":I
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "temp":I
    .restart local v13    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "file"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    new-instance v11, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "file":Ljava/io/File;
    goto :goto_0

    .line 121
    .end local v11    # "file":Ljava/io/File;
    :cond_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v11    # "file":Ljava/io/File;
    goto :goto_0

    .line 137
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "i":I
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "temp":I
    :cond_3
    if-eqz v14, :cond_4

    .line 138
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object v13, v14

    .line 145
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "i":I
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "temp":I
    .restart local v13    # "is":Ljava/io/InputStream;
    :cond_5
    :goto_2
    return-object v9

    .line 141
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "i":I
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "temp":I
    :catch_0
    move-exception v10

    .line 142
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v14

    .line 144
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 132
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "i":I
    .end local v15    # "temp":I
    :catch_1
    move-exception v10

    .line 133
    .local v10, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    if-eqz v13, :cond_5

    .line 138
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 141
    :catch_2
    move-exception v10

    .line 142
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 136
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 137
    :goto_4
    if-eqz v13, :cond_6

    .line 138
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 143
    :cond_6
    :goto_5
    throw v4

    .line 141
    :catch_3
    move-exception v10

    .line 142
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 136
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 132
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v13, v14

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static formatPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v0, "/sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 95
    const-string/jumbo v0, "/sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getByteArrayByFile(Ljava/io/File;)[B
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 303
    const/4 v5, 0x0

    .line 304
    .local v5, "stream":Ljava/io/BufferedInputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 305
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 307
    .local v3, "outsteam":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .local v6, "stream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .local v4, "outsteam":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 311
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 316
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    if-eqz v5, :cond_0

    .line 324
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 332
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 322
    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :cond_1
    if-eqz v6, :cond_3

    .line 324
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 325
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 329
    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 327
    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 329
    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 327
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 319
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    if-eqz v5, :cond_0

    .line 324
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 327
    :catch_4
    move-exception v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 324
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 329
    :cond_2
    :goto_5
    throw v7

    .line 327
    :catch_5
    move-exception v1

    .line 328
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 318
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 315
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    goto :goto_1

    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedInputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "outsteam":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "outsteam":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedInputStream;
    .restart local v5    # "stream":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 761
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 766
    .local v0, "cachePath":Ljava/io/File;
    :goto_0
    return-object v0

    .line 764
    .end local v0    # "cachePath":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/io/File;
    goto :goto_0
.end method

.method public static getDiskFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 771
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 776
    .local v0, "file":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 777
    :cond_0
    return-object v0

    .line 774
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method public static getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "filepath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .end local v0    # "filepath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "curdir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/GGo;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "curdir"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v1, "/"

    .line 167
    .local v1, "separator":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string/jumbo v1, ""

    .line 170
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "clickedFile":Ljava/io/File;
    return-object v0
.end method

.method public static getFileInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object v1, v2

    .line 200
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFileSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "lvalue"    # J

    .prologue
    const-wide/32 v8, 0x100000

    const-wide/16 v6, 0x400

    const/high16 v4, 0x44800000    # 1024.0f

    .line 68
    long-to-float v1, p0

    .line 69
    .local v1, "ftmp":F
    cmp-long v2, p0, v8

    if-ltz v2, :cond_0

    .line 71
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "#.00 "

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float v3, v1, v3

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :goto_0
    return-object v2

    .line 74
    :cond_0
    cmp-long v2, p0, v8

    if-gez v2, :cond_1

    cmp-long v2, p0, v6

    if-lez v2, :cond_1

    .line 75
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "#.00 "

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-float v3, v1, v4

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_2

    cmp-long v2, p0, v6

    if-gtz v2, :cond_2

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "0.00 "

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-float v3, v1, v4

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_2
    const-string/jumbo v2, "0.00K"

    goto :goto_0
.end method

.method public static getPathWithoutFilename(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 281
    if-eqz p0, :cond_2

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    .end local p0    # "file":Ljava/io/File;
    :goto_0
    return-object p0

    .line 287
    .restart local p0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "filepath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "pathwithoutname":Ljava/lang/String;
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_1
    new-instance p0, Ljava/io/File;

    .end local p0    # "file":Ljava/io/File;
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "pathwithoutname":Ljava/lang/String;
    .restart local p0    # "file":Ljava/io/File;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    .line 150
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prepareDir(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    sget-object v1, Lc8/GGo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDir_create folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",result:true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    .line 44
    :cond_1
    sget-object v1, Lc8/GGo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDir_create folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",result:false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 594
    const-string/jumbo v1, ""

    .line 596
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 597
    .local v3, "stream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 599
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 600
    int-to-char v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 608
    .end local v0    # "c":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 609
    :goto_1
    return-object v1

    .line 602
    .restart local v0    # "c":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 603
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .end local v0    # "c":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static refreshAlbum(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localUri"    # Landroid/net/Uri;

    .prologue
    .line 526
    if-eqz p0, :cond_0

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 528
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    .end local v0    # "localIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static refreshAlbum(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    .line 519
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 520
    .local v1, "localUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 521
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    .end local v0    # "localIntent":Landroid/content/Intent;
    .end local v1    # "localUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public static saveByteToData(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 475
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 476
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveByteToFile(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "buffs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 410
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 413
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 414
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 416
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    if-eqz v2, :cond_2

    .line 429
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .line 435
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 432
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 435
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 420
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :catch_1
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    if-eqz v1, :cond_3

    .line 429
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 432
    :catch_2
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    if-eqz v1, :cond_3

    .line 429
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 432
    :catch_4
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 428
    :goto_4
    if-eqz v1, :cond_4

    .line 429
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 434
    :cond_4
    :goto_5
    throw v4

    .line 432
    :catch_5
    move-exception v0

    .line 433
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 423
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 420
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveByteToFile(Ljava/io/File;[B)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .param p1, "buff"    # [B

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, "fOut":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_1

    :try_start_0
    array-length v3, p1

    if-eqz v3, :cond_1

    .line 345
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 349
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 351
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 365
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 366
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 372
    :cond_2
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    if-eqz v1, :cond_2

    .line 366
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 369
    :catch_2
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 358
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    if-eqz v1, :cond_2

    .line 366
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 369
    :catch_4
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    if-eqz v1, :cond_2

    .line 366
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 369
    :catch_6
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 365
    :goto_4
    if-eqz v1, :cond_3

    .line 366
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 371
    :cond_3
    :goto_5
    throw v3

    .line 369
    :catch_7
    move-exception v0

    .line 370
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 360
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 357
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 354
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveByteToPath(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "buffs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .line 377
    .local v3, "fOut":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 380
    invoke-static {p0}, Lc8/GGo;->createFile(Ljava/lang/String;)Z

    .line 381
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v1    # "f":Ljava/io/File;
    .local v2, "f":Ljava/io/File;
    move-object v1, v2

    .line 383
    .end local v2    # "f":Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .local v4, "fOut":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 385
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    if-eqz v4, :cond_2

    .line 398
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    .line 404
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 401
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 404
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :catch_1
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    if-eqz v3, :cond_3

    .line 398
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 401
    :catch_2
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    if-eqz v3, :cond_3

    .line 398
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 401
    :catch_4
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 397
    :goto_4
    if-eqz v3, :cond_4

    .line 398
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 403
    :cond_4
    :goto_5
    throw v6

    .line 401
    :catch_5
    move-exception v0

    .line 402
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 392
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 389
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveByteToSDCard(Landroid/content/Context;Ljava/io/File;[B)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 448
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 449
    invoke-static {p0, p1}, Lc8/GGo;->refreshAlbum(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    if-eqz v2, :cond_0

    .line 457
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 463
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 460
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 463
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    if-eqz v1, :cond_1

    .line 457
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 460
    :catch_2
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 456
    :goto_2
    if-eqz v1, :cond_2

    .line 457
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 462
    :cond_2
    :goto_3
    throw v3

    .line 460
    :catch_3
    move-exception v0

    .line 461
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 451
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveStreamToPath(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, "fOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 491
    invoke-static {p1}, Lc8/GGo;->createFile(Ljava/lang/String;)Z

    .line 492
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    move-object v2, v3

    .line 494
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .local v5, "fOut":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 497
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 498
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 501
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 502
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    if-eqz v4, :cond_1

    .line 508
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 509
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 514
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 500
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 507
    if-eqz v5, :cond_3

    .line 508
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 509
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v4, v5

    .line 513
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 511
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 514
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 511
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 503
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 504
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 507
    if-eqz v4, :cond_1

    .line 508
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 509
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 511
    :catch_4
    move-exception v1

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 506
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 507
    :goto_4
    if-eqz v4, :cond_4

    .line 508
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 509
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 513
    :cond_4
    :goto_5
    throw v7

    .line 511
    :catch_5
    move-exception v1

    .line 512
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 506
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 503
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 501
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static splitAmrFileByTime(Landroid/content/Context;Ljava/lang/String;II)[Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "amrTotalTimes"    # I
    .param p3, "spliTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v15, "sourceFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 656
    :cond_0
    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "No SD Card"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 660
    :cond_1
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 661
    .local v4, "fileLength":J
    sget-object v18, Lc8/GGo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "splitAmrFileByTime \u6e90\u6587\u4ef6\u5927\u5c0f: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 666
    .local v12, "parentFile":Ljava/io/File;
    const-string/jumbo v18, "#!AMR\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 668
    .local v7, "header":[B
    add-int v18, p2, p3

    add-int/lit8 v18, v18, -0x1

    div-int v3, v18, p3

    .line 671
    .local v3, "fileNum":I
    new-array v11, v3, [Ljava/lang/String;

    .line 674
    .local v11, "outFileNames":[Ljava/lang/String;
    invoke-static {v15}, Lc8/GGo;->getByteArrayByFile(Ljava/io/File;)[B

    move-result-object v16

    .line 677
    .local v16, "sourceFileByte":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    mul-int v18, v18, p3

    div-int v14, v18, p2

    .line 678
    .local v14, "singleFileSize":I
    sget-object v18, Lc8/GGo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "splitAmrFileByTime \u6bcf\u4e2abyte\u957f\u5ea6  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v6, 0x0

    .line 685
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .local v10, "outFileIndex":I
    :goto_0
    if-ge v10, v3, :cond_5

    .line 687
    new-instance v9, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".amr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 688
    .local v9, "outFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 690
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    if-eqz v10, :cond_2

    .line 691
    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 694
    :cond_2
    mul-int v8, v10, v14

    .line 695
    .local v8, "offset":I
    add-int v2, v8, v14

    .line 697
    .local v2, "end":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v2, v0, :cond_3

    .line 698
    move-object/from16 v0, v16

    array-length v2, v0

    .line 700
    :cond_3
    sget-object v18, Lc8/GGo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\u6bcf\u4e2abyte\u8d77\u59cb,\u7ed3\u675f\u4f4d\u7f6e  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "------"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sub-int v18, v2, v8

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 703
    .local v13, "singleCutFileBytes":[B
    const/16 v17, 0x0

    .line 704
    .local v17, "x":I
    :goto_1
    if-ge v8, v2, :cond_4

    .line 705
    aget-byte v18, v16, v8

    aput-byte v18, v13, v17

    .line 706
    add-int/lit8 v17, v17, 0x1

    .line 704
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 709
    :cond_4
    invoke-virtual {v6, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 710
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v10

    .line 685
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 717
    .end local v2    # "end":I
    .end local v8    # "offset":I
    .end local v9    # "outFile":Ljava/io/File;
    .end local v13    # "singleCutFileBytes":[B
    .end local v17    # "x":I
    :cond_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 718
    return-object v11
.end method

.method public static splitBuffer([BII)Ljava/util/ArrayList;
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "length"    # I
    .param p2, "spsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-lez p2, :cond_0

    if-lez p1, :cond_0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, p1, :cond_1

    .line 752
    :cond_0
    return-object v0

    .line 736
    :cond_1
    const/4 v3, 0x0

    .line 737
    .local v3, "size":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 738
    sub-int v1, p1, v3

    .line 739
    .local v1, "left":I
    if-ge p2, v1, :cond_2

    .line 740
    new-array v2, p2, [B

    .line 741
    .local v2, "sdata":[B
    invoke-static {p0, v3, v2, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    add-int/2addr v3, p2

    .line 744
    goto :goto_0

    .line 746
    .end local v2    # "sdata":[B
    :cond_2
    new-array v2, v1, [B

    .line 747
    .restart local v2    # "sdata":[B
    invoke-static {p0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/2addr v3, v1

    .line 751
    goto :goto_0
.end method
