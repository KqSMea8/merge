.class public Lcom/taobao/accs/utl/OrangeAdapter;
.super Ljava/lang/Object;
.source "OrangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/utl/OrangeAdapter$OrangeListener;
    }
.end annotation


# static fields
.field private static final ACCS_ENABLE_KEY:Ljava/lang/String; = "main_function_enable"

.field private static final HEARTBEAT_KEY:Ljava/lang/String; = "heartbeat_smart_enable"

.field public static final NAMESPACE:Ljava/lang/String; = "accs"

.field private static final PULLUP:Ljava/lang/String; = "pullup"

.field private static final TAG:Ljava/lang/String; = "OrangeAdapter"

.field private static final TNET_ELECTION_KEY:Ljava/lang/String; = "election_enable"

.field private static final TNET_LOG_KEY:Ljava/lang/String; = "tnet_log_off"

.field private static mOrangeValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    sput-boolean v1, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z

    .line 33
    :try_start_0
    const-string/jumbo v0, "com.taobao.orange.OrangeConfig"

    invoke-static {v0}, Lcom/taobao/accs/utl/OrangeAdapter;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static checkAccsEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isAccsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "force enable service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->forceEnableService(Landroid/content/Context;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "force disable service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSManager;->forceDisableService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-boolean v0, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 83
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getConfigForAccs()V
    .locals 7

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "tnet_log_off"

    const-string/jumbo v6, "false"

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "tnet_log_off"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "election_enable"

    sget-boolean v6, Lcom/taobao/accs/client/GlobalClientInfo;->mSupprotElection:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    const-string/jumbo v4, "election_enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "heartbeat_smart_enable"

    const-string/jumbo v6, "true"

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string/jumbo v4, "smart_hb_enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/taobao/accs/utl/OrangeAdapter;->saveConfigsToSP(Landroid/content/Context;Ljava/util/Map;)V

    .line 259
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "support_foreground_v"

    const/16 v6, 0x18

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "supportForegroundVer":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "support_foreground_v"

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->String2Int(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->saveConfigToSP(Landroid/content/Context;Ljava/lang/String;I)V

    .line 263
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "pullup"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "pullup":Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/accs/utl/OrangeAdapter;->savePullupInfo(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private static getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v7, 0x0

    .line 154
    move v1, p2

    .line 156
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v3, "ACCS_SDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "getConfigFromSP fail:"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPullupInfo()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ACCS_SDK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "pullup"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "getPullupInfo fail:"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isAccsEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    const/4 v0, 0x1

    .line 92
    .local v0, "enable":Z
    :try_start_0
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "main_function_enable"

    const-string/jumbo v4, "true"

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isAccsEnabled"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "enable"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isAccsEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isElectionEnable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 138
    sget-boolean v0, Lcom/taobao/accs/client/GlobalClientInfo;->mSupprotElection:Z

    .line 140
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "election_enable"

    sget-boolean v4, Lcom/taobao/accs/client/GlobalClientInfo;->mSupprotElection:Z

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_0
    if-nez v0, :cond_0

    .line 146
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isElectionEnable"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "result"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    return v0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isElectionEnable"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isSmartHb()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    const/4 v0, 0x1

    .line 103
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "smart_hb_enable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    :goto_0
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isSmartHb"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "result"

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return v0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeAdapter"

    const-string/jumbo v3, "isSmartHb"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isTnetLogOff(Z)Z
    .locals 9
    .param p0, "fromOrange"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    const/4 v0, 0x1

    .line 119
    .local v0, "result":Z
    :try_start_0
    const-string/jumbo v2, "default"

    .line 120
    .local v2, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 121
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "tnet_log_off"

    const-string/jumbo v5, "default"

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_0
    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "tnet_log_off"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "isTnetLogOff"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "result"

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return v0

    .line 127
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 128
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "tnet_log_off"

    invoke-static {v3, v4, v0}, Lcom/taobao/accs/utl/OrangeAdapter;->saveConfigToSP(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "isTnetLogOff"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 3
    .param p0, "groupnames"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcom/taobao/orange/OrangeConfigListenerV1;

    .prologue
    .line 49
    sget-boolean v0, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static saveConfigToSP(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 184
    if-nez p0, :cond_0

    .line 185
    :try_start_0
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveTLogOffToSP context null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string/jumbo v3, "ACCS_SDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 191
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveConfigToSP"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "value"

    aput-object v6, v5, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveConfigToSP fail:"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "value"

    aput-object v6, v5, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static saveConfigToSP(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 167
    :try_start_0
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveTLogOffToSP context null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string/jumbo v3, "ACCS_SDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 172
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 173
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveConfigToSP"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "value"

    aput-object v6, v5, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "saveConfigToSP fail:"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "key"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const-string/jumbo v6, "value"

    aput-object v6, v5, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static saveConfigsToSP(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 201
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string/jumbo v5, "ACCS_SDK"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 206
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 207
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OrangeAdapter"

    const-string/jumbo v6, "saveConfigsToSP fail:"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "configs"

    aput-object v8, v7, v9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v5, "OrangeAdapter"

    const-string/jumbo v6, "saveConfigsToSP"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "configs"

    aput-object v8, v7, v9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static savePullupInfo(Ljava/lang/String;)V
    .locals 10
    .param p0, "pullup"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ACCS_SDK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pullup"

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "savePullupInfo"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "pullup"

    aput-object v6, v5, v7

    aput-object p0, v5, v8

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeAdapter"

    const-string/jumbo v4, "savePullupInfo fail:"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "pullup"

    aput-object v6, v5, v7

    aput-object p0, v5, v8

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static unregisterListener([Ljava/lang/String;)V
    .locals 3
    .param p0, "groupnames"    # [Ljava/lang/String;

    .prologue
    .line 63
    sget-boolean v0, Lcom/taobao/accs/utl/OrangeAdapter;->mOrangeValid:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/ctf;->unregisterListener([Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "OrangeAdapter"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
