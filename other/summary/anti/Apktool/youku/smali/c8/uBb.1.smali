.class public Lc8/uBb;
.super Ljava/lang/Object;
.source "AppInfoUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInfoUtil"

.field private static mAppkey:Ljava/lang/String;

.field private static mChannle:Ljava/lang/String;

.field static preInfoMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, ""

    sput-object v0, Lc8/uBb;->mChannle:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getAppkey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannle2ForPreLoadApk(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-static {p0}, Lc8/uBb;->getInfoForPreApk(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 175
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v1, "preLoad_Channel2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const-string/jumbo v4, ""

    .line 123
    :goto_0
    return-object v4

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 117
    .local v3, "pid":I
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 118
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 119
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_1

    .line 120
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 123
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getInfoForPreApk(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 150
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    .line 170
    :goto_0
    return-object v5

    .line 152
    :cond_0
    if-nez p0, :cond_1

    .line 153
    const/4 v5, 0x0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    .line 157
    :try_start_0
    const-string/jumbo v5, "manufacture_config"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "preLoad"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 159
    .local v0, "preLoad":Z
    const-string/jumbo v5, "preLoad_VersionName"

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "preLoad_VersionName":Ljava/lang/String;
    const-string/jumbo v5, "preLoad_Channel1"

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "preLoad_Channel1":Ljava/lang/String;
    const-string/jumbo v5, "preLoad_Channel2"

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "preLoad_Channel2":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 163
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    const-string/jumbo v6, "preLoad"

    const-string/jumbo v7, "true"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    const-string/jumbo v6, "preLoad_VersionName"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    const-string/jumbo v6, "preLoad_Channel1"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    const-string/jumbo v6, "preLoad_Channel2"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "preLoad":Z
    .end local v1    # "preLoad_Channel1":Ljava/lang/String;
    .end local v2    # "preLoad_Channel2":Ljava/lang/String;
    .end local v3    # "preLoad_VersionName":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    sget-object v5, Lc8/uBb;->preInfoMap:Ljava/util/Map;

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getLongLoginUsernick()Ljava/lang/String;
    .locals 7

    .prologue
    .line 23
    const-string/jumbo v2, ""

    .line 24
    .local v2, "longUserNick":Ljava/lang/String;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v2

    .line 28
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "UTCommon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    .local v1, "lSP":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "_lun"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "encodeNick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lc8/yBb;->decode([BI)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "longUserNick":Ljava/lang/String;
    .local v3, "longUserNick":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "longUserNick":Ljava/lang/String;
    .restart local v2    # "longUserNick":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "encodeNick":Ljava/lang/String;
    .end local v1    # "lSP":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getLongLoingUserid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 39
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 40
    const-string/jumbo v2, ""

    .line 51
    .local v2, "longUserId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 42
    .end local v2    # "longUserId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    .line 44
    .restart local v2    # "longUserId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "UTCommon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, "lSP":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "_luid"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "encodeUid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lc8/yBb;->decode([BI)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "longUserId":Ljava/lang/String;
    .local v3, "longUserId":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "longUserId":Ljava/lang/String;
    .restart local v2    # "longUserId":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "encodeUid":Ljava/lang/String;
    .end local v1    # "lSP":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 143
    .end local v0    # "id":I
    .end local v1    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getUsernick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v6

    .line 93
    :cond_1
    :try_start_0
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const-string/jumbo v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 95
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 98
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 99
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x190

    if-eq v7, v8, :cond_0

    .line 101
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v7

    goto :goto_0
.end method
