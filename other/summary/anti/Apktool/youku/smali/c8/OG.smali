.class public Lc8/OG;
.super Ljava/lang/Object;
.source "ZipAppUpdateManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "PackageApp-ZipAppUpdateManager"

    sput-object v0, Lc8/OG;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preloadZipInstall(Ljava/lang/String;)Z
    .locals 12
    .param p0, "zipFileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lc8/AG;->clearTmpDir(Ljava/lang/String;Z)Z

    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v10

    invoke-virtual {v10, p0}, Lc8/AG;->getPreloadInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 105
    if-nez v2, :cond_1

    .line 106
    sget-object v9, Lc8/OG;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "\u83b7\u53d6\u9884\u88c5\u5305\u5931\u8d25\u6216\u8005\u4e0d\u5b58\u5728\u9884\u88c5\u5305"

    invoke-static {v9, v10}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v2, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :cond_0
    :goto_0
    return v8

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v3

    .line 110
    .local v3, "loc":Lc8/WG;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v11

    invoke-virtual {v11}, Lc8/AG;->getRootPathTmp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lc8/dH;->APP_PREFIXES_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "prefixesPath":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 112
    new-instance v3, Lc8/WG;

    .end local v3    # "loc":Lc8/WG;
    invoke-direct {v3}, Lc8/WG;-><init>()V

    .line 115
    .restart local v3    # "loc":Lc8/WG;
    :cond_2
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v10

    invoke-virtual {v10}, Lc8/AG;->getRootPathTmp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lc8/KD;->unzip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v7

    .line 116
    .local v7, "res":Z
    if-nez v7, :cond_3

    .line 117
    const-string/jumbo v9, "ZipAppFileManager"

    const-string/jumbo v10, "\u9884\u88c5\u89e3\u538b\u7f29\u5931\u8d25"

    invoke-static {v9, v10}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v2, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lc8/AG;->readGlobalConfig(Z)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lc8/aH;->parseGlobalConfig(Ljava/lang/String;)Lc8/WG;

    move-result-object v4

    .line 122
    .local v4, "locpreConfig":Lc8/WG;
    invoke-static {v3, v4}, Lc8/OG;->updateFromPreLoadApps(Lc8/WG;Lc8/WG;)V

    .line 123
    const-string/jumbo v10, "0"

    iput-object v10, v4, Lc8/WG;->v:Ljava/lang/String;

    .line 125
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v10

    invoke-virtual {v10, v6}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "prefixesData":Ljava/lang/String;
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v10

    invoke-virtual {v10, v5}, Lc8/uG;->parseConfig(Ljava/lang/String;)Z

    .line 127
    invoke-static {v3}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    if-eqz v2, :cond_4

    .line 134
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_1
    move v8, v9

    .line 137
    goto/16 :goto_0

    .line 135
    :catch_2
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "loc":Lc8/WG;
    .end local v4    # "locpreConfig":Lc8/WG;
    .end local v5    # "prefixesData":Ljava/lang/String;
    .end local v6    # "prefixesPath":Ljava/lang/String;
    .end local v7    # "res":Z
    :catch_3
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    if-eqz v2, :cond_0

    .line 134
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 135
    :catch_4
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_5

    .line 134
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 137
    :cond_5
    :goto_2
    throw v8

    .line 135
    :catch_5
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static startUpdateApps(Lc8/WG;)V
    .locals 9
    .param p0, "onlineConfig"    # Lc8/WG;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    :try_start_0
    sget-object v6, Lc8/OG;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startUpdateApps: GlobalConfig file parse error or invalid!"

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v5

    .line 57
    .local v5, "locConfig":Lc8/WG;
    const-string/jumbo v6, "-1"

    iget-object v7, p0, Lc8/WG;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 58
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lc8/WG;->isAvailableData()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lc8/WG;->isAvailableData()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    invoke-virtual {v5}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 61
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 65
    .local v2, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget-object v6, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v3

    .line 66
    .local v3, "infoOnline":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v6

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v6, v7, :cond_1

    .line 68
    :cond_2
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v6

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v6, v7, :cond_1

    .line 69
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v2    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v3    # "infoOnline":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    .end local v5    # "locConfig":Lc8/WG;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lc8/OG;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startUpdateApps: exception ."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    sget v6, Lc8/UG;->ERR_APPS_CONFIG_PARSE:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/KG;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    .restart local v5    # "locConfig":Lc8/WG;
    :cond_3
    :try_start_1
    invoke-static {v5}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    .line 81
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_4
    :goto_2
    iget-object v6, p0, Lc8/WG;->v:Ljava/lang/String;

    iput-object v6, v5, Lc8/WG;->online_v:Ljava/lang/String;

    .line 83
    invoke-static {p0, v5}, Lc8/OG;->updateAppsInfo(Lc8/WG;Lc8/WG;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v6

    invoke-virtual {v6}, Lc8/AG;->clearAppsDir()Z

    .line 76
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lc8/AG;->clearTmpDir(Ljava/lang/String;Z)Z

    .line 77
    new-instance v5, Lc8/WG;

    .end local v5    # "locConfig":Lc8/WG;
    invoke-direct {v5}, Lc8/WG;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "locConfig":Lc8/WG;
    goto :goto_2
.end method

.method private static updateAppsInfo(Lc8/WG;Lc8/WG;)V
    .locals 6
    .param p0, "online"    # Lc8/WG;
    .param p1, "local"    # Lc8/WG;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc8/WG;->isAvailableData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    :cond_0
    sget-object v3, Lc8/OG;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateAppsInfo: onlineConfig is null or appsMap is null"

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    sget-object v3, Lc8/OG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAppsInfo: \u5f00\u59cb\u66f4\u65b0\u6240\u6709\u5e94\u7528\u4fe1\u606f[count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 163
    .local v2, "val_online":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget-object v3, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lc8/WG;->putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    goto :goto_1

    .line 165
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v2    # "val_online":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_2
    iget-object v3, p0, Lc8/WG;->v:Ljava/lang/String;

    iput-object v3, p1, Lc8/WG;->v:Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    goto :goto_0
.end method

.method private static updateFromPreLoad(Lc8/WG;Lc8/WG;)V
    .locals 10
    .param p0, "loc"    # Lc8/WG;
    .param p1, "online"    # Lc8/WG;

    .prologue
    .line 191
    invoke-virtual {p1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "key_online":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 197
    .local v5, "val_online":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 204
    .local v4, "val_loc":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v4, :cond_1

    iget-wide v6, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    iget-wide v8, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 206
    :cond_1
    sget v6, Lc8/dH;->ZIP_NEWEST:I

    iput v6, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 207
    iget-wide v6, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iput-wide v6, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 208
    iget-object v6, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v6, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 210
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lc8/NG;->checkCopyUpdateDel(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)I

    move-result v3

    .line 211
    .local v3, "resultcode":I
    sget v6, Lc8/UG;->SECCUSS:I

    if-ne v3, v6, :cond_2

    .line 212
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 214
    :cond_2
    sget-object v6, Lc8/OG;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]:\u9884\u88c5\u51fa\u9519"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v2    # "key_online":Ljava/lang/String;
    .end local v3    # "resultcode":I
    .end local v4    # "val_loc":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v5    # "val_online":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_3
    return-void
.end method

.method private static updateFromPreLoadApps(Lc8/WG;Lc8/WG;)V
    .locals 2
    .param p0, "loc"    # Lc8/WG;
    .param p1, "online"    # Lc8/WG;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/WG;->isAvailableData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    sget-object v0, Lc8/OG;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startUpdateApps:[updateApps]  param error ."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {p0, p1}, Lc8/OG;->updateFromPreLoad(Lc8/WG;Lc8/WG;)V

    goto :goto_0
.end method
