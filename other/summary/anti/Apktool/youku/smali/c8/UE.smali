.class public Lc8/UE;
.super Lc8/RD;
.source "WVCookie.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCookie"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 37
    const-string/jumbo v0, "readCookies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, p3, p2}, Lc8/UE;->readCookies(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 48
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 39
    :cond_0
    const-string/jumbo v0, "writeCookies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0, p3, p2}, Lc8/UE;->writeCookies(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "read"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0, p3, p2}, Lc8/UE;->read(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v0, "write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0, p3, p2}, Lc8/UE;->write(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 19
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v12, Lc8/kE;

    invoke-direct {v12}, Lc8/kE;-><init>()V

    .line 144
    .local v12, "result":Lc8/kE;
    const/4 v15, 0x0

    .line 145
    .local v15, "urlString":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 147
    :try_start_0
    const-string/jumbo v16, "utf-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 152
    :goto_0
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    .local v10, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 163
    .end local v10    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v15}, Lc8/jB;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "cookieStr":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 165
    const-string/jumbo v16, "WVCookie"

    const-string/jumbo v17, "readCookies: cookieStr is null"

    invoke-static/range {v16 .. v17}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v5, ""

    .line 169
    :cond_1
    const-string/jumbo v16, "\""

    const-string/jumbo v17, "\\\\\""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "cookieData":Ljava/lang/String;
    const-string/jumbo v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "cookies":[Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v14, "resultValues":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v13, "resultData":Lorg/json/JSONObject;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v3, v2, v9

    .line 174
    .local v3, "cookie":Ljava/lang/String;
    const-string/jumbo v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "datas":[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 177
    const/16 v16, 0x0

    :try_start_2
    aget-object v16, v7, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v7, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v4    # "cookieData":Ljava/lang/String;
    .end local v5    # "cookieStr":Ljava/lang/String;
    .end local v6    # "cookies":[Ljava/lang/String;
    .end local v7    # "datas":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "resultData":Lorg/json/JSONObject;
    .end local v14    # "resultValues":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    const-string/jumbo v16, "WVCookie"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readCookies: param decode error, param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v16

    const-string/jumbo v16, "WVCookie"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readCookies: param parse to JSON error, param="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v16, "HY_PARAM_ERR"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 197
    :goto_3
    return-void

    .line 178
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "cookie":Ljava/lang/String;
    .restart local v4    # "cookieData":Ljava/lang/String;
    .restart local v5    # "cookieStr":Ljava/lang/String;
    .restart local v6    # "cookies":[Ljava/lang/String;
    .restart local v7    # "datas":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "resultData":Lorg/json/JSONObject;
    .restart local v14    # "resultValues":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    .line 179
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 186
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v7    # "datas":[Ljava/lang/String;
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_3
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v16

    if-nez v16, :cond_4

    .line 188
    const-string/jumbo v16, "values"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_4
    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    :goto_4
    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v14}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_3

    .line 191
    :catch_3
    move-exception v8

    .line 192
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public readCookies(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 54
    .local v3, "result":Lc8/kE;
    const/4 v4, 0x0

    .line 55
    .local v4, "url":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {p2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 62
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 72
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v4}, Lc8/jB;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "cookieStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 74
    const-string/jumbo v5, "WVCookie"

    const-string/jumbo v6, "readCookies: cookieStr is null"

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, ""

    .line 78
    :cond_1
    const-string/jumbo v5, "\""

    const-string/jumbo v6, "\\\\\""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cookieData":Ljava/lang/String;
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 83
    .end local v0    # "cookieData":Ljava/lang/String;
    .end local v1    # "cookieStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v5

    const-string/jumbo v5, "WVCookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readCookies: param decode error, param="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v5

    const-string/jumbo v5, "WVCookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readCookies: param parse to JSON error, param="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v5, "HY_PARAM_ERR"

    invoke-virtual {v3, v5}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1
.end method

.method public write(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 11
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    .line 201
    .local v6, "result":Lc8/kE;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "cookiesb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 203
    .local v2, "domain":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 205
    :try_start_0
    const-string/jumbo v8, "utf-8"

    invoke-static {p2, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 210
    :goto_0
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "jsObj":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 212
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    const-string/jumbo v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "jsObj":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    const-string/jumbo v8, "WVCookie"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeCookies: param parse to JSON error, param="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v8, "HY_PARAM_ERR"

    invoke-virtual {v6, v8}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 239
    :goto_2
    return-void

    .line 207
    :catch_1
    move-exception v8

    const-string/jumbo v8, "WVCookie"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeCookies: param decode error, param="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string/jumbo v8, "domain"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 227
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 229
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 230
    const-string/jumbo v8, "WVCookie"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeCookies: Illegal param: cookieStr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";domain="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_4
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 236
    :cond_5
    invoke-static {v2, v0}, Lc8/jB;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_2
.end method

.method public writeCookies(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 13
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v7, Lc8/kE;

    invoke-direct {v7}, Lc8/kE;-><init>()V

    .line 87
    .local v7, "result":Lc8/kE;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "cookiesb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 89
    .local v2, "domain":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 91
    :try_start_0
    const-string/jumbo v10, "utf-8"

    invoke-static {p2, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 96
    :goto_0
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 100
    .local v9, "value":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 104
    :goto_1
    :try_start_3
    const-string/jumbo v10, "domain"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string/jumbo v10, "expires"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "expires":Ljava/lang/String;
    const-string/jumbo v10, "path"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "path":Ljava/lang/String;
    const-string/jumbo v10, "secure"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "secure":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Domain="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 111
    const-string/jumbo v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 114
    const-string/jumbo v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Expires="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 117
    const-string/jumbo v10, "; "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Secure"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    .end local v3    # "expires":Ljava/lang/String;
    .end local v4    # "jsObj":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "secure":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 129
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 130
    const-string/jumbo v10, "WVCookie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "writeCookies: Illegal param: cookieStr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";domain="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-virtual {p1, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 139
    .end local v0    # "cookieStr":Ljava/lang/String;
    :goto_2
    return-void

    .line 93
    :catch_0
    move-exception v10

    const-string/jumbo v10, "WVCookie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "writeCookies: param decode error, param="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .restart local v4    # "jsObj":Lorg/json/JSONObject;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v10

    :try_start_4
    const-string/jumbo v10, "WVCookie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "writeCookies: URLEncoder.encode error: value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 121
    .end local v4    # "jsObj":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_2
    move-exception v10

    const-string/jumbo v10, "WVCookie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "writeCookies: param parse to JSON error, param="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v10, "HY_PARAM_ERR"

    invoke-virtual {v7, v10}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 136
    .restart local v0    # "cookieStr":Ljava/lang/String;
    :cond_5
    invoke-static {v2, v0}, Lc8/jB;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_2
.end method
