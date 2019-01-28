.class public Lc8/rwk;
.super Lc8/RD;
.source "YKFreeFlowWVPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 25
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 31
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 33
    :cond_0
    const/16 v22, 0x0

    .line 200
    :goto_0
    return v22

    .line 35
    :cond_1
    new-instance v16, Lc8/kE;

    invoke-direct/range {v16 .. v16}, Lc8/kE;-><init>()V

    .line 37
    .local v16, "result":Lc8/kE;
    const-string/jumbo v22, "unicomSubscribe"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v22, "unicomActivate"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 39
    :cond_2
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v22, "userid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string/jumbo v22, "userid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 41
    const-string/jumbo v22, "userid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "encodeUserId":Ljava/lang/String;
    const-string/jumbo v22, "8KVx!%)qCm6"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lc8/vwk;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "decodeUserId":Ljava/lang/String;
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lc8/Xvk;->savaCachePhoneNumber(Ljava/lang/String;)V

    .line 44
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "js\u8ba2\u8d2d\u624b\u673a\u53f7\u7801\u5199\u5165\u7f13\u5b58\u6210\u529f\uff0c\u51c6\u5907\u66f4\u65b0\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    const-string/jumbo v22, "5"

    sput-object v22, Lc8/owk;->SDKSTART:Ljava/lang/String;

    .line 46
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lc8/Dvk;->setCanShowToast(Z)V

    .line 47
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    new-instance v23, Lc8/qwk;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v9, v3}, Lc8/qwk;-><init>(Lc8/rwk;Lc8/kE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lc8/Xvk;->queryRelateShip(Ljava/lang/String;Lc8/Ivk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v7    # "decodeUserId":Ljava/lang/String;
    .end local v9    # "encodeUserId":Ljava/lang/String;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v8

    .line 68
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    .line 73
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v22, "deviceInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 74
    const-string/jumbo v5, "-1"

    .line 75
    .local v5, "carrier":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 76
    .local v6, "carrierStr":Ljava/lang/String;
    const-string/jumbo v13, "1"

    .line 77
    .local v13, "networkStr":Ljava/lang/String;
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 78
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getApplication()Landroid/app/Application;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lc8/pwk;->getOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, "operator":Ljava/lang/String;
    const-string/jumbo v22, "mobile"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 81
    const-string/jumbo v5, "0"

    .line 82
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getMobileMgr()Lc8/Mvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Mvk;->getCacheID()Ljava/lang/String;

    move-result-object v6

    .line 96
    .end local v15    # "operator":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string/jumbo v22, "carrier"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v22, "carrier_userid"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v22, "network"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v22, "app_version"

    sget-object v23, Lc8/NHg;->appver:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v22, "app_name"

    sget-object v23, Lc8/NHg;->appname:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v22, "guid"

    sget-object v23, Lc8/NHg;->guid:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v22, "pid"

    sget-object v23, Lc8/NHg;->pid:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v19, 0x0

    .line 112
    .local v19, "utdid":Ljava/lang/String;
    :try_start_1
    const-class v22, Lc8/vdn;

    invoke-static/range {v22 .. v22}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lc8/vdn;

    invoke-interface/range {v22 .. v22}, Lc8/vdn;->getUtdid()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 116
    const-string/jumbo v22, "utdid"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_3
    const-string/jumbo v22, "device"

    sget-object v23, Lc8/NHg;->os:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v22, "imsi"

    sget-object v23, Lc8/NHg;->imsi:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 123
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 83
    .end local v19    # "utdid":Ljava/lang/String;
    .restart local v15    # "operator":Ljava/lang/String;
    :cond_6
    const-string/jumbo v22, "unicom"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 85
    const-string/jumbo v5, "1"

    .line 86
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Xvk;->getCacheID()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 87
    :cond_7
    const-string/jumbo v22, "telecom"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 89
    const-string/jumbo v5, "2"

    goto/16 :goto_2

    .line 90
    :cond_8
    invoke-static {}, Lc8/Iin;->isWifi()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 91
    const-string/jumbo v5, "-1"

    .line 92
    const-string/jumbo v13, "0"

    goto/16 :goto_2

    .line 113
    .end local v15    # "operator":Ljava/lang/String;
    .restart local v19    # "utdid":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    const-string/jumbo v22, "utdid"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v22

    const-string/jumbo v23, "utdid"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    throw v22

    .line 124
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v6    # "carrierStr":Ljava/lang/String;
    .end local v13    # "networkStr":Ljava/lang/String;
    .end local v19    # "utdid":Ljava/lang/String;
    :cond_9
    const-string/jumbo v22, "testQuertInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 125
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v10

    .line 126
    .local v10, "freeFlowResult":Lc8/Avk;
    if-eqz v10, :cond_a

    .line 127
    invoke-virtual {v10}, Lc8/Avk;->toString()Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, "str":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "js\u67e5\u8be2\u8ba2\u8d2d\u5173\u7cfb:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    const-string/jumbo v22, "info"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 138
    .end local v17    # "str":Ljava/lang/String;
    :goto_4
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 135
    :cond_a
    const-string/jumbo v22, "info"

    const-string/jumbo v23, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_4

    .line 139
    .end local v10    # "freeFlowResult":Lc8/Avk;
    :cond_b
    const-string/jumbo v22, "testQuertId"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 140
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getId()Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "id":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 142
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "js\u67e5\u8be2\u4f2a\u7801\u6216\u624b\u673a\u53f7:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    const-string/jumbo v22, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 152
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string/jumbo v22, "id"

    const-string/jumbo v23, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_5

    .line 153
    .end local v11    # "id":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "testPlay"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 155
    :try_start_3
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 157
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "number":Ljava/lang/String;
    const-string/jumbo v22, "8KVx!%)qCm6"

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lc8/vwk;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 159
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lc8/Xvk;->savaCachePhoneNumber(Ljava/lang/String;)V

    .line 160
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "js\u8ba2\u8d2d\u624b\u673a\u53f7\u7801\u5199\u5165\u7f13\u5b58\u6210\u529f\uff0c\u51c6\u5907\u66f4\u65b0\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lc8/Xvk;->queryRelateShip(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v22, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "number":Ljava/lang/String;
    :cond_e
    :goto_6
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 166
    :catch_2
    move-exception v8

    .line 167
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 170
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_f
    const-string/jumbo v22, "testActivition"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 172
    :try_start_4
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 174
    const-string/jumbo v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 175
    .restart local v14    # "number":Ljava/lang/String;
    const-string/jumbo v22, "8KVx!%)qCm6"

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lc8/vwk;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 176
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lc8/Xvk;->savaCachePhoneNumber(Ljava/lang/String;)V

    .line 177
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "js\u6fc0\u6d3b\u624b\u673a\u53f7\u7801\u5199\u5165\u7f13\u5b58\u6210\u529f\uff0c\u51c6\u5907\u66f4\u65b0\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lc8/Dvk;->getUnicomMgr()Lc8/Xvk;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lc8/Xvk;->queryRelateShip(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v22, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "number":Ljava/lang/String;
    :cond_10
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 183
    :catch_3
    move-exception v8

    .line 184
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 187
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_11
    const-string/jumbo v22, "testVideoUrlChange"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 190
    const-string/jumbo v20, "\u4eba\u6c11\u7684\u540d\u4e49"

    .line 191
    .local v20, "videoName":Ljava/lang/String;
    const-string/jumbo v21, "http://vali.cp31.ott.cibntv.net/6771AEECB154971CAC5FE3E38/0300200A00592E98A6633B2BEEFCF9CD97AB7D-2366-6D8C-4023-E988461F3A44.mp4?ccode=0201019001&duration=393&expire=18000&psid=5a660f84a6e19b3c32300df516a7f0c6&ups_client_netip=114.242.249.73&ups_ts=1503308710&ups_userid=&utid=WZNy%2FdUs5T4DAC%2BFPnrIStX2&vid=XMjY3Nzc1NTY5Ng%3D%3D&vkey=Af83c493223615eda19b275d98c77fbc1"

    .line 192
    .local v21, "videoUrl":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v18, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v22

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Dvk;->queryFreeFlowVideoUrlsSync(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lc8/Gvk;)V

    .line 196
    const-string/jumbo v22, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 198
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 200
    .end local v18    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "videoName":Ljava/lang/String;
    .end local v21    # "videoUrl":Ljava/lang/String;
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0
.end method
