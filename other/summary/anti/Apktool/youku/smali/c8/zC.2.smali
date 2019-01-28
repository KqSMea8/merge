.class public Lc8/zC;
.super Lc8/RD;
.source "WVACCS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yC;
    }
.end annotation


# static fields
.field private static final serviceClassName:Ljava/lang/String; = "android.taobao.windvane.extra.jsbridge.WVACCSService"

.field private static final serviceIdDefault:Ljava/lang/String; = "windvane"


# instance fields
.field private serviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private bindService(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "serviceId":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "serviceId"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Lc8/kE;

    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 138
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v2

    new-instance v2, Lc8/kE;

    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 123
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    .line 124
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    const-string/jumbo v3, "windvane"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "windvane"

    const-string/jumbo v4, "android.taobao.windvane.extra.jsbridge.WVACCSService"

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/ACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :cond_1
    :goto_2
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.taobao.windvane.extra.jsbridge.WVACCSService"

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/ACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private connectionState(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 237
    .local v0, "result":Lc8/kE;
    :try_start_0
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/ACCSManager;->getChannelState(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 238
    .local v1, "stateMap":Ljava/util/Map;
    if-nez v1, :cond_0

    .line 239
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "stateMap":Ljava/util/Map;
    :cond_0
    :goto_0
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 248
    return-void

    .line 243
    :catch_0
    move-exception v2

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lc8/yC;

    iget-object v2, p0, Lc8/zC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-direct {v1, v2}, Lc8/yC;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 91
    return-void
.end method

.method private setData(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 21
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 170
    .local v3, "serviceId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 171
    .local v9, "data":Ljava/lang/String;
    const/4 v14, 0x0

    .line 183
    .local v14, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v12, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "serviceId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    new-instance v15, Lc8/kE;

    invoke-direct {v15}, Lc8/kE;-><init>()V

    .line 187
    .local v15, "result":Lc8/kE;
    const-string/jumbo v4, "msg"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "serviceId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is not bind!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    move-object v1, v14

    .line 232
    .end local v12    # "jsObj":Lorg/json/JSONObject;
    .end local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v15    # "result":Lc8/kE;
    .local v1, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :goto_0
    return-void

    .line 191
    .end local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v12    # "jsObj":Lorg/json/JSONObject;
    .restart local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :cond_0
    const-string/jumbo v4, "userId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "userId":Ljava/lang/String;
    const-string/jumbo v4, "options"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 193
    .local v13, "options":Lorg/json/JSONObject;
    const-string/jumbo v4, "data"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    if-nez v13, :cond_1

    .line 196
    new-instance v4, Lc8/kE;

    const-string/jumbo v19, "HY_PARAM_ERR"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lc8/kE;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    move-object v1, v14

    .line 197
    .end local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    goto :goto_0

    .line 199
    .end local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :cond_1
    const-string/jumbo v4, "dataId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "dataId":Ljava/lang/String;
    const-string/jumbo v4, "host"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "host":Ljava/lang/String;
    const-string/jumbo v4, "tag"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, "tag":Ljava/lang/String;
    const-string/jumbo v4, "isUnit"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 203
    .local v11, "isUnit":Z
    const-string/jumbo v4, "timeout"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 204
    .local v17, "timeout":I
    const-string/jumbo v4, "target"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "target":Ljava/lang/String;
    const-string/jumbo v4, "businessId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 206
    .local v8, "businessId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 208
    .local v7, "url":Ljava/net/URL;
    :try_start_1
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v7    # "url":Ljava/net/URL;
    .local v18, "url":Ljava/net/URL;
    move-object/from16 v7, v18

    .line 211
    .end local v18    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :goto_1
    :try_start_2
    new-instance v1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct/range {v1 .. v8}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .end local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v11}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setIsUnitBusiness(Z)V

    .line 214
    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTimeOut(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 226
    .end local v2    # "userId":Ljava/lang/String;
    .end local v5    # "dataId":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "businessId":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "isUnit":Z
    .end local v12    # "jsObj":Lorg/json/JSONObject;
    .end local v13    # "options":Lorg/json/JSONObject;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "timeout":I
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    .line 227
    :cond_2
    new-instance v4, Lc8/kE;

    const-string/jumbo v19, "HY_PARAM_ERR"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lc8/kE;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 224
    .end local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :catch_0
    move-exception v4

    move-object v1, v14

    .end local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :goto_3
    new-instance v4, Lc8/kE;

    const-string/jumbo v19, "HY_PARAM_ERR"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lc8/kE;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 230
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/taobao/accs/ACCSManager;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto/16 :goto_0

    .line 224
    .restart local v2    # "userId":Ljava/lang/String;
    .restart local v5    # "dataId":Ljava/lang/String;
    .restart local v6    # "target":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "businessId":Ljava/lang/String;
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v11    # "isUnit":Z
    .restart local v12    # "jsObj":Lorg/json/JSONObject;
    .restart local v13    # "options":Lorg/json/JSONObject;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "timeout":I
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v1    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v14    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private unBindService(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "serviceId":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "serviceId"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 148
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Lc8/kE;

    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 164
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v2

    new-instance v2, Lc8/kE;

    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    .line 155
    :cond_1
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 157
    :cond_2
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/taobao/accs/ACCSManager;->unregisterService(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 95
    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p3, p2}, Lc8/zC;->bindService(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 106
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 97
    :cond_0
    const-string/jumbo v0, "unBindService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, p3, p2}, Lc8/zC;->unBindService(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v0, "setData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, p3, p2}, Lc8/zC;->setData(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string/jumbo v0, "connectionState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-direct {p0, p3, p2}, Lc8/zC;->connectionState(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 86
    invoke-direct {p0, p1}, Lc8/zC;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 252
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 255
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "serviceId":Ljava/lang/String;
    iget-object v2, p0, Lc8/zC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/taobao/accs/ACCSManager;->unregisterService(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "serviceId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/zC;->serviceIdList:Ljava/util/ArrayList;

    .line 262
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0}, Lc8/RD;->onDestroy()V

    .line 263
    return-void
.end method
