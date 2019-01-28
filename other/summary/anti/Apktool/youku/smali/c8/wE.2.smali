.class public Lc8/wE;
.super Lc8/RD;
.source "WVBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private copyToClipboard(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 10
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v6, Lc8/kE;

    const-string/jumbo v8, "HY_PARAM_ERR"

    invoke-direct {v6, v8}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 280
    .local v6, "result":Lc8/kE;
    const-string/jumbo v4, "HY_PARAM_ERR"

    .line 281
    .local v4, "errMsg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 283
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "text"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    const-string/jumbo v8, "text"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "clipStr":Ljava/lang/String;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 287
    iget-object v8, p0, Lc8/wE;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 288
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 289
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 290
    new-instance v7, Lc8/kE;

    const-string/jumbo v8, "HY_SUCCESS"

    invoke-direct {v7, v8}, Lc8/kE;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v6    # "result":Lc8/kE;
    .local v7, "result":Lc8/kE;
    :try_start_1
    invoke-virtual {p1, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 304
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "clipStr":Ljava/lang/String;
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "result":Lc8/kE;
    .restart local v6    # "result":Lc8/kE;
    :goto_0
    return-void

    .line 294
    .restart local v1    # "clipStr":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    new-instance v7, Lc8/kE;

    const-string/jumbo v8, "HY_FAILED"

    invoke-direct {v7, v8}, Lc8/kE;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    .end local v6    # "result":Lc8/kE;
    .restart local v7    # "result":Lc8/kE;
    :try_start_3
    const-string/jumbo v4, "HY_FAILED"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v7

    .line 302
    .end local v1    # "clipStr":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "result":Lc8/kE;
    .restart local v6    # "result":Lc8/kE;
    :cond_1
    :goto_1
    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "result":Lc8/kE;
    .restart local v1    # "clipStr":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "result":Lc8/kE;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "result":Lc8/kE;
    .restart local v6    # "result":Lc8/kE;
    goto :goto_2
.end method


# virtual methods
.method public addTailJSBridge(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "jso":Lorg/json/JSONObject;
    const-string/jumbo v5, "className"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v5, "handlerName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "handlerName":Ljava/lang/String;
    const-string/jumbo v5, "params"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "param":Ljava/lang/String;
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 73
    .local v1, "context":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    iput-object v0, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 74
    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 75
    iput-object v4, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 76
    iget-object v5, p0, Lc8/wE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object v5, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 77
    new-instance v5, Lc8/uE;

    invoke-direct {v5, p0}, Lc8/uE;-><init>(Lc8/wE;)V

    iput-object v5, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Lc8/PD;

    .line 83
    new-instance v5, Lc8/vE;

    invoke-direct {v5, p0}, Lc8/vE;-><init>(Lc8/wE;)V

    iput-object v5, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Lc8/OD;

    .line 89
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v5

    iget-object v5, v5, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 90
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    .line 92
    :cond_0
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v5

    iget-object v5, v5, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v5, "Base"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTailJSBridge : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "context":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .end local v2    # "handlerName":Ljava/lang/String;
    .end local v3    # "jso":Lorg/json/JSONObject;
    .end local v4    # "param":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public commitUTEvent(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 19
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v9, 0x0

    .line 180
    .local v9, "isSucc":Z
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v11, "jso":Lorg/json/JSONObject;
    const-string/jumbo v16, "eventId"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 182
    .local v7, "eid":I
    const-string/jumbo v16, "arg1"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "arg1":Ljava/lang/String;
    const-string/jumbo v16, "arg2"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "arg2":Ljava/lang/String;
    const-string/jumbo v16, "arg3"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "arg3":Ljava/lang/String;
    const-string/jumbo v16, "args"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 186
    .local v6, "args":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 187
    .local v5, "arg4":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 188
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v14

    .line 189
    .local v14, "size":I
    new-array v5, v14, [Ljava/lang/String;

    .line 190
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 191
    .local v10, "it":Ljava/util/Iterator;
    const/4 v8, 0x0

    .line 192
    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 193
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 194
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v16, "%s=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v8

    .line 196
    add-int/lit8 v8, v8, 0x1

    .line 197
    goto :goto_0

    .line 199
    .end local v8    # "i":I
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "size":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_0
    const v16, 0xfb93

    move/from16 v0, v16

    if-ne v0, v7, :cond_1

    .line 200
    const/4 v9, 0x1

    .line 201
    invoke-static {v7, v2, v3, v4, v5}, Lc8/FF;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2    # "arg1":Ljava/lang/String;
    .end local v3    # "arg2":Ljava/lang/String;
    .end local v4    # "arg3":Ljava/lang/String;
    .end local v5    # "arg4":[Ljava/lang/String;
    .end local v6    # "args":Lorg/json/JSONObject;
    .end local v7    # "eid":I
    .end local v11    # "jso":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    new-instance v13, Lc8/kE;

    invoke-direct {v13}, Lc8/kE;-><init>()V

    .line 206
    .local v13, "result":Lc8/kE;
    if-eqz v9, :cond_3

    .line 207
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 208
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 209
    const-string/jumbo v16, "Base"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "commitUTEvent: param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_2
    :goto_2
    return-void

    .line 212
    :cond_3
    const-string/jumbo v16, "Base"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "commitUTEvent: parameter error, param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v16, "HY_PARAM_ERR"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .end local v13    # "result":Lc8/kE;
    :catch_0
    move-exception v16

    goto :goto_1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 46
    const-string/jumbo v0, "isWindVaneSDK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p3, p2}, Lc8/wE;->isWindVaneSDK(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 63
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 48
    :cond_0
    const-string/jumbo v0, "plusUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, p3, p2}, Lc8/wE;->plusUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v0, "commitUTEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0, p3, p2}, Lc8/wE;->commitUTEvent(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string/jumbo v0, "isInstall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p0, p3, p2}, Lc8/wE;->isInstall(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v0, "isAppsInstalled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p0, p3, p2}, Lc8/wE;->isAppsInstalled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_4
    const-string/jumbo v0, "copyToClipboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    invoke-direct {p0, p3, p2}, Lc8/wE;->copyToClipboard(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_5
    const-string/jumbo v0, "addTailJSBridge"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p0, p3, p2}, Lc8/wE;->addTailJSBridge(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isAppsInstalled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 248
    .local v2, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v7, Lc8/kE;

    invoke-direct {v7}, Lc8/kE;-><init>()V

    .line 249
    .local v7, "res":Lc8/kE;
    iget-object v8, p0, Lc8/wE;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 250
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "appname":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "android"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 261
    .local v5, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 263
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 266
    :goto_1
    if-nez v4, :cond_0

    const-string/jumbo v8, "0"

    :goto_2
    invoke-virtual {v7, v0, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "appname":Ljava/lang/String;
    .end local v2    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "res":Lc8/kE;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 244
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 271
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 255
    .restart local v0    # "appname":Ljava/lang/String;
    .restart local v2    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "res":Lc8/kE;
    :catch_1
    move-exception v1

    .line 256
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    const-string/jumbo v8, "0"

    invoke-virtual {v7, v0, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "1"

    goto :goto_2

    .line 268
    .end local v0    # "appname":Ljava/lang/String;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Lc8/kE;->setSuccess()V

    .line 269
    invoke-virtual {p1, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_3

    .restart local v0    # "appname":Ljava/lang/String;
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public isInstall(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "jso":Lorg/json/JSONObject;
    const-string/jumbo v4, "android"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    .end local v1    # "jso":Lorg/json/JSONObject;
    :goto_0
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 227
    .local v3, "result":Lc8/kE;
    iget-object v4, p0, Lc8/wE;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lc8/JH;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 228
    .local v0, "_installed":Z
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const-string/jumbo v4, "Base"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInstall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 236
    :goto_1
    return-void

    .line 224
    .end local v0    # "_installed":Z
    .end local v3    # "result":Lc8/kE;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "Base"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInstall parse params error, params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .restart local v0    # "_installed":Z
    .restart local v3    # "result":Lc8/kE;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1
.end method

.method public isWindVaneSDK(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 100
    .local v2, "result":Lc8/kE;
    const-string/jumbo v3, "os"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v3, "version"

    const-string/jumbo v4, "8.3.0"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string/jumbo v3, "Base"

    const-string/jumbo v4, "isWindVaneSDK: version=8.3.0"

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string/jumbo v1, "release"

    .line 106
    .local v1, "env":Ljava/lang/String;
    sget-object v3, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v4, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    const-string/jumbo v1, "daily"

    .line 112
    :cond_1
    :goto_0
    const-string/jumbo v3, "env"

    invoke-virtual {v2, v3, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "WVUCWebView"

    .line 115
    .local v0, "container":Ljava/lang/String;
    iget-object v3, p0, Lc8/wE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v3, v3, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v3, :cond_2

    .line 116
    const-string/jumbo v0, "WVWebView"

    .line 118
    :cond_2
    const-string/jumbo v3, "container"

    invoke-virtual {v2, v3, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 120
    return-void

    .line 108
    .end local v0    # "container":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v4, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const-string/jumbo v1, "pre"

    goto :goto_0
.end method

.method public plusUT(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 19
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v9, 0x0

    .line 131
    .local v9, "isSucc":Z
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v11, "jso":Lorg/json/JSONObject;
    const-string/jumbo v16, "eid"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 133
    .local v7, "eid":I
    const-string/jumbo v16, "a1"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "arg1":Ljava/lang/String;
    const-string/jumbo v16, "a2"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "arg2":Ljava/lang/String;
    const-string/jumbo v16, "a3"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "arg3":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v5, v0, [Ljava/lang/String;

    .line 137
    .local v5, "arg4":[Ljava/lang/String;
    const-string/jumbo v16, "args"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 138
    const-string/jumbo v16, "args"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 139
    .local v6, "args":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 140
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v14

    .line 141
    .local v14, "size":I
    new-array v5, v14, [Ljava/lang/String;

    .line 142
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 143
    .local v10, "it":Ljava/util/Iterator;
    const/4 v8, 0x0

    .line 144
    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 145
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 146
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 147
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v16, "%s=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v8

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 149
    goto :goto_0

    .line 152
    .end local v6    # "args":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "size":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_0
    const/16 v16, 0x238c

    move/from16 v0, v16

    if-lt v7, v0, :cond_1

    const/16 v16, 0x23f0

    move/from16 v0, v16

    if-lt v7, v0, :cond_2

    :cond_1
    const/16 v16, 0x4e1f

    move/from16 v0, v16

    if-ne v7, v0, :cond_3

    .line 153
    :cond_2
    const/4 v9, 0x1

    .line 154
    invoke-static {v7, v2, v3, v4, v5}, Lc8/FF;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2    # "arg1":Ljava/lang/String;
    .end local v3    # "arg2":Ljava/lang/String;
    .end local v4    # "arg3":Ljava/lang/String;
    .end local v5    # "arg4":[Ljava/lang/String;
    .end local v7    # "eid":I
    .end local v11    # "jso":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    new-instance v13, Lc8/kE;

    invoke-direct {v13}, Lc8/kE;-><init>()V

    .line 159
    .local v13, "result":Lc8/kE;
    if-eqz v9, :cond_5

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 161
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 162
    const-string/jumbo v16, "Base"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "plusUT: param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_4
    :goto_2
    return-void

    .line 165
    :cond_5
    const-string/jumbo v16, "Base"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "plusUT: parameter error, param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v16, "HY_PARAM_ERR"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .end local v13    # "result":Lc8/kE;
    :catch_0
    move-exception v16

    goto :goto_1
.end method
