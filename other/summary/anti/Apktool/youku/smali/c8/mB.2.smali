.class public Lc8/mB;
.super Ljava/lang/Object;
.source "WindVaneSDK.java"


# static fields
.field private static final SPNAME_ENV:Ljava/lang/String; = "wv_evn"

.field private static final VALUE_NAME:Ljava/lang/String; = "evn_value"

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lc8/mB;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lc8/BB;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lc8/BB;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lc8/mB;->init(Landroid/content/Context;Ljava/lang/String;ILc8/BB;)V

    .line 51
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ILc8/BB;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "params"    # Lc8/BB;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-static {p0, p1, p3}, Lc8/mB;->init(Landroid/content/Context;Ljava/lang/String;Lc8/BB;)V

    .line 56
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lc8/BB;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/BB;

    .prologue
    const/4 v6, 0x1

    .line 69
    const-string/jumbo v4, "WindVaneSDK"

    const-string/jumbo v5, "WindVaneSDK init"

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "init error, context is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    instance-of v4, p0, Landroid/app/Application;

    if-eqz v4, :cond_1

    move-object v4, p0

    :goto_0
    check-cast v4, Landroid/app/Application;

    .line 74
    sput-object v4, Lc8/xB;->context:Landroid/app/Application;

    if-nez v4, :cond_2

    .line 75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "init error, context should be Application or its subclass"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    invoke-static {v6}, Lc8/ZH;->setLogSwitcher(Z)V

    .line 82
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    const-string/jumbo p1, "caches"

    .line 85
    :cond_4
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, p1, v5}, Lc8/qB;->init(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    invoke-static {p0}, Lc8/jB;->onCreate(Landroid/content/Context;)V

    .line 89
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 91
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string/jumbo v4, "uclibs.zip"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    .local v2, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    const-string/jumbo v5, "windvane/ucsdk"

    invoke-static {v4, v5}, Lc8/KD;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 93
    .local v1, "fileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "path":Ljava/lang/String;
    invoke-static {v2, v3}, Lc8/KD;->unzip(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 95
    iput-object v3, p2, Lc8/BB;->ucLibDir:Ljava/lang/String;

    .line 96
    const-string/jumbo v4, "WindVaneSDK"

    const-string/jumbo v5, "UC init by uclibs"

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "fileDir":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "path":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v4

    invoke-virtual {v4, p2}, Lc8/xB;->initParams(Lc8/BB;)Z

    .line 102
    invoke-static {}, Lc8/MH;->initDirs()Z

    .line 104
    invoke-static {}, Lc8/FF;->init()V

    .line 105
    invoke-static {}, Lc8/mB;->initConfig()V

    .line 106
    sput-boolean v6, Lc8/mB;->initialized:Z

    .line 107
    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static initConfig()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/OB;->init()V

    .line 114
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DB;->init()V

    .line 115
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    const-string/jumbo v1, "domain"

    new-instance v2, Lc8/kB;

    invoke-direct {v2}, Lc8/kB;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 124
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    const-string/jumbo v1, "common"

    new-instance v2, Lc8/lB;

    invoke-direct {v2}, Lc8/lB;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 132
    return-void
.end method

.method public static initURLCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 136
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lc8/qB;->init(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lc8/mB;->initialized:Z

    return v0
.end method

.method public static isTrustedUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p0}, Lc8/PB;->isTrustedUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openLog(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 143
    invoke-static {p0}, Lc8/ZH;->setLogSwitcher(Z)V

    .line 144
    return-void
.end method

.method public static setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V
    .locals 4
    .param p0, "env"    # Landroid/taobao/windvane/config/EnvEnum;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    const-string/jumbo v0, "wv_evn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnvMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sput-object p0, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    .line 166
    const-string/jumbo v0, "wv_evn"

    const-string/jumbo v1, "evn_value"

    invoke-static {v0, v1}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getKey()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KB;->resetConfig()V

    .line 171
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    invoke-interface {v0}, Lc8/kG;->getGlobalConfig()Lc8/WG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/WG;->reset()V

    .line 174
    :cond_2
    const-string/jumbo v0, "wv_evn"

    const-string/jumbo v1, "evn_value"

    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getKey()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 175
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0, v1}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
