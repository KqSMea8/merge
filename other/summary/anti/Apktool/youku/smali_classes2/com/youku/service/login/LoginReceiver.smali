.class public Lcom/youku/service/login/LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "action":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 44
    const-string/jumbo v2, "LoginReceiver"

    .line 46
    .local v2, "TAG":Ljava/lang/String;
    const-string/jumbo v12, "isAutoLogin"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 48
    .local v7, "isAutoLogin":Z
    const-string/jumbo v12, "com.youku.action.LOGIN"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 49
    const-string/jumbo v12, "uid"

    invoke-static {v12}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lc8/VLj;->uid:Ljava/lang/String;

    .line 50
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v12

    invoke-virtual {v12}, Lc8/thn;->isLogin()Z

    move-result v12

    sput-boolean v12, Lc8/VLj;->isLogined:Z

    .line 51
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v12

    invoke-virtual {v12}, Lc8/thn;->isLogin()Z

    move-result v12

    invoke-static {v12}, Lc8/VLj;->setLogined(Z)V

    .line 52
    if-nez v7, :cond_5

    .line 53
    const-string/jumbo v10, "1"

    .line 54
    .local v10, "merge":Ljava/lang/String;
    const/16 v12, 0x1e

    invoke-static {v12}, Lc8/hlh;->getPlayHistory(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 55
    .local v11, "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .local v8, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/HistoryVideoInfo;

    .line 57
    .local v6, "hvi":Lcom/youku/vo/HistoryVideoInfo;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v13, "v"

    iget-object v14, v6, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v13, "lastupdate"

    iget-wide v14, v6, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    invoke-virtual {v9, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v13, "po"

    iget v14, v6, Lcom/youku/vo/HistoryVideoInfo;->point:I

    mul-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v13, "tp"

    iget v14, v6, Lcom/youku/vo/HistoryVideoInfo;->tp:I

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v13, "shid"

    iget-object v14, v6, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v13, "hwclass"

    invoke-static {}, Lc8/bzo;->getDeviceType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v13, v6, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 66
    const-string/jumbo v13, "fid"

    iget-object v14, v6, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_2
    iget-object v13, v6, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 69
    const-string/jumbo v13, "cg"

    iget-object v14, v6, Lcom/youku/vo/HistoryVideoInfo;->cg:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_3
    :goto_2
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 76
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "hvi":Lcom/youku/vo/HistoryVideoInfo;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 80
    :try_start_1
    const-class v12, Lc8/TIj;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/TIj;

    new-instance v13, Lcom/youku/network/HttpIntent;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v10, v14}, Lc8/lSh;->getUplaodHistoryNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "GET"

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v14, Lc8/nhn;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lc8/nhn;-><init>(Lcom/youku/service/login/LoginReceiver;)V

    invoke-interface {v12, v13, v14}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "merge":Ljava/lang/String;
    .end local v11    # "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :cond_5
    :goto_3
    :try_start_2
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v12

    invoke-virtual {v12}, Lc8/jzk;->mergeOfflineSubscribeList()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 107
    :goto_4
    :try_start_3
    invoke-static {}, Lc8/yhn;->onLoginCollect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 112
    :goto_5
    if-nez v7, :cond_0

    .line 114
    :try_start_4
    sget-object v12, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v12}, Lc8/rin;->trackLoginPageLoginClick()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 115
    :catch_1
    move-exception v5

    .line 116
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 94
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "merge":Ljava/lang/String;
    .restart local v11    # "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :catch_2
    move-exception v5

    .line 95
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 102
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "merge":Ljava/lang/String;
    .end local v11    # "videoInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideoInfo;>;"
    :catch_3
    move-exception v5

    .line 103
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 108
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 109
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 120
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v12, "com.youku.action.LOGIN_BIND"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 122
    const-string/jumbo v12, "com.youku.action.LOGOUT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 160
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v12

    invoke-virtual {v12}, Lc8/thn;->isLogin()Z

    move-result v12

    invoke-static {v12}, Lc8/VLj;->setLogined(Z)V

    .line 162
    :try_start_5
    invoke-static {}, Lc8/WSn;->cancelUploadNotifaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 167
    :goto_6
    :try_start_6
    invoke-static {}, Lc8/yhn;->onLogoutCollect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 172
    :goto_7
    :try_start_7
    const-class v12, Lc8/ven;

    invoke-static {v12}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ven;

    .line 173
    .local v4, "d":Lc8/ven;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lc8/ven;->getDownloadFormat()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 174
    const/4 v12, 0x7

    invoke-interface {v4, v12}, Lc8/ven;->setDownloadFormat(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 176
    .end local v4    # "d":Lc8/ven;
    :catch_5
    move-exception v5

    .line 177
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 163
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 164
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 168
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .line 169
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2, v5}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
