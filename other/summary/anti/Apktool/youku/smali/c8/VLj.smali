.class public Lc8/VLj;
.super Ljava/lang/Object;
.source "YoukuTmp.java"


# static fields
.field public static ACTIVE_TIME:Ljava/lang/String; = null

.field public static COOKIE:Ljava/lang/String; = null

.field public static COOKIE_TEMP:Ljava/lang/String; = null

.field public static GUID:Ljava/lang/String; = null

.field public static LAUNCH_TIME:J = 0x0L

.field public static final TAG_GLOBAL:Ljava/lang/String; = "Youku"

.field public static final TIMEOUT:I = 0x7530

.field public static User_Agent:Ljava/lang/String;

.field public static advertMiddleStr:Ljava/lang/String;

.field public static advertPauseStr:Ljava/lang/String;

.field public static advertPreStr:Ljava/lang/String;

.field public static alipay_client_version:Ljava/lang/String;

.field public static alipay_user_id:Ljava/lang/String;

.field public static app_id:Ljava/lang/String;

.field public static auth_code:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field public static volatile currentProcessName:Ljava/lang/String;

.field static e:Landroid/content/SharedPreferences$Editor;

.field public static flags:I

.field public static homeRefreshBgImage:Ljava/lang/String;

.field public static iStaticsManager:Lc8/rin;

.field public static isCMS:Z

.field public static isDetailActivityNeedRefresh:Z

.field public static isDetailActivitySeriesCacheCardNeedRefresh:Z

.field public static isDetailActivitySeriesCacheNeedRefresh:Z

.field public static isHighEnd:Z

.field public static isLogined:Z

.field public static isShowLog:Z

.field public static isTablet:Z

.field public static isTrustLogin:Z

.field public static loginAccount:Ljava/lang/String;

.field static s:Landroid/content/SharedPreferences;

.field public static time:J

.field public static uid:Ljava/lang/String;

.field public static userName:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static versionCode:I

.field public static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    sput-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    .line 39
    sput-object v1, Lc8/VLj;->loginAccount:Ljava/lang/String;

    .line 40
    sput-boolean v2, Lc8/VLj;->isLogined:Z

    .line 41
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->userName:Ljava/lang/String;

    .line 42
    sput-object v1, Lc8/VLj;->COOKIE:Ljava/lang/String;

    .line 43
    sput-object v1, Lc8/VLj;->COOKIE_TEMP:Ljava/lang/String;

    .line 48
    sput-boolean v2, Lc8/VLj;->isTablet:Z

    .line 51
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->GUID:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->uid:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->advertPreStr:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->advertMiddleStr:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->advertPauseStr:Ljava/lang/String;

    .line 63
    sput-boolean v2, Lc8/VLj;->isDetailActivityNeedRefresh:Z

    .line 71
    sput-boolean v2, Lc8/VLj;->isDetailActivitySeriesCacheCardNeedRefresh:Z

    .line 79
    sput-boolean v2, Lc8/VLj;->isDetailActivitySeriesCacheNeedRefresh:Z

    .line 84
    sput-boolean v2, Lc8/VLj;->isShowLog:Z

    .line 85
    sput-boolean v2, Lc8/VLj;->isCMS:Z

    .line 86
    sput-wide v4, Lc8/VLj;->LAUNCH_TIME:J

    .line 87
    sput-boolean v2, Lc8/VLj;->isTrustLogin:Z

    .line 91
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->ACTIVE_TIME:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->homeRefreshBgImage:Ljava/lang/String;

    .line 98
    const/4 v0, 0x7

    sput v0, Lc8/VLj;->flags:I

    .line 100
    sput-wide v4, Lc8/VLj;->time:J

    .line 104
    sput-object v1, Lc8/VLj;->alipay_user_id:Ljava/lang/String;

    .line 105
    sput-object v1, Lc8/VLj;->auth_code:Ljava/lang/String;

    .line 106
    sput-object v1, Lc8/VLj;->app_id:Ljava/lang/String;

    .line 107
    sput-object v1, Lc8/VLj;->version:Ljava/lang/String;

    .line 108
    sput-object v1, Lc8/VLj;->alipay_client_version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->uid:Ljava/lang/String;

    .line 226
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->COOKIE:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VLj;->userName:Ljava/lang/String;

    .line 228
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v0

    sput-boolean v0, Lc8/VLj;->isLogined:Z

    .line 229
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v0

    invoke-static {v0}, Lc8/VLj;->setLogined(Z)V

    .line 230
    return-void
