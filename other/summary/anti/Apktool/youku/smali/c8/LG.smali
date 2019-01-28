.class public Lc8/LG;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static Tag:Ljava/lang/String;

.field private static locGobalConfig:Lc8/WG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "PackageApp-ConfigManager"

    sput-object v0, Lc8/LG;->Tag:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lc8/LG;->locGobalConfig:Lc8/WG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocGlobalConfig()Lc8/WG;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/jG;

    invoke-direct {v0}, Lc8/jG;-><init>()V

    invoke-static {v0}, Lc8/xG;->registerWvPackageAppConfig(Lc8/kG;)V

    .line 41
    :cond_0
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    invoke-interface {v0}, Lc8/kG;->getGlobalConfig()Lc8/WG;

    move-result-object v0

    return-object v0
.end method

.method public static saveGlobalConfigToloc(Lc8/WG;)Z
    .locals 1
    .param p0, "globalConfig"    # Lc8/WG;

    .prologue
    .line 118
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/kG;->saveLocalConfig(Lc8/WG;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "appsInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isDel"    # Z

    .prologue
    const/4 v3, 0x0

    .line 63
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 64
    :try_start_0
    sget-object v4, Lc8/LG;->Tag:Ljava/lang/String;

    const-string/jumbo v5, "UpdateGlobalConfig:param is null"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return v3

    .line 68
    :cond_1
    if-nez p2, :cond_3

    .line 69
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lc8/WG;->putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    .line 86
    :cond_2
    :goto_1
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    invoke-static {v4}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    move-result v2

    .line 87
    .local v2, "res":Z
    if-nez v2, :cond_5

    .line 88
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    sget-object v4, Lc8/LG;->Tag:Ljava/lang/String;

    const-string/jumbo v5, "UpdateGlobalConfig:save to localfile fail  "

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lc8/LG;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateGlobalConfig:exception  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v4, v5, :cond_4

    .line 75
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/WG;->removeAppInfoFromTable(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_4
    iget v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v5, Lc8/dH;->ZIP_REMOVED:I

    if-ne v4, v5, :cond_2

    .line 77
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v1

    .line 78
    .local v1, "oldInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v1, :cond_2

    .line 79
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 80
    const-string/jumbo v4, "0.0"

    iput-object v4, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    goto :goto_1

    .line 94
    .end local v1    # "oldInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v2    # "res":Z
    :cond_5
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    invoke-virtual {v4}, Lc8/WG;->getZcacheResConfig()Ljava/util/Hashtable;

    move-result-object v4

    invoke-static {v4}, Lc8/fH;->savaZcacheMapToLoc(Ljava/util/Hashtable;)Z

    move-result v2

    .line 95
    if-nez v2, :cond_6

    .line 96
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    sget-object v4, Lc8/LG;->Tag:Ljava/lang/String;

    const-string/jumbo v5, "UpdateZcacheConfig:save to localfile fail  "

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 101
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static updateGlobalConfigAppStatus(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;I)V
    .locals 3
    .param p0, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "status"    # I

    .prologue
    .line 124
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 125
    .local v0, "locappinfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v0, :cond_0

    .line 126
    iput p1, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 128
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    .line 129
    return-void
.end method

.method public static updateZcacheurlMap(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/WG;->addZcacheResConfig(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    return-void
.end method
