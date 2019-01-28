.class public Lc8/Lfn;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# static fields
.field private static final KEY_4G_SCHEDULE_REGION:Ljava/lang/String; = "4g_schedule_region"

.field private static final KEY_ANTI_HIJACK:Ljava/lang/String; = "anti_hijack"

.field private static final KEY_CONCURRENT_THRESHOLD:Ljava/lang/String; = "concurrent_threshold"

.field private static final KEY_DOWNLOAD_ACC_RATE_KEY:Ljava/lang/String; = "download_acc_rate"

.field private static final KEY_REQUESG_DOWNLOADING_IMAGE:Ljava/lang/String; = "request_downloading_image"

.field private static final KEY_SHOW_VIP_DIALOG:Ljava/lang/String; = "show_vip_dialog"

.field private static final KEY_TRY_VALI:Ljava/lang/String; = "try_vali"

.field private static final KEY_USING_CONCURRENT:Ljava/lang/String; = "using_concurrent"

.field private static final KEY_USING_P2P:Ljava/lang/String; = "using_p2p"

.field private static final KEY_USING_PASSPORT:Ljava/lang/String; = "using_passport"

.field private static final KEY_USING_V2:Ljava/lang/String; = "using_v2"

.field private static final KEY_VIP_DOWNLOAD_FLAG_REQUEST_TIMEOUT:Ljava/lang/String; = "vip_download_flag_request_timeout"

.field public static final NS_DOWNLOAD_CONFIG:Ljava/lang/String; = "video_download_config"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p0}, Lc8/Lfn;->updateConfigs(Landroid/content/Context;)V

    return-void
.end method

.method public static antiHijack(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string/jumbo v0, "anti_hijack"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static canRequestDownloadingImage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string/jumbo v0, "request_downloading_image"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fetchConfigs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lc8/Lfn;->updateConfigs(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "video_download_config"

    aput-object v3, v1, v2

    new-instance v2, Lc8/Kfn;

    invoke-direct {v2, p0}, Lc8/Kfn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 42
    return-void
.end method

.method public static fixedPoolSize()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "video_download_config"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get4gScheduleRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string/jumbo v0, "video_download_config"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "4g_schedule_region"

    const-string/jumbo v2, "ykisptraffic.m.alikunlun.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConcurrentThreshold(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defalt"    # I

    .prologue
    .line 83
    const-string/jumbo v1, "concurrent_threshold"

    invoke-static {p0, v1}, Lc8/Lfn;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    .end local p1    # "defalt":I
    :goto_0
    return p1

    .line 88
    .restart local p1    # "defalt":I
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDownloadAccRate(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string/jumbo v2, "download_acc_rate"

    invoke-static {p0, v2}, Lc8/Lfn;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "val":Ljava/lang/String;
    const/high16 v0, -0x40800000    # -1.0f

    .line 143
    .local v0, "rate":F
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getVipTimeout(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/16 v1, 0xc8

    .line 117
    .local v1, "timeout":I
    :try_start_0
    const-string/jumbo v2, "vip_download_flag_request_timeout"

    invoke-static {p0, v2}, Lc8/Lfn;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "defalt"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "video_download_config"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static needShowVipDialog(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string/jumbo v0, "show_vip_dialog"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static tryVali(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string/jumbo v0, "try_vali"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static updateConfigs(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    const-string/jumbo v6, "video_download_config"

    invoke-virtual {v5, v6}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OrangeConfig Config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 48
    if-nez v0, :cond_0

    .line 60
    .end local v0    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 49
    .restart local v0    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, "video_download_config"

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OrangeConfig Config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    .end local v0    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static usingConcurrent(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string/jumbo v0, "using_concurrent"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static usingP2P(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string/jumbo v0, "using_p2p"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static usingPassportApi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string/jumbo v0, "using_passport"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static usingV2(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v0, "using_v2"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "true"

    invoke-static {p0, v0, v1, v2}, Lc8/Lfn;->keyIs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
