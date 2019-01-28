.class public Lc8/oC;
.super Ljava/lang/Object;
.source "TBConfigListenerV1.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "versionMin"    # Ljava/lang/String;
    .param p2, "versionMax"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "versionArray1":[Ljava/lang/String;
    const-string/jumbo v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "versionArray2":[Ljava/lang/String;
    array-length v5, v3

    array-length v6, v4

    if-le v5, v6, :cond_1

    array-length v2, v4

    .line 100
    .local v2, "minLength":I
    :goto_0
    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    .line 101
    const/4 v2, 0x3

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 106
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v5, v6

    .line 107
    if-nez v0, :cond_2

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "diff":I
    .end local v1    # "idx":I
    .end local v2    # "minLength":I
    :cond_1
    array-length v2, v3

    goto :goto_0

    .line 112
    .restart local v0    # "diff":I
    .restart local v1    # "idx":I
    .restart local v2    # "minLength":I
    :cond_2
    return v0
.end method

.method private getAndroidWindvaneConfigData()V
    .locals 21

    .prologue
    .line 34
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v17

    const-string/jumbo v18, "android_windvane_config"

    const-string/jumbo v19, "package"

    const-string/jumbo v20, ""

    invoke-virtual/range {v17 .. v20}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, "packageApp":Ljava/lang/String;
    const-string/jumbo v17, "TBConfigReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "receive : packageApp: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 39
    :try_start_0
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 40
    .local v16, "versionArray":Lorg/json/JSONArray;
    if-nez v16, :cond_1

    .line 87
    .end local v16    # "versionArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v16    # "versionArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 44
    .local v12, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_0

    .line 45
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 46
    .local v9, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v17, "v"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, "v":Ljava/lang/String;
    const-string/jumbo v17, "v0"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "v0":Ljava/lang/String;
    const-string/jumbo v17, "v1"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 49
    .local v15, "v1":Ljava/lang/String;
    const-string/jumbo v17, "s"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "s":Ljava/lang/String;
    const-string/jumbo v17, "e"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "e":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 56
    :cond_2
    if-eqz v11, :cond_3

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 58
    :cond_3
    const-string/jumbo v11, "0"

    .line 60
    :cond_4
    if-eqz v7, :cond_5

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 62
    :cond_5
    const v17, 0x7fffffff

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    :cond_6
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lc8/xB;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "appVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 68
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lc8/oC;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "compareMin":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lc8/oC;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 71
    .local v5, "compareMax":I
    if-ltz v6, :cond_7

    if-gtz v5, :cond_8

    :cond_7
    if-ne v6, v5, :cond_a

    if-nez v5, :cond_a

    .line 72
    :cond_8
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 73
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v17

    const-string/jumbo v18, "package_push"

    invoke-interface/range {v17 .. v18}, Lc8/GF;->didOccurUpdateConfigSuccess(Ljava/lang/String;)V

    .line 75
    :cond_9
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v17

    const-string/jumbo v18, "package"

    const/16 v19, 0x0

    sget-object v20, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Lc8/KB;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 76
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v17

    const-string/jumbo v18, "customs"

    const/16 v19, 0x0

    sget-object v20, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v14, v2, v3}, Lc8/KB;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 77
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v17

    const-string/jumbo v18, "prefixes"

    const/16 v19, 0x0

    sget-object v20, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v15, v2, v3}, Lc8/KB;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 82
    .end local v4    # "appVersion":Ljava/lang/String;
    .end local v5    # "compareMax":I
    .end local v6    # "compareMin":I
    .end local v7    # "e":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "size":I
    .end local v13    # "v":Ljava/lang/String;
    .end local v14    # "v0":Ljava/lang/String;
    .end local v15    # "v1":Ljava/lang/String;
    .end local v16    # "versionArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v17

    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 83
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v17

    const-string/jumbo v18, "package"

    sget-object v19, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual/range {v19 .. v19}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v19

    const-string/jumbo v20, "package_push parse failed"

    invoke-interface/range {v17 .. v20}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 44
    .restart local v7    # "e":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "jsonObj":Lorg/json/JSONObject;
    .restart local v11    # "s":Ljava/lang/String;
    .restart local v12    # "size":I
    .restart local v13    # "v":Ljava/lang/String;
    .restart local v14    # "v0":Ljava/lang/String;
    .restart local v15    # "v1":Ljava/lang/String;
    .restart local v16    # "versionArray":Lorg/json/JSONArray;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string/jumbo v0, "TBConfigReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConfigName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isFromLocal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "android_windvane_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lc8/oC;->getAndroidWindvaneConfigData()V

    goto :goto_0
.end method
