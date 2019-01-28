.class public Lc8/BWp;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final AGOO_CLEAR_TIME:Ljava/lang/String; = "agoo_clear_time"

.field public static final AGOO_ENABLE_DAEMONSERVER:Ljava/lang/String; = "agoo_enable_daemonserver"

.field public static final AGOO_UNREPORT_TIMES:Ljava/lang/String; = "agoo_UnReport_times"

.field private static DEVICETOKEN:Ljava/lang/String; = null

.field public static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceId"

.field public static final PREFERENCES:Ljava/lang/String; = "Agoo_AppStore"

.field public static final PROPERTY_AGOO_SERVICE_MODE:Ljava/lang/String; = "agoo_service_mode"

.field public static final PROPERTY_APP_KEY:Ljava/lang/String; = "agoo_app_key"

.field public static final PROPERTY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final PROPERTY_DEVICE_TOKEN:Ljava/lang/String; = "app_device_token"

.field public static final PROPERTY_PUSH_USER_TOKEN:Ljava/lang/String; = "app_push_user_token"

.field public static final PROPERTY_TT_ID:Ljava/lang/String; = "app_tt_id"

.field public static final TAG:Ljava/lang/String; = "Config"

.field public static mAccsConfigTag:Ljava/lang/String;

.field private static mAgooAppkey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput-object v0, Lc8/BWp;->DEVICETOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "app_version"

    const/high16 v3, -0x80000000

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string/jumbo v2, "app_device_token"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string/jumbo v2, "agoo_app_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string/jumbo v2, "app_tt_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static clearReportTimes(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "agoo_UnReport_times"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lc8/BWp;->mAccsConfigTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getDefaultConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/BWp;->mAccsConfigTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 74
    sget-object v0, Lc8/BWp;->mAgooAppkey:Ljava/lang/String;

    .line 76
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "agoo_app_key"

    sget-object v4, Lc8/BWp;->mAgooAppkey:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "getAgooAppKey null!!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "getAgooAppKey"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "appkey"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-object v0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "getAgooAppKey"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAgooGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v0, ""

    .line 98
    .local v0, "mode":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, "storage":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "agoo_service_mode"

    const-string/jumbo v3, "taobao"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    .end local v1    # "storage":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string/jumbo v0, "Agoo_AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 221
    sget-object v0, Lc8/BWp;->DEVICETOKEN:Ljava/lang/String;

    .line 223
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "deviceId"

    sget-object v4, Lc8/BWp;->DEVICETOKEN:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "getDeviceToken"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "token"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-object v0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "getDeviceToken"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPushAliasToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "pushUserToken":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "app_push_user_token"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getReportCacheMsg(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "times":I
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "agoo_UnReport_times"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isClearTime(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "now"    # J

    .prologue
    .line 168
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "agoo_clear_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 170
    .local v0, "lastTime":J
    const-string/jumbo v4, "isClearTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "now="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",now - lastTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v6, p1, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",istrue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, p1, v0

    const-wide/32 v8, 0x5265c00

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    sub-long v4, p1, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 172
    const/4 v3, 0x1

    .line 178
    .end local v0    # "lastTime":J
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return v3

    .line 170
    .restart local v0    # "lastTime":J
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 178
    .end local v0    # "lastTime":J
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isEnableDaemonServer(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "flag":Z
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "agoo_enable_daemonserver"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isReportCacheMsg(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "flag":Z
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 122
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "agoo_UnReport_times"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    .local v0, "currentTime":I
    if-lez v0, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 129
    .end local v0    # "currentTime":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 57
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "setAgooAppKey appkey null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    sput-object p1, Lc8/BWp;->mAgooAppkey:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "agoo_app_key"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "setAgooAppKey"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "appkey"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Config"

    const-string/jumbo v4, "setAgooAppKey"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setClearTimes(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 158
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "agoo_clear_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDaemonServerFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 184
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "agoo_enable_daemonserver"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 206
    const-string/jumbo v2, "Config"

    const-string/jumbo v3, "setDeviceToken"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "token"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    sput-object p1, Lc8/BWp;->DEVICETOKEN:Ljava/lang/String;

    .line 212
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "deviceId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "Config"

    const-string/jumbo v3, "setDeviceToken"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setPushAliasToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushUserToken"    # Ljava/lang/String;

    .prologue
    .line 246
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 247
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const-string/jumbo v2, "app_push_user_token"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setReportTimes(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "times"    # I

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "agoo_UnReport_times"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "currentTime":I
    add-int/2addr v0, p1

    .line 112
    const-string/jumbo v3, "agoo_UnReport_times"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "currentTime":I
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
