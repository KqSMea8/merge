.class public Lc8/UUf;
.super Ljava/lang/Object;
.source "WXEnvironment.java"


# static fields
.field public static final DEV_Id:Ljava/lang/String;

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static JS_LIB_SDK_VERSION:Ljava/lang/String; = null

.field public static volatile JsFrameworkInit:Z = false

.field public static final OS:Ljava/lang/String; = "android"

.field public static final SETTING_EXCLUDE_X86SUPPORT:Ljava/lang/String; = "env_exclude_x86"

.field public static SETTING_FORCE_VERTICAL_SCREEN:Z = false

.field public static final SYS_MODEL:Ljava/lang/String;

.field public static final SYS_VERSION:Ljava/lang/String;

.field public static final WEEX_CURRENT_KEY:Ljava/lang/String; = "wx_current_url"

.field public static WXSDK_VERSION:Ljava/lang/String;

.field private static isApkDebug:Z

.field public static isPerf:Z

.field private static options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sApplication:Landroid/app/Application;

.field public static sDebugMode:Z

.field public static sDebugNetworkEventReporterEnable:Z

.field public static sDebugServerConnectable:Z

.field public static sDebugWsUrl:Ljava/lang/String;

.field public static sDefaultWidth:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static sDynamicMode:Z

.field public static sDynamicUrl:Ljava/lang/String;

.field public static sJSLibInitTime:J

.field public static sLogLevel:Lcom/taobao/weex/utils/LogLevel;

.field public static sRemoteDebugMode:Z

.field public static sRemoteDebugProxyUrl:Ljava/lang/String;

.field public static sSDKInitExecuteTime:J

.field public static sSDKInitInvokeTime:J

.field public static sSDKInitStart:J

.field public static sSDKInitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 43
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lc8/UUf;->SYS_VERSION:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lc8/UUf;->SYS_MODEL:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "0.22.7"

    sput-object v0, Lc8/UUf;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "0.16.4.6"

    sput-object v0, Lc8/UUf;->WXSDK_VERSION:Ljava/lang/String;

    .line 55
    invoke-static {}, Lc8/UUf;->getDevId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUf;->DEV_Id:Ljava/lang/String;

    .line 57
    const/16 v0, 0x2ee

    sput v0, Lc8/UUf;->sDefaultWidth:I

    .line 58
    sput-boolean v3, Lc8/UUf;->JsFrameworkInit:Z

    .line 62
    sput-boolean v3, Lc8/UUf;->SETTING_FORCE_VERTICAL_SCREEN:Z

    .line 66
    sput-boolean v3, Lc8/UUf;->sDebugMode:Z

    .line 67
    const-string/jumbo v0, ""

    sput-object v0, Lc8/UUf;->sDebugWsUrl:Ljava/lang/String;

    .line 68
    sput-boolean v3, Lc8/UUf;->sDebugServerConnectable:Z

    .line 69
    sput-boolean v3, Lc8/UUf;->sRemoteDebugMode:Z

    .line 70
    const-string/jumbo v0, ""

    sput-object v0, Lc8/UUf;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 71
    sput-boolean v3, Lc8/UUf;->sDebugNetworkEventReporterEnable:Z

    .line 72
    sput-wide v4, Lc8/UUf;->sJSLibInitTime:J

    .line 74
    sput-wide v4, Lc8/UUf;->sSDKInitStart:J

    .line 75
    sput-wide v4, Lc8/UUf;->sSDKInitInvokeTime:J

    .line 76
    sput-wide v4, Lc8/UUf;->sSDKInitExecuteTime:J

    .line 78
    sput-wide v4, Lc8/UUf;->sSDKInitTime:J

    .line 80
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v0, Lc8/UUf;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lc8/UUf;->isApkDebug:Z

    .line 82
    sput-boolean v3, Lc8/UUf;->isPerf:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    sput-object v0, Lc8/UUf;->options:Ljava/util/Map;

    const-string/jumbo v1, "os"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lc8/UUf;->options:Ljava/util/Map;

    const-string/jumbo v1, "osName"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sput-boolean v3, Lc8/UUf;->sDynamicMode:Z

    .line 94
    const-string/jumbo v0, ""

    sput-object v0, Lc8/UUf;->sDynamicUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lc8/UUf;->options:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private static getAppCacheFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v0, ""

    .line 147
    .local v0, "cache":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXEnvironment getAppCacheFile Exception: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getAppVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    const-string/jumbo v3, ""

    .line 131
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    .local v2, "manager":Landroid/content/pm/PackageManager;
    sget-object v4, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 133
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXEnvironment getAppVersionName Exception: "

    invoke-static {v4, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "os"

    const-string/jumbo v3, "android"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lc8/UUf;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v2, "cacheDir"

    invoke-static {}, Lc8/UUf;->getAppCacheFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v2, "devId"

    sget-object v3, Lc8/UUf;->DEV_Id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "sysVersion"

    sget-object v3, Lc8/UUf;->SYS_VERSION:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "sysModel"

    sget-object v3, Lc8/UUf;->SYS_MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v2, "weexVersion"

    sget-object v3, Lc8/UUf;->WXSDK_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "logLevel"

    sget-object v3, Lc8/UUf;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v3}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :try_start_0
    sget-object v2, Lc8/UUf;->options:Ljava/util/Map;

    const-string/jumbo v3, "scale"

    sget-object v4, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    sget-object v2, Lc8/UUf;->options:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    if-eqz v0, :cond_0

    const-string/jumbo v2, "appName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 118
    const-string/jumbo v2, "appName"

    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "WXEnvironment scale Exception: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCustomOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lc8/UUf;->options:Ljava/util/Map;

    return-object v0
