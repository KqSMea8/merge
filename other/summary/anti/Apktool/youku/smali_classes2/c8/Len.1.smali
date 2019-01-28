.class public Lc8/Len;
.super Ljava/lang/Object;
.source "VideoDeleteErrorStat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    .end local p0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p0

    .line 180
    .restart local p0    # "file":Ljava/io/File;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static getDeleteErrorFileOrDir(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "dirFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 140
    .local v1, "errorFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 142
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 143
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 144
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 145
    invoke-static {v2}, Lc8/Len;->deleteFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_4

    .line 158
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 168
    .end local v0    # "dirFile":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_2
    :goto_1
    return-object v0

    .line 150
    .restart local v0    # "dirFile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/Len;->getDeleteErrorFileOrDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 151
    if-nez v1, :cond_1

    .line 143
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static register()V
    .locals 4

    .prologue
    .line 22
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "vid"

    .line 23
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "sdPath1"

    .line 24
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "sdPath2"

    .line 25
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "sdPath3"

    .line 26
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "sdPath4"

    .line 27
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "errorFile"

    .line 28
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "errorFileState"

    .line 29
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "downloadState"

    .line 30
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "exception"

    .line 31
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "exceptionMsg"

    .line 32
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "inputMethod"

    .line 33
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "title"

    .line 34
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "deleteFilePath"

    .line 35
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v2, "currentDownloadSDPath"

    .line 36
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 37
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v1, "VideoDownload"

    const-string/jumbo v2, "delete_video_error"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 38
    return-void
.end method

.method private static reset(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 2
    .param p0, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 93
    const-string/jumbo v0, "vid"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 94
    const-string/jumbo v0, "sdPath1"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 95
    const-string/jumbo v0, "sdPath2"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 96
    const-string/jumbo v0, "sdPath3"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 97
    const-string/jumbo v0, "sdPath4"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 98
    const-string/jumbo v0, "errorFile"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 99
    const-string/jumbo v0, "errorFileState"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 100
    const-string/jumbo v0, "downloadState"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 101
    const-string/jumbo v0, "exception"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 102
    const-string/jumbo v0, "exceptionMsg"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 103
    const-string/jumbo v0, "inputMethod"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 104
    const-string/jumbo v0, "title"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 105
    const-string/jumbo v0, "deleteFilePath"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 106
    const-string/jumbo v0, "currentDownloadSDPath"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 107
    return-void
.end method

.method private static setErrorFile(Lcom/youku/service/download/DownloadInfo;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 4
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;
    .param p1, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v2}, Lc8/Len;->getDeleteErrorFileOrDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v2, "errorFile"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "canExecute"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "|canRead"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "|canWrite"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "|exists"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v2, "errorFileState"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 127
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_4
    return-void

    .line 118
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const-string/jumbo v2, "noExecute"

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v2, "|noRead"

    goto :goto_1

    .line 120
    :cond_3
    const-string/jumbo v2, "|noWrite"

    goto :goto_2

    .line 121
    :cond_4
    const-string/jumbo v2, "|noExists"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 127
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method private static setException(Lcom/youku/service/download/DownloadInfo;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 5
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;
    .param p1, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string/jumbo v4, "statTmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v1, v2

    .line 90
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v3, "exception"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    const-string/jumbo v3, "exceptionMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v3

    .line 86
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .line 82
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method private static setSDPath(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 8
    .param p0, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lc8/wfn;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v4

    .line 193
    .local v4, "sdCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 194
    const/4 v1, 0x1

    .line 195
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vfn;

    .line 196
    .local v3, "sdCardInfo":Lc8/vfn;
    const/4 v5, 0x5

    if-ge v1, v5, :cond_3

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sdPath"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v5, v3, Lc8/vfn;->isExternal:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "external;"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_2

    .line 201
    new-instance v5, Ljava/io/File;

    iget-object v7, v3, Lc8/vfn;->path:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    :goto_2
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    goto :goto_0

    .line 199
    :cond_1
    const-string/jumbo v5, "internal;"

    goto :goto_1

    .line 202
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_4

    .line 203
    new-instance v5, Ljava/io/File;

    iget-object v7, v3, Lc8/vfn;->path:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 220
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sdCardInfo":Lc8/vfn;
    .end local v4    # "sdCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    :catch_0
    move-exception v5

    :cond_3
    return-void

    .line 205
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "sdCardInfo":Lc8/vfn;
    .restart local v4    # "sdCardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    :cond_4
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static statDeleteFileError(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V
    .locals 4
    .param p0, "inputMethod"    # Ljava/lang/String;
    .param p1, "currentDownloadSDPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 50
    .local v0, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v0}, Lc8/Len;->reset(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 53
    invoke-static {v0}, Lc8/Len;->setSDPath(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 56
    invoke-static {p2, v0}, Lc8/Len;->setErrorFile(Lcom/youku/service/download/DownloadInfo;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 59
    invoke-static {p2, v0}, Lc8/Len;->setException(Lcom/youku/service/download/DownloadInfo;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 61
    const-string/jumbo v1, "vid"

    iget-object v2, p2, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 62
    const-string/jumbo v1, "downloadState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/youku/service/download/DownloadInfo;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 63
    const-string/jumbo v1, "inputMethod"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 64
    const-string/jumbo v1, "title"

    iget-object v2, p2, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 65
    const-string/jumbo v1, "deleteFilePath"

    iget-object v2, p2, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 66
    const-string/jumbo v1, "currentDownloadSDPath"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 67
    const-string/jumbo v1, "VideoDownload"

    const-string/jumbo v2, "delete_video_error"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static statException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "inputMethod"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .param p3, "exceptionMsg"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 225
    .local v0, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 226
    const-string/jumbo v1, "sdPath1"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 227
    const-string/jumbo v1, "sdPath2"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 228
    const-string/jumbo v1, "sdPath3"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 229
    const-string/jumbo v1, "sdPath4"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 230
    const-string/jumbo v1, "errorFile"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 231
    const-string/jumbo v1, "errorFileState"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 232
    const-string/jumbo v1, "downloadState"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 233
    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 234
    const-string/jumbo v1, "exceptionMsg"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 235
    const-string/jumbo v1, "inputMethod"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 236
    const-string/jumbo v1, "title"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 237
    const-string/jumbo v1, "deleteFilePath"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 238
    const-string/jumbo v1, "currentDownloadSDPath"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 239
    const-string/jumbo v1, "VideoDownload"

    const-string/jumbo v2, "delete_video_error"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
