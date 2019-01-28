.class public Lc8/Anf;
.super Ljava/lang/Object;
.source "AppInstallInfo.java"


# static fields
.field private static final EXPIRE_TIME_IN_DAYS:Ljava/lang/String; = "expInDays"

.field private static final LOG_TAG:Ljava/lang/String; = "AppInstallInfo"

.field private static final PREFERENCES_KEY_INSTALL_INFO_EXPIRE_TIME:Ljava/lang/String; = "installInfoExpireTime"

.field private static final PREFERENCES_KEY_INSTALL_INFO_LAST_SEND_TIME:Ljava/lang/String; = "installInfoLastSendTime"

.field private static final TARGETS_NAME:Ljava/lang/String; = "targets"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final DEFAULT_EXPIRE_TIME_IN_DAYS:I

.field private final Time_Millis_PER_DAY:J

.field private application:Landroid/app/Application;

.field private expireTimeInDays:J

.field private expireTimeInterval:J

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Anf;->targets:Ljava/util/List;

    .line 47
    iput-wide v2, p0, Lc8/Anf;->Time_Millis_PER_DAY:J

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lc8/Anf;->DEFAULT_EXPIRE_TIME_IN_DAYS:I

    .line 49
    iput-wide v2, p0, Lc8/Anf;->expireTimeInterval:J

    .line 50
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lc8/Anf;->expireTimeInDays:J

    .line 55
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iput-object v0, p0, Lc8/Anf;->application:Landroid/app/Application;

    .line 57
    iget-object v0, p0, Lc8/Anf;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/Anf;->application:Landroid/app/Application;

    new-instance v1, Lc8/znf;

    invoke-direct {v1}, Lc8/znf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 60
    :cond_0
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 120
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDayInterval(JJ)J
    .locals 7
    .param p1, "dateStart"    # J
    .param p3, "dateEnd"    # J

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 134
    .local v1, "dateStartCal":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 135
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 136
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 137
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, "dateEndCal":Ljava/util/Calendar;
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 144
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private getLastSendTime(Landroid/content/SharedPreferences;)J
    .locals 4
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 125
    const-string/jumbo v0, "installInfoLastSendTime"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private saveLastSendTime(Landroid/content/SharedPreferences;J)V
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "newValue"    # J

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "installInfoLastSendTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized sendIfNecessary()V
    .locals 18

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Anf;->application:Landroid/app/Application;

    const-string/jumbo v14, "linkManagerPolicyConfig"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 85
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/Anf;->getLastSendTime(Landroid/content/SharedPreferences;)J

    move-result-wide v8

    .line 89
    .local v8, "lastSendTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8, v9}, Lc8/Anf;->getDayInterval(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Anf;->expireTimeInDays:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 90
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lc8/Anf;->saveLastSendTime(Landroid/content/SharedPreferences;J)V

    .line 92
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v6, "installInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Anf;->targets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v10, "packageName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Anf;->application:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 96
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/Anf;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v7, :cond_0

    const-string/jumbo v13, "1"

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lc8/Anf;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    :try_start_2
    const-string/jumbo v13, "0"

    invoke-interface {v6, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "currentTime":J
    .end local v6    # "installInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "lastSendTime":J
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 96
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "currentTime":J
    .restart local v6    # "installInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "lastSendTime":J
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_3
    const-string/jumbo v13, "0"
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 102
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "installInfo"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lc8/Anf;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v13, "currentPN"

    sget-object v14, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v14}, Lc8/unf;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v13, "lmSDKV"

    const-string/jumbo v14, "1.3.0"

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v13, Lc8/unf;->instance:Lc8/unf;

    iget-object v2, v13, Lc8/unf;->appKey:Ljava/lang/String;

    .line 107
    .local v2, "currentAppKey":Ljava/lang/String;
    const-string/jumbo v13, "currentAppKey"

    if-eqz v2, :cond_3

    .end local v2    # "currentAppKey":Ljava/lang/String;
    :goto_2
    invoke-interface {v11, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v13, "dataFrom"

    const-string/jumbo v14, "lmSDK"

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v13, "mgr_app_install_info"

    invoke-static {v13, v11}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    const-string/jumbo v13, "AppInstallInfo"

    const-string/jumbo v14, "app install info sent"

    invoke-static {v13, v14}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "installInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 107
    .restart local v2    # "currentAppKey":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "installInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_5
    const-string/jumbo v2, "unknown"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "targets"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 64
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 65
    iget-object v3, p0, Lc8/Anf;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 69
    iget-object v3, p0, Lc8/Anf;->targets:Ljava/util/List;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v3, "exp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lc8/Anf;->expireTimeInterval:J

    .line 75
    const-string/jumbo v3, "expInDays"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lc8/Anf;->expireTimeInDays:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 63
    .end local v0    # "array":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
