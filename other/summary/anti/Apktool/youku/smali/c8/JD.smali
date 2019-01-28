.class public Lc8/JD;
.super Ljava/lang/Object;
.source "FileAccesser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc8/JD;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/io/File;Z)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isSelf"    # Z

    .prologue
    .line 155
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 159
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lc8/JD;->deleteFile(Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 169
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 174
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    if-eqz p1, :cond_2

    .line 176
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 182
    :goto_2
    return v5

    .line 177
    :catch_2
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/JD;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static read(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "fileInput":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 40
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 54
    if-eqz v2, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 64
    :cond_1
    :goto_1
    return-object v4

    .line 43
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .local v3, "fileInput":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 54
    if-eqz v3, :cond_3

    .line 56
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 60
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 62
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_3
    move-object v2, v3

    .line 64
    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_1

    .line 50
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    :goto_4
    :try_start_7
    const-string/jumbo v5, "FileAccesser"

    const-string/jumbo v6, "read loacl file failed"

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 54
    if-eqz v2, :cond_5

    .line 56
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 60
    :cond_5
    :goto_5
    if-eqz v1, :cond_1

    .line 62
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v2, :cond_6

    .line 56
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 60
    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 62
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 64
    :cond_7
    :goto_8
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1

    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "fileInput":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_2

    :catch_5
    move-exception v5

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    goto :goto_5

    :catch_7
    move-exception v5

    goto :goto_7

    :catch_8
    move-exception v5

    goto :goto_8

    .line 54
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .restart local v3    # "fileInput":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_6

    .line 50
    .end local v2    # "fileInput":Ljava/io/FileInputStream;
    .restart local v3    # "fileInput":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .restart local v2    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static read(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/JD;->read(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/windvane/file/NotEnoughSpace;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 86
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 88
    .local v5, "parent":Ljava/io/File;
    if-nez v5, :cond_2

    .line 118
    if-eqz v2, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 127
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .end local v5    # "parent":Ljava/io/File;
    :cond_1
    :goto_1
    return v6

    .line 121
    .restart local v5    # "parent":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 94
    .end local v5    # "parent":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 97
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 99
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    if-eqz v3, :cond_4

    .line 120
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 125
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 127
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_3
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v6, v7

    .line 130
    goto :goto_1

    .line 121
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 108
    const-string/jumbo v7, "ENOSPC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 109
    new-instance v6, Landroid/taobao/windvane/file/NotEnoughSpace;

    const-string/jumbo v7, "not enouth space in flash"

    invoke-direct {v6, v7}, Landroid/taobao/windvane/file/NotEnoughSpace;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_6

    .line 120
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 125
    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    .line 127
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 130
    :cond_7
    :goto_7
    throw v6

    .line 113
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_8
    if-eqz p0, :cond_9

    .line 114
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 115
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 118
    if-eqz v2, :cond_a

    .line 120
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_8
    if-eqz v0, :cond_1

    .line 127
    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_1

    .line 128
    :catch_5
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "msg":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 105
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/windvane/file/NotEnoughSpace;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc8/JD;->write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z

    move-result v0

    goto :goto_0
.end method
