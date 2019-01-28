.class public Lc8/APg;
.super Ljava/lang/Object;
.source "FontFamilyStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-families"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveInfos(Landroid/content/Context;)[Lc8/uPg;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 62
    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lc8/APg;->getDefaultStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v5, "fontFamilyDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 67
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_5

    array-length v12, v4

    if-lez v12, :cond_5

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v6, "fontFamilyInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/arch/fontcompat/fontfamily/FontFamilyInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v12, v4

    if-ge v7, v12, :cond_4

    .line 72
    new-instance v3, Ljava/io/File;

    aget-object v12, v4, v7

    const-string/jumbo v13, "info"

    invoke-direct {v3, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 75
    const/4 v9, 0x0

    .line 77
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v0, ""

    .line 81
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {v0}, Lc8/uPg;->createFromJsonString(Ljava/lang/String;)Lc8/uPg;

    move-result-object v2

    .line 86
    .local v2, "familyInfo":Lc8/uPg;
    if-eqz v2, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :cond_1
    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "familyInfo":Lc8/uPg;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 93
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "familyInfo":Lc8/uPg;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "familyInfo":Lc8/uPg;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 93
    :catch_2
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 92
    :goto_4
    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    :cond_3
    :goto_5
    throw v11

    .line 93
    :catch_3
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lc8/uPg;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lc8/uPg;

    .line 104
    .end local v4    # "files":[Ljava/io/File;
    .end local v6    # "fontFamilyInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/arch/fontcompat/fontfamily/FontFamilyInfo;>;"
    .end local v7    # "i":I
    :cond_5
    return-object v11

    .line 91
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v6    # "fontFamilyInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/arch/fontcompat/fontfamily/FontFamilyInfo;>;"
    .restart local v7    # "i":I
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 87
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static storeInfo(Landroid/content/Context;Lc8/uPg;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lc8/uPg;

    .prologue
    .line 29
    if-eqz p1, :cond_2

    .line 30
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lc8/APg;->getDefaultStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lc8/uPg;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v3, "fontFamilyStoreDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "info"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v2, "fontFamilyInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 39
    :cond_1
    invoke-virtual {p1}, Lc8/uPg;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 42
    const/4 v4, 0x0

    .line 44
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v5, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "fontFamilyInfoFile":Ljava/io/File;
    .end local v3    # "fontFamilyStoreDir":Ljava/io/File;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 53
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "fontFamilyInfoFile":Ljava/io/File;
    .restart local v3    # "fontFamilyStoreDir":Ljava/io/File;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 53
    :catch_2
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 52
    :goto_2
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    :cond_3
    :goto_3
    throw v6

    .line 53
    :catch_3
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 48
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1
.end method