.end method

.method private static getDevId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "cachePath":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const-string/jumbo v1, ""

    .line 279
    :goto_0
    return-object v1

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 271
    .local v0, "filesDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 275
    .restart local v1    # "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isApkDebugable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-nez v3, :cond_1

    .line 225
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 208
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-boolean v3, Lc8/UUf;->isPerf:Z

    if-nez v3, :cond_0

    .line 212
    sget-boolean v3, Lc8/UUf;->isApkDebug:Z

    if-eqz v3, :cond_0

    .line 216
    :try_start_0
    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 217
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 218
    :goto_1
    sput-boolean v3, Lc8/UUf;->isApkDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 217
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCPUSupport()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 193
    const-string/jumbo v5, "true"

    sget-object v6, Lc8/UUf;->options:Ljava/util/Map;

    const-string/jumbo v7, "env_exclude_x86"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    .local v0, "excludeX86":Z
    invoke-static {}, Lc8/Cgg;->isX86()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    .line 195
    .local v2, "isX86AndExcluded":Z
    :goto_0
    invoke-static {}, Lc8/Cgg;->isCPUSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    move v1, v3

    .line 196
    .local v1, "isCPUSupport":Z
    :goto_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WXEnvironment.sSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "isX86AndExclueded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 200
    :cond_0
    return v1

    .end local v1    # "isCPUSupport":Z
    .end local v2    # "isX86AndExcluded":Z
    :cond_1
    move v2, v4

    .line 194
    goto :goto_0

    .restart local v2    # "isX86AndExcluded":Z
    :cond_2
    move v1, v4

    .line 195
    goto :goto_1
.end method

.method public static isHardwareSupport()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isTableDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/Dgg;->isTabletDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-static {}, Lc8/UUf;->isCPUSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/Dgg;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPerf()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lc8/UUf;->isPerf:Z

    return v0
.end method

.method public static isSupport()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lc8/bVf;->isInitialized()Z

    move-result v0

    .line 169
    .local v0, "isInitialized":Z
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WXSDKEngine.isInitialized():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-static {}, Lc8/UUf;->isHardwareSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initMetrics()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 245
    :cond_0
    return-void
.end method
