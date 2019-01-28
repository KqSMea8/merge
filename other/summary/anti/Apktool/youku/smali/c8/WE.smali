.class public Lc8/WE;
.super Lc8/RD;
.source "WVFile.java"


# static fields
.field public static final FILE_MAX_SIZE:J = 0x500000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private canWriteFile(JLjava/lang/String;Z)Z
    .locals 5
    .param p1, "fileLength"    # J
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "isAppend"    # Z

    .prologue
    .line 218
    if-eqz p4, :cond_0

    .line 219
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 224
    .local v0, "total":J
    :goto_0
    const-wide/32 v2, 0x500000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 227
    :goto_1
    return v2

    .line 221
    .end local v0    # "total":J
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v0, v2

    .restart local v0    # "total":J
    goto :goto_0

    .line 227
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 35
    const-string/jumbo v0, "read"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p2, p3}, Lc8/WE;->read(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 42
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 37
    :cond_0
    const-string/jumbo v0, "write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, p2, p3}, Lc8/WE;->write(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final read(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 19
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 49
    const-string/jumbo v9, ""

    .line 50
    .local v9, "fileName":Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 52
    .local v15, "share":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 54
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v12, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v17, "fileName"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    const-string/jumbo v17, "share"

    const-string/jumbo v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 58
    if-eqz v9, :cond_0

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 59
    :cond_0
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v12    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v17

    new-instance v14, Lc8/kE;

    const-string/jumbo v17, "HY_PARAM_ERR"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 63
    .local v14, "result":Lc8/kE;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 69
    .end local v14    # "result":Lc8/kE;
    :cond_1
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v3

    .line 70
    .local v3, "cacheManager":Lc8/qB;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "dir":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 72
    new-instance v14, Lc8/kE;

    invoke-direct {v14}, Lc8/kE;-><init>()V

    .line 73
    .restart local v14    # "result":Lc8/kE;
    const-string/jumbo v17, "error"

    const-string/jumbo v18, "GET_DIR_FAILED"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 112
    :goto_0
    return-void

    .line 79
    .end local v14    # "result":Lc8/kE;
    :cond_2
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/WE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lc8/zF;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "host":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .end local v11    # "host":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "filePath":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 92
    .local v4, "data":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v13

    .line 94
    .local v13, "length":I
    new-array v2, v13, [B

    .line 95
    .local v2, "buffer":[B
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 96
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v5, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    .end local v4    # "data":Ljava/lang/String;
    .local v5, "data":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 109
    .end local v2    # "buffer":[B
    .end local v5    # "data":Ljava/lang/String;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v13    # "length":I
    .restart local v4    # "data":Ljava/lang/String;
    :goto_2
    new-instance v14, Lc8/kE;

    invoke-direct {v14}, Lc8/kE;-><init>()V

    .line 110
    .restart local v14    # "result":Lc8/kE;
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto/16 :goto_0

    .line 85
    .end local v4    # "data":Ljava/lang/String;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v14    # "result":Lc8/kE;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "wvShareFiles"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 99
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v10    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v17

    :goto_3
    new-instance v14, Lc8/kE;

    invoke-direct {v14}, Lc8/kE;-><init>()V

    .line 100
    .restart local v14    # "result":Lc8/kE;
    const-string/jumbo v17, "error"

    const-string/jumbo v18, "FILE_NOT_FOUND"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 102
    .end local v14    # "result":Lc8/kE;
    :catch_2
    move-exception v7

    .line 103
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v14, Lc8/kE;

    invoke-direct {v14}, Lc8/kE;-><init>()V

    .line 104
    .restart local v14    # "result":Lc8/kE;
    const-string/jumbo v17, "error"

    const-string/jumbo v18, "READ_FILE_FAILED"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 106
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "result":Lc8/kE;
    .restart local v2    # "buffer":[B
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "length":I
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "data":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    goto :goto_4

    .line 99
    .end local v4    # "data":Ljava/lang/String;
    .restart local v5    # "data":Ljava/lang/String;
    :catch_4
    move-exception v17

    move-object v4, v5

    .end local v5    # "data":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    goto :goto_3
.end method

.method public final write(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 24
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 118
    const-string/jumbo v17, ""

    .line 119
    .local v17, "mode":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 120
    .local v6, "data":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 121
    .local v11, "fileName":Ljava/lang/String;
    const-string/jumbo v19, ""

    .line 123
    .local v19, "share":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 125
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v16, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v21, "mode"

    const-string/jumbo v22, "write"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 127
    const-string/jumbo v21, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    const-string/jumbo v21, "fileName"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    const-string/jumbo v21, "share"

    const-string/jumbo v22, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 131
    if-eqz v17, :cond_0

    if-eqz v11, :cond_0

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 132
    :cond_0
    new-instance v21, Ljava/lang/Exception;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Exception;-><init>()V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v16    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v21

    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 136
    .local v18, "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "PARAMS_ERROR"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 145
    .end local v18    # "result":Lc8/kE;
    :cond_1
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v5

    .line 146
    .local v5, "cacheManager":Lc8/qB;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "dir":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 148
    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 149
    .restart local v18    # "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "GET_DIR_FAILED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 210
    .end local v18    # "result":Lc8/kE;
    :goto_0
    return-void

    .line 155
    :cond_2
    const-string/jumbo v21, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/WE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 157
    .local v20, "url":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lc8/zF;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "host":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 159
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    .end local v14    # "host":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, "dirFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_3

    .line 168
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 170
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v7, "dataFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 174
    const-string/jumbo v21, "write"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 175
    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 176
    .restart local v18    # "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "FILE_EXIST"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 161
    .end local v7    # "dataFile":Ljava/io/File;
    .end local v9    # "dirFile":Ljava/io/File;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v18    # "result":Lc8/kE;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "wvShareFiles"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 182
    .restart local v7    # "dataFile":Ljava/io/File;
    .restart local v9    # "dirFile":Ljava/io/File;
    .restart local v12    # "filePath":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    :cond_6
    :goto_2
    :try_start_2
    const-string/jumbo v21, "append"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 193
    .local v15, "isAppend":Z
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v6, v15}, Lc8/WE;->canWriteFile(JLjava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_7

    .line 194
    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 195
    .restart local v18    # "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "FILE_TOO_LARGE"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 203
    .end local v15    # "isAppend":Z
    .end local v18    # "result":Lc8/kE;
    :catch_1
    move-exception v10

    .line 204
    .local v10, "e":Ljava/lang/Exception;
    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 205
    .restart local v18    # "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "WRITE_FILE_FAILED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 207
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v18    # "result":Lc8/kE;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto/16 :goto_0

    .line 184
    :catch_2
    move-exception v21

    new-instance v18, Lc8/kE;

    invoke-direct/range {v18 .. v18}, Lc8/kE;-><init>()V

    .line 185
    .restart local v18    # "result":Lc8/kE;
    const-string/jumbo v21, "error"

    const-string/jumbo v22, "MAKE_FILE_FAILED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 199
    .end local v18    # "result":Lc8/kE;
    .restart local v15    # "isAppend":Z
    :cond_7
    :try_start_3
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 200
    .local v13, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 201
    .local v4, "bytes":[B
    invoke-virtual {v13, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 202
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
