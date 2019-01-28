.class public Lc8/RHg;
.super Ljava/lang/Object;
.source "FileOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendWrite(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x200000

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 94
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    .line 105
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    .local v3, "writer":Ljava/io/BufferedWriter;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 112
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "len":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 113
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 119
    .end local v0    # "buffer":[C
    .end local v1    # "len":I
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "appendWrite exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 126
    :goto_1
    return v4

    .line 82
    :catch_1
    move-exception v5

    const-string/jumbo v5, "appendWrite exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :catch_2
    move-exception v5

    const-string/jumbo v5, "appendWrite error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 96
    :catch_3
    move-exception v5

    const-string/jumbo v5, "appendWrite exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :catch_4
    move-exception v5

    const-string/jumbo v5, "appendWrite error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .restart local v0    # "buffer":[C
    .restart local v1    # "len":I
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 116
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    move v4, v5

    .line 126
    goto :goto_1

    .line 122
    .end local v0    # "buffer":[C
    .end local v1    # "len":I
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v5

    const-string/jumbo v5, "appendWrite error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static clear(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 198
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    const-string/jumbo v0, "clear exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    const-string/jumbo v0, "clear error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v6, v7

    .line 180
    :goto_0
    return-object v6

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 148
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v5, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 151
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 154
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 165
    .end local v3    # "length":I
    :catch_0
    move-exception v8

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v8, "read exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 171
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    move-object v6, v7

    .line 180
    goto :goto_0

    .line 156
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "length":I
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 157
    .local v4, "localBytes":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "localBytes\u5b57\u8282\u6570:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 158
    if-eqz v4, :cond_5

    array-length v8, v4

    if-lez v8, :cond_5

    .line 160
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 161
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    :cond_3
    if-eqz v2, :cond_4

    .line 171
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 175
    :catch_1
    move-exception v7

    const-string/jumbo v7, "read exception"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :catch_2
    move-exception v7

    const-string/jumbo v7, "read error"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v6    # "str":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 171
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4

    move-object v1, v2

    .line 178
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 175
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    const-string/jumbo v8, "read exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    move-object v1, v2

    .line 178
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 177
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    const-string/jumbo v8, "read error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    move-object v1, v2

    .line 179
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 175
    .end local v3    # "length":I
    .end local v4    # "localBytes":[B
    :catch_5
    move-exception v8

    const-string/jumbo v8, "read exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 177
    :catch_6
    move-exception v8

    const-string/jumbo v8, "read error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 167
    :catch_7
    move-exception v8

    :goto_4
    :try_start_7
    const-string/jumbo v8, "read error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    if-eqz v1, :cond_7

    .line 171
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_3

    .line 175
    :catch_8
    move-exception v8

    const-string/jumbo v8, "read exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 177
    :catch_9
    move-exception v8

    const-string/jumbo v8, "read error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 169
    :catchall_0
    move-exception v7

    .line 170
    :goto_5
    if-eqz v1, :cond_8

    .line 171
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_b

    .line 178
    :goto_6
    throw v7

    .line 175
    :catch_a
    move-exception v8

    const-string/jumbo v8, "read exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_6

    .line 177
    :catch_b
    move-exception v8

    const-string/jumbo v8, "read error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_6

    .line 169
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 167
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v8

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 165
    :catch_d
    move-exception v8

    goto/16 :goto_2
.end method

.method public static readFileWithAES(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "logData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 42
    .local v0, "byteData":[B
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return v3

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v1, v2

    .line 66
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "write exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :catch_1
    move-exception v4

    const-string/jumbo v4, "write error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    :goto_2
    :try_start_3
    const-string/jumbo v4, "write exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 58
    :catch_3
    move-exception v4

    const-string/jumbo v4, "write exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :catch_4
    move-exception v4

    const-string/jumbo v4, "write error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :catch_5
    move-exception v4

    :goto_3
    :try_start_5
    const-string/jumbo v4, "write error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    .line 58
    :catch_6
    move-exception v4

    const-string/jumbo v4, "write exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :catch_7
    move-exception v4

    const-string/jumbo v4, "write error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v4

    .line 56
    :goto_4
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_9

    .line 62
    :cond_3
    throw v4

    .line 58
    :catch_8
    move-exception v4

    const-string/jumbo v4, "write exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :catch_9
    move-exception v4

    const-string/jumbo v4, "write error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 53
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 51
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static writeFileWithAES(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "logData"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