.end method

.method public static commitPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static exit()V
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lc8/HTh;->clearAllCookies()V

    .line 247
    invoke-static {}, Lc8/WSn;->cancelUploadNotifaction()V

    .line 248
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ben;->unregister()V

    .line 251
    :cond_0
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/rin;->onKillProcess(Landroid/content/Context;)V

    .line 254
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 255
    return-void
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    sget-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 262
    sget-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    .line 295
    :goto_0
    return-object v8

    .line 263
    :cond_0
    const-class v9, Lc8/VLj;

    monitor-enter v9

    .line 264
    :try_start_0
    sget-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 265
    sget-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    monitor-exit v9

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 266
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 267
    .local v6, "pid":I
    const/4 v3, 0x0

    .line 269
    .local v3, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v4, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v7, "processName":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .local v2, "c":I
    if-lez v2, :cond_4

    .line 273
    int-to-char v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 277
    .end local v2    # "c":I
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 278
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 281
    if-eqz v3, :cond_2

    .line 282
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :cond_2
    :goto_3
    :try_start_6
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 289
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 290
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v6, :cond_3

    .line 291
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 292
    sput-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 275
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":I
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v7    # "processName":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    sput-object v8, Lc8/VLj;->currentProcessName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 281
    if-eqz v4, :cond_5

    .line 282
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 286
    :cond_5
    :goto_4
    :try_start_9
    monitor-exit v9

    goto/16 :goto_0

    .line 284
    :catch_1
    move-exception v5

    .line 285
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 284
    .end local v2    # "c":I
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .line 285
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 280
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 281
    :goto_5
    if-eqz v3, :cond_6

    .line 282
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 286
    :cond_6
    :goto_6
    :try_start_b
    throw v8

    .line 284
    :catch_3
    move-exception v5

    .line 285
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 295
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_7
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 280
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 277
    :catch_4
    move-exception v5

    goto :goto_2
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 175
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferenceInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreferenceInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 183
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreferenceLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static saveCookie(Ljava/lang/String;)V
    .locals 4
    .param p0, "cookie"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/VLj;->COOKIE:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "cookie"

    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/VLj;->commitPreference(Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    :try_start_0
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/ben;->setCookie(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {}, Lc8/HTh;->clearAllCookies()V

    .line 219
    :goto_1
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Youku"

    invoke-static {v1, v0}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/HTh;->setCookie4Default(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 216
    :catch_1
    move-exception v1

    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "http://www.youku.com"

    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/HTh;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static savePreference(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 127
    sget-object v0, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public static savePreference(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 131
    sget-object v0, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 135
    sget-object v0, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    return-void
.end method

.method public static setApi()V
    .locals 3

    .prologue
    .line 301
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v2, "eggApi"

    invoke-static {v1, v2}, Lc8/oZo;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "egg_dialog_api_value":Ljava/lang/String;
    const-string/jumbo v1, "official"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Lc8/VLj;->setOfficialApi()V

    .line 315
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string/jumbo v1, "prepare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {}, Lc8/VLj;->setPreviewApi()V

    goto :goto_0

    .line 306
    :cond_1
    const-string/jumbo v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    invoke-static {}, Lc8/VLj;->setTestApi()V

    goto :goto_0

    .line 309
    :cond_2
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-static {}, Lc8/VLj;->setTestApi()V

    goto :goto_0

    .line 312
    :cond_3
    invoke-static {}, Lc8/VLj;->setOfficialApi()V

    goto :goto_0
.end method

.method public static setLog()V
    .locals 3

    .prologue
    .line 333
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v2, "eggLog"

    invoke-static {v1, v2}, Lc8/oZo;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "egg_dialog_log_value":Ljava/lang/String;
    const-string/jumbo v1, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/VLj;->setLog(Z)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string/jumbo v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/VLj;->setLog(Z)V

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v1

    invoke-static {v1}, Lc8/VLj;->setLog(Z)V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLog().Debuggable.isDebug():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private static setLog(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 322
    sput-boolean p0, Lc8/VLj;->isShowLog:Z

    .line 324
    sput-boolean p0, Lc8/KWc;->LOG:Z

    .line 325
    invoke-static {p0}, Lc8/FWc;->setDebugMode(Z)V

    .line 326
    sput-boolean p0, Lc8/oSh;->isShowLog:Z

    .line 327
    sput-boolean p0, Lc8/pin;->isDebugOpen:Z

    .line 328
    sput-boolean p0, Lc8/pin;->isTestOpen:Z

    .line 329
    sput-boolean p0, Lc8/pin;->isTestHostOpen:Z

    .line 330
    return-void
.end method

.method public static setLogined(Z)V
    .locals 2
    .param p0, "logined"    # Z

    .prologue
    .line 234
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v0

    sput-boolean v0, Lc8/oSh;->isLogined:Z

    .line 235
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v0

    sput-boolean v0, Lc8/VLj;->isLogined:Z

    .line 236
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/oSh;->cookie:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logined = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/oSh;->isLogined:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/oSh;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    return-void
.end method

.method public static setOfficialApi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-static {v2}, Lc8/Dfh;->setEnvType(I)V

    .line 482
    const-string/jumbo v1, "http://api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 483
    const-string/jumbo v1, "http://home.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_HOME_DOMAIN:Ljava/lang/String;

    .line 484
    const-string/jumbo v1, "http://subchannel.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_SUBCHANNEL_DOMAIN:Ljava/lang/String;

    .line 485
    const-string/jumbo v1, "http://down.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOWN_FLAG_URL:Ljava/lang/String;

    .line 486
    const-string/jumbo v1, "http://das.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_GUESS_URL:Ljava/lang/String;

    .line 487
    const-string/jumbo v1, "http://play.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOWNLOAD_DOMAIN:Ljava/lang/String;

    .line 488
    const-string/jumbo v1, "http://csc.youku.com/feedback-web/hfeed"

    sput-object v1, Lc8/lSh;->YOUKU_FEEDBACK_URL:Ljava/lang/String;

    .line 489
    const-string/jumbo v1, "http://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN:Ljava/lang/String;

    .line 490
    const-string/jumbo v1, "http://playlog.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_HISTORY_DOMAIN:Ljava/lang/String;

    .line 491
    const-string/jumbo v1, "https://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_HTTPS:Ljava/lang/String;

    .line 492
    const-string/jumbo v1, "http://api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_OLD:Ljava/lang/String;

    .line 493
    const-string/jumbo v1, "http://valf.atm.youku.com/sdkconfig.xml"

    sput-object v1, Lc8/lSh;->MMA_CONFIG_HOST:Ljava/lang/String;

    .line 494
    const-string/jumbo v1, "http://search.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_SEARCH_DOMAIN:Ljava/lang/String;

    .line 495
    const-string/jumbo v1, "http://hd.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_HUDONG_DOMAIN:Ljava/lang/String;

    .line 496
    const-string/jumbo v1, "http://das.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DASHUJU_DOMAIN:Ljava/lang/String;

    .line 497
    const-string/jumbo v1, "http://ad.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_AD_DOMAIN:Ljava/lang/String;

    .line 498
    const-string/jumbo v1, "http://html.atm.youku.com/mhtml"

    sput-object v1, Lc8/lSh;->MOBILE_AD_DOMAIN:Ljava/lang/String;

    .line 499
    const-string/jumbo v1, "http://i.youku.com/u"

    sput-object v1, Lc8/lSh;->OTHER_PERSON_INFO_URL:Ljava/lang/String;

    .line 500
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND:Ljava/lang/String;

    .line 501
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    .line 502
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    .line 503
    const-string/jumbo v1, "http://c-api.youku.com"

    sput-object v1, Lc8/lSh;->URL_PREFIX:Ljava/lang/String;

    .line 504
    const-string/jumbo v1, "http://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_FAVORITE_DOMAIN:Ljava/lang/String;

    .line 505
    const-string/jumbo v1, "http://detail.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DETAIL_DOMAIN:Ljava/lang/String;

    .line 506
    const-string/jumbo v1, "http://detail.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_NEW_DETAIL_DOMAIN:Ljava/lang/String;

    .line 507
    sget-object v1, Lc8/lSh;->OFFICAL_REPORT_TASK:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->REPORT_TASK_URL:Ljava/lang/String;

    .line 508
    const-string/jumbo v1, "http://m-api.ucenter.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USERCENTER_DOMAIN:Ljava/lang/String;

    .line 509
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    .line 510
    const-string/jumbo v1, "http://iyes.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_ADV_BANNER:Ljava/lang/String;

    .line 511
    const-string/jumbo v1, "http://stagephoto.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_STAGE_PHOTO_DOMAIN:Ljava/lang/String;

    .line 512
    const-string/jumbo v1, "https://aserver.api.community.youku.com/gw/mtop.youku.community.fandomservice.listfandomsbyrelateids/1.0"

    sput-object v1, Lc8/lSh;->YOUKU_ALI_STAR_DOMAIN:Ljava/lang/String;

    .line 513
    sput-boolean v2, Lc8/KWc;->DEBUG:Z

    .line 514
    sput-boolean v2, Lc8/pin;->isDebugOpen:Z

    .line 515
    sput-boolean v2, Lc8/pin;->isTestOpen:Z

    .line 516
    sput-boolean v2, Lc8/pin;->isTestHostOpen:Z

    .line 521
    const-string/jumbo v1, "official"

    sput-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    .line 529
    const-string/jumbo v1, "http://4g.youku.com/wl/flowmall"

    sput-object v1, Lc8/ywk;->default_freeflow_weburl:Ljava/lang/String;

    .line 531
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_INTEREST:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_INTEREST_DOMAIN:Ljava/lang/String;

    .line 534
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    .line 535
    .local v0, "mtop":Lc8/AOp;
    if-eqz v0, :cond_0

    .line 536
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    .line 539
    :cond_0
    return-void
.end method

.method private static setPreviewApi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-static {v2}, Lc8/Dfh;->setEnvType(I)V

    .line 362
    const-string/jumbo v1, "http://api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 363
    const-string/jumbo v1, "http://home.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_HOME_DOMAIN:Ljava/lang/String;

    .line 364
    const-string/jumbo v1, "http://subchannel.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_SUBCHANNEL_DOMAIN:Ljava/lang/String;

    .line 365
    const-string/jumbo v1, "http://down.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOWN_FLAG_URL:Ljava/lang/String;

    .line 366
    const-string/jumbo v1, "http://das.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_GUESS_URL:Ljava/lang/String;

    .line 367
    const-string/jumbo v1, "http://play.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DOWNLOAD_DOMAIN:Ljava/lang/String;

    .line 368
    const-string/jumbo v1, "http://csc.youku.com/feedback-web/hfeed"

    sput-object v1, Lc8/lSh;->YOUKU_FEEDBACK_URL:Ljava/lang/String;

    .line 369
    sget-object v1, Lc8/lSh;->PRE_OFFICIAL_YOUKU_HISTORY_DOMAIN:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_HISTORY_DOMAIN:Ljava/lang/String;

    .line 370
    const-string/jumbo v1, "http://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN:Ljava/lang/String;

    .line 371
    const-string/jumbo v1, "https://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_HTTPS:Ljava/lang/String;

    .line 372
    const-string/jumbo v1, "http://api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_OLD:Ljava/lang/String;

    .line 373
    const-string/jumbo v1, "http://valf.atm.youku.com/sdkconfig.xml"

    sput-object v1, Lc8/lSh;->MMA_CONFIG_HOST:Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "http://search.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_SEARCH_DOMAIN:Ljava/lang/String;

    .line 375
    const-string/jumbo v1, "http://hd.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_HUDONG_DOMAIN:Ljava/lang/String;

    .line 376
    const-string/jumbo v1, "http://das.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DASHUJU_DOMAIN:Ljava/lang/String;

    .line 377
    const-string/jumbo v1, "http://ad.api.3g.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_AD_DOMAIN:Ljava/lang/String;

    .line 378
    const-string/jumbo v1, "http://html.atm.youku.com/mhtml"

    sput-object v1, Lc8/lSh;->MOBILE_AD_DOMAIN:Ljava/lang/String;

    .line 379
    const-string/jumbo v1, "http://i.youku.com/u"

    sput-object v1, Lc8/lSh;->OTHER_PERSON_INFO_URL:Ljava/lang/String;

    .line 380
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND:Ljava/lang/String;

    .line 381
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    .line 382
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    .line 383
    const-string/jumbo v1, "http://c-api.youku.com"

    sput-object v1, Lc8/lSh;->URL_PREFIX:Ljava/lang/String;

    .line 384
    const-string/jumbo v1, "http://user-mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_FAVORITE_DOMAIN:Ljava/lang/String;

    .line 385
    const-string/jumbo v1, "http://detail.api.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_DETAIL_DOMAIN:Ljava/lang/String;

    .line 386
    const-string/jumbo v1, "http://detail.mobile.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_NEW_DETAIL_DOMAIN:Ljava/lang/String;

    .line 387
    sget-object v1, Lc8/lSh;->OFFICAL_REPORT_TASK:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->REPORT_TASK_URL:Ljava/lang/String;

    .line 388
    const-string/jumbo v1, "http://m-api.ucenter.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_USERCENTER_DOMAIN:Ljava/lang/String;

    .line 389
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    .line 390
    const-string/jumbo v1, "http://iyes.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_ADV_BANNER:Ljava/lang/String;

    .line 391
    const-string/jumbo v1, "http://pre-stagephoto.youku.com"

    sput-object v1, Lc8/lSh;->YOUKU_STAGE_PHOTO_DOMAIN:Ljava/lang/String;

    .line 392
    sput-boolean v2, Lc8/KWc;->DEBUG:Z

    .line 393
    sput-boolean v2, Lc8/pin;->isDebugOpen:Z

    .line 394
    sput-boolean v2, Lc8/pin;->isTestOpen:Z

    .line 395
    sput-boolean v2, Lc8/pin;->isTestHostOpen:Z

    .line 400
    const-string/jumbo v1, "prepare"

    sput-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    .line 406
    const-string/jumbo v1, "http://4g.youku.com/wl/flowmall"

    sput-object v1, Lc8/ywk;->default_freeflow_weburl:Ljava/lang/String;

    .line 408
    sget-object v1, Lc8/lSh;->OFFICIAL_YOUKU_INTEREST:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_INTEREST_DOMAIN:Ljava/lang/String;

    .line 410
    sget-object v1, Lc8/lSh;->PREVIEW_YOUKU_RECOMMAND:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND:Ljava/lang/String;

    .line 413
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    .line 414
    .local v0, "mtop":Lc8/AOp;
    if-eqz v0, :cond_0

    .line 415
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    .line 418
    :cond_0
    return-void
.end method

.method private static setTestApi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 421
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Dfh;->setEnvType(I)V

    .line 422
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 423
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_HOME_DOMAIN:Ljava/lang/String;

    .line 424
    sget-object v1, Lc8/lSh;->YOUKU_DOMAIN:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_SUBCHANNEL_DOMAIN:Ljava/lang/String;

    .line 425
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_DOWN_FLAG_URL:Ljava/lang/String;

    .line 426
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_GUESS_URL:Ljava/lang/String;

    .line 427
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_DOWNLOAD_DOMAIN:Ljava/lang/String;

    .line 428
    const-string/jumbo v1, "http://uat-csc.youku.com/feedback-web/hfeed"

    sput-object v1, Lc8/lSh;->YOUKU_FEEDBACK_URL:Ljava/lang/String;

    .line 429
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN:Ljava/lang/String;

    .line 430
    const-string/jumbo v1, "http://playlog.heyi.test"

    sput-object v1, Lc8/lSh;->YOUKU_HISTORY_DOMAIN:Ljava/lang/String;

    .line 431
    const-string/jumbo v1, "https://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_HTTPS:Ljava/lang/String;

    .line 432
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_USER_DOMAIN_OLD:Ljava/lang/String;

    .line 433
    const-string/jumbo v1, "http://val.atm.youku.com/sdkconfig_android.xml"

    sput-object v1, Lc8/lSh;->MMA_CONFIG_HOST:Ljava/lang/String;

    .line 434
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_SEARCH_DOMAIN:Ljava/lang/String;

    .line 435
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_HUDONG_DOMAIN:Ljava/lang/String;

    .line 436
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_DASHUJU_DOMAIN:Ljava/lang/String;

    .line 437
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_AD_DOMAIN:Ljava/lang/String;

    .line 438
    const-string/jumbo v1, "http://beta.youku.com/u"

    sput-object v1, Lc8/lSh;->OTHER_PERSON_INFO_URL:Ljava/lang/String;

    .line 439
    sget-object v1, Lc8/lSh;->TEST_YOUKU_RECOMMAND:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND:Ljava/lang/String;

    .line 440
    sget-object v1, Lc8/lSh;->TEST_YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS:Ljava/lang/String;

    .line 441
    sget-object v1, Lc8/lSh;->TEST_YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_RECOMMAND_CARDS_C:Ljava/lang/String;

    .line 442
    const-string/jumbo v1, "http://test.c-api.youku.com"

    sput-object v1, Lc8/lSh;->URL_PREFIX:Ljava/lang/String;

    .line 443
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_FAVORITE_DOMAIN:Ljava/lang/String;

    .line 444
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_DETAIL_DOMAIN:Ljava/lang/String;

    .line 445
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_NEW_DETAIL_DOMAIN:Ljava/lang/String;

    .line 446
    sget-object v1, Lc8/lSh;->TEST_REPORT_TASK:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->REPORT_TASK_URL:Ljava/lang/String;

    .line 447
    const-string/jumbo v1, "http://m-api-ucenter.heyi.test"

    sput-object v1, Lc8/lSh;->YOUKU_USERCENTER_DOMAIN:Ljava/lang/String;

    .line 448
    sget-object v1, Lc8/lSh;->TEST_YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_BOTTOM_BAR_DOMAIN:Ljava/lang/String;

    .line 449
    const-string/jumbo v1, "http://new-api.1verge.test"

    sput-object v1, Lc8/lSh;->YOUKU_ADV_BANNER:Ljava/lang/String;

    .line 450
    const-string/jumbo v1, "http://stage-photo.heyi.test"

    sput-object v1, Lc8/lSh;->YOUKU_STAGE_PHOTO_DOMAIN:Ljava/lang/String;

    .line 451
    const-string/jumbo v1, "http://11.239.116.27:7001/gw/mtop.youku.community.fandomservice.listfandomsbyrelateids/1.0"

    sput-object v1, Lc8/lSh;->YOUKU_ALI_STAR_DOMAIN:Ljava/lang/String;

    .line 452
    sput-boolean v2, Lc8/KWc;->DEBUG:Z

    .line 453
    sput-boolean v2, Lc8/pin;->isDebugOpen:Z

    .line 454
    sput-boolean v2, Lc8/pin;->isTestOpen:Z

    .line 455
    sput-boolean v2, Lc8/pin;->isTestHostOpen:Z

    .line 459
    const-string/jumbo v1, "test"

    sput-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    .line 469
    const-string/jumbo v1, "http://106.11.47.15/wl/flowmall"

    sput-object v1, Lc8/ywk;->default_freeflow_weburl:Ljava/lang/String;

    .line 471
    sget-object v1, Lc8/lSh;->TEST_YOUKU_INTEREST:Ljava/lang/String;

    sput-object v1, Lc8/lSh;->YOUKU_INTEREST_DOMAIN:Ljava/lang/String;

    .line 474
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    .line 475
    .local v0, "mtop":Lc8/AOp;
    if-eqz v0, :cond_0

    .line 476
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    .line 478
    :cond_0
    return-void
.end method
