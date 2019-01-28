.class public Lc8/uG;
.super Ljava/lang/Object;
.source "WVPackageAppPrefixesConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVPackageAppPrefixesConfig"

.field private static final VERION_KEY:Ljava/lang/String; = "WVZipPrefixesVersion"

.field private static volatile instance:Lc8/uG;


# instance fields
.field public preViewMode:Z

.field public updateCount:I

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lc8/uG;->instance:Lc8/uG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/uG;->v:Ljava/lang/String;

    .line 33
    iput v1, p0, Lc8/uG;->updateCount:I

    .line 34
    iput-boolean v1, p0, Lc8/uG;->preViewMode:Z

    return-void
.end method

.method public static getInstance()Lc8/uG;
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lc8/uG;->instance:Lc8/uG;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lc8/uG;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lc8/uG;->instance:Lc8/uG;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/uG;

    invoke-direct {v0}, Lc8/uG;-><init>()V

    .line 40
    sput-object v0, Lc8/uG;->instance:Lc8/uG;

    const-string/jumbo v2, "WVZipPrefixes"

    const-string/jumbo v3, "WVZipPrefixesVersion"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/uG;->v:Ljava/lang/String;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lc8/uG;->instance:Lc8/uG;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Z
    .locals 14
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v9

    .line 116
    :cond_1
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    .line 118
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "jsonObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_6

    .line 120
    const-string/jumbo v11, "v"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/uG;->v:Ljava/lang/String;

    .line 121
    const-string/jumbo v11, "i"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "i":Ljava/lang/String;
    iget-object v11, p0, Lc8/uG;->v:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 126
    const-string/jumbo v11, "rules"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "rules":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 128
    invoke-static {v8}, Lc8/fH;->parsePrefixes(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v7

    .line 130
    .local v7, "prefixes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_5

    const-string/jumbo v11, "-1"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v1, v10

    .line 131
    .local v1, "forceClear":Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v11, p0, Lc8/uG;->preViewMode:Z

    if-nez v11, :cond_2

    .line 132
    invoke-static {}, Lc8/QG;->getInstance()Lc8/QG;

    move-result-object v11

    invoke-virtual {v11}, Lc8/QG;->clear()V

    .line 134
    :cond_2
    invoke-static {}, Lc8/QG;->getInstance()Lc8/QG;

    move-result-object v11

    invoke-virtual {v11, v7}, Lc8/QG;->mergePrefixes(Ljava/util/Hashtable;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 136
    const-string/jumbo v11, "WVZipPrefixes"

    const-string/jumbo v12, "WVZipPrefixesVersion"

    iget-object v13, p0, Lc8/uG;->v:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_3
    if-eqz v1, :cond_6

    .line 140
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v6

    .line 141
    .local v6, "locConfig":Lc8/WG;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lc8/WG;->isAvailableData()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 142
    invoke-virtual {v6}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 143
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 146
    .local v3, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v11

    sget-object v12, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v11, v12, :cond_4

    invoke-static {}, Lc8/QG;->getInstance()Lc8/QG;

    move-result-object v11

    iget-object v12, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lc8/QG;->isAvailableApp(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 147
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v11

    invoke-virtual {v11, v3}, Lc8/NG;->unInstall(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)I

    .line 148
    const-string/jumbo v11, "WVPackageAppPrefixesConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unInstall not availableApp : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 156
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v1    # "forceClear":Z
    .end local v2    # "i":Ljava/lang/String;
    .end local v3    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "locConfig":Lc8/WG;
    .end local v7    # "prefixes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "rules":Ljava/lang/String;
    :catch_0
    move-exception v10

    const-string/jumbo v10, "WVPackageAppPrefixesConfig"

    const-string/jumbo v11, "parse PrefixesInfos error!"

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2    # "i":Ljava/lang/String;
    .restart local v5    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "prefixes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "rules":Ljava/lang/String;
    :cond_5
    move v1, v9

    .line 130
    goto/16 :goto_1

    .end local v2    # "i":Ljava/lang/String;
    .end local v7    # "prefixes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "rules":Ljava/lang/String;
    :cond_6
    move v9, v10

    .line 160
    goto/16 :goto_0
.end method

.method public declared-synchronized resetConfig()V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/uG;->v:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "WVZipPrefixes"

    const-string/jumbo v1, "WVZipPrefixesVersion"

    iget-object v2, p0, Lc8/uG;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lc8/QG;->getInstance()Lc8/QG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QG;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePrefixesInfos(Ljava/lang/String;Lc8/LB;Ljava/lang/String;)V
    .locals 10
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;
    .param p3, "snapshotN"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 60
    const/4 v6, 0x0

    iput v6, p0, Lc8/uG;->updateCount:I

    .line 62
    move-object v3, p3

    .line 63
    .local v3, "snapshotId":Ljava/lang/String;
    const-string/jumbo v6, "wv_main_config"

    const-string/jumbo v7, "prefixes_updateTime"

    invoke-static {v6, v7, v8, v9}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    .local v0, "configUpdateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 65
    .local v4, "useTime":J
    sget-object v6, Lc8/DB;->commonConfig:Lc8/EB;

    iget v6, v6, Lc8/EB;->recoveryInterval:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 67
    :cond_0
    const-string/jumbo v6, "0"

    iput-object v6, p0, Lc8/uG;->v:Ljava/lang/String;

    .line 68
    const-string/jumbo v3, "0"

    .line 70
    const-string/jumbo v6, "wv_main_config"

    const-string/jumbo v7, "prefixes_updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v6

    const-string/jumbo v7, "7"

    iget-object v8, p0, Lc8/uG;->v:Ljava/lang/String;

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v3}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "configUrl":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v6

    new-instance v7, Lc8/tG;

    invoke-direct {v7, p0, p2}, Lc8/tG;-><init>(Lc8/uG;Lc8/LB;)V

    invoke-virtual {v6, v2, v7}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 106
    return-void

    .line 75
    .end local v2    # "configUrl":Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .restart local v2    # "configUrl":Ljava/lang/String;
    goto :goto_0
.end method
