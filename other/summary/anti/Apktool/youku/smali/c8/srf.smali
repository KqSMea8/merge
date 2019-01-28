.class public Lc8/srf;
.super Lc8/RD;
.source "MtopStatPlugin.java"


# static fields
.field public static final API_SERVER_NAME:Ljava/lang/String; = "MtopStatPlugin"

.field private static final TAG:Ljava/lang/String; = "MtopStatPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "MtopStatPlugin"

    const-class v1, Lc8/srf;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    return-void
.end method


# virtual methods
.method public commitUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/lE;
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lc8/BMp;->isPrintLog()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 76
    const-string/jumbo v12, "MtopStatPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[commitUT] params="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v12, "pageName"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "pageName":Ljava/lang/String;
    const-string/jumbo v12, "eventId"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "eventId":I
    const-string/jumbo v12, "arg1"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "arg1":Ljava/lang/String;
    const-string/jumbo v12, "arg2"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "arg2":Ljava/lang/String;
    const-string/jumbo v12, "arg3"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "arg3":Ljava/lang/String;
    const-string/jumbo v12, "args"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 86
    .local v7, "args":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 87
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 88
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 89
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 90
    .local v9, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 91
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v2    # "eventId":I
    .end local v3    # "arg1":Ljava/lang/String;
    .end local v4    # "arg2":Ljava/lang/String;
    .end local v5    # "arg3":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "args":Lorg/json/JSONObject;
    .end local v9    # "iterator":Ljava/util/Iterator;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 98
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "MtopStatPlugin"

    const-string/jumbo v13, "JSON\u89e3\u6790\u5931\u8d25"

    invoke-static {v12, v13, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const-string/jumbo v12, "JSON\u89e3\u6790\u5931\u8d25"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 104
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 95
    .restart local v1    # "pageName":Ljava/lang/String;
    .restart local v2    # "eventId":I
    .restart local v3    # "arg1":Ljava/lang/String;
    .restart local v4    # "arg2":Ljava/lang/String;
    .restart local v5    # "arg3":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "args":Lorg/json/JSONObject;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-static/range {v1 .. v6}, Lc8/rrf;->commit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 100
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v2    # "eventId":I
    .end local v3    # "arg1":Ljava/lang/String;
    .end local v4    # "arg2":Ljava/lang/String;
    .end local v5    # "arg3":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "args":Lorg/json/JSONObject;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 101
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "MtopStatPlugin"

    const-string/jumbo v13, "\u53d1\u751f\u5f02\u5e38"

    invoke-static {v12, v13, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const-string/jumbo v12, "\u53d1\u751f\u5f02\u5e38"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 36
    const-string/jumbo v1, "get"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, p3, p2}, Lc8/srf;->getStat(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 44
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string/jumbo v1, "commitUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0, p3, p2}, Lc8/srf;->commitUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStat(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/lE;
    .end annotation

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "urlKey":Ljava/lang/String;
    invoke-static {}, Lc8/TN;->getNetworkStat()Lc8/SN;

    move-result-object v4

    invoke-interface {v4, v3}, Lc8/SN;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "stat":Ljava/lang/String;
    invoke-static {}, Lc8/BMp;->isPrintLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string/jumbo v4, "MtopStatPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getStat] url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " stat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {p2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 70
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "stat":Ljava/lang/String;
    .end local v3    # "urlKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 61
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "stat":Ljava/lang/String;
    .restart local v3    # "urlKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "stat":Ljava/lang/String;
    .end local v3    # "urlKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MtopStatPlugin"

    const-string/jumbo v5, "JSON\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const-string/jumbo v4, "JSON\u89e3\u6790\u5931\u8d25"

    invoke-virtual {p1, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MtopStatPlugin"

    const-string/jumbo v5, "\u53d1\u751f\u5f02\u5e38"

    invoke-static {v4, v5, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const-string/jumbo v4, "\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {p1, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
