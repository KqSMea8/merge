.class public Lc8/oF;
.super Lc8/RD;
.source "WVScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public capture(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 20
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v14, Lc8/kE;

    invoke-direct {v14}, Lc8/kE;-><init>()V

    .line 49
    .local v14, "result":Lc8/kE;
    const-string/jumbo v11, ""

    .line 50
    .local v11, "inAlbum":Ljava/lang/String;
    const-string/jumbo v15, "app"

    .line 51
    .local v15, "type":Ljava/lang/String;
    const-wide/16 v8, 0x2800

    .line 52
    .local v8, "maxShortSide":J
    const-wide/16 v6, 0x2800

    .line 53
    .local v6, "maxLongSide":J
    const/16 v13, 0x32

    .line 54
    .local v13, "quality":I
    const/4 v10, 0x1

    .line 55
    .local v10, "compress":Z
    const-wide/16 v16, 0x0

    .line 56
    .local v16, "time":J
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v12, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "inAlbum"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    const-string/jumbo v2, "maxShortSide"

    const-wide/16 v4, 0x2800

    invoke-virtual {v12, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 62
    const-string/jumbo v2, "maxLongSide"

    const-wide/16 v4, 0x2800

    invoke-virtual {v12, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 63
    const-string/jumbo v2, "quality"

    const/16 v4, 0x32

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 64
    const/16 v2, 0x64

    if-gt v13, v2, :cond_0

    if-gez v13, :cond_1

    .line 65
    :cond_0
    const/16 v13, 0x32

    .line 67
    :cond_1
    const-string/jumbo v2, "compress"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 73
    .end local v12    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 75
    .local v3, "isInAlbum":Z
    :goto_1
    :try_start_1
    const-string/jumbo v2, "app"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/oF;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    int-to-long v4, v13

    invoke-static/range {v2 .. v10}, Lc8/pE;->captureByActivty(Landroid/app/Activity;ZJJJZ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 83
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lc8/zF;->getVirtualPath(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "url":Ljava/lang/String;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "localPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v5

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 87
    return-void

    .line 69
    .end local v3    # "isInAlbum":Z
    .end local v18    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    new-instance v14, Lc8/kE;

    .end local v14    # "result":Lc8/kE;
    const-string/jumbo v2, "HY_PARAM_ERR"

    invoke-direct {v14, v2}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v14    # "result":Lc8/kE;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 73
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 78
    .restart local v3    # "isInAlbum":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/oF;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v2

    int-to-long v4, v13

    invoke-static/range {v2 .. v10}, Lc8/pE;->capture(Landroid/view/View;ZJJJZ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v16

    goto :goto_2

    .line 81
    :catch_1
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_2
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 35
    const-string/jumbo v0, "capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p3, p2}, Lc8/oF;->capture(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 44
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 37
    :cond_0
    const-string/jumbo v0, "getOrientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, p3, p2}, Lc8/oF;->getOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "setOrientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0, p3, p2}, Lc8/oF;->setOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 91
    .local v2, "result":Lc8/kE;
    iget-object v3, p0, Lc8/oF;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 92
    const-string/jumbo v3, "error"

    const-string/jumbo v4, "Context must be Activty!"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 95
    :cond_0
    iget-object v3, p0, Lc8/oF;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 97
    .local v0, "orientation":I
    if-nez v0, :cond_1

    .line 98
    const-string/jumbo v1, "landscape"

    .line 104
    .local v1, "orientationString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "orientation"

    invoke-virtual {v2, v3, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 106
    return-void

    .line 99
    .end local v1    # "orientationString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 100
    const-string/jumbo v1, "portrait"

    .restart local v1    # "orientationString":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v1    # "orientationString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "unknown"

    .restart local v1    # "orientationString":Ljava/lang/String;
    goto :goto_0
.end method

.method public setOrientation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 110
    const-string/jumbo v2, ""

    .line 111
    .local v2, "orientation":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "orientation"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lc8/oF;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 121
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 122
    .local v3, "result":Lc8/kE;
    const-string/jumbo v4, "error"

    const-string/jumbo v5, "Context must be Activty!"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 126
    .end local v3    # "result":Lc8/kE;
    :cond_1
    iget-object v0, p0, Lc8/oF;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 127
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v4, "landscape"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "landscapeRight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 141
    :goto_1
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 142
    :goto_2
    return-void

    .line 116
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    new-instance v3, Lc8/kE;

    const-string/jumbo v4, "HY_PARAM_ERR"

    invoke-direct {v3, v4}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v3    # "result":Lc8/kE;
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 129
    .end local v3    # "result":Lc8/kE;
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string/jumbo v4, "landscapeLeft"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 131
    :cond_4
    const-string/jumbo v4, "portrait"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 133
    :cond_6
    const-string/jumbo v4, "portraitUpsideDown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 134
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 135
    :cond_7
    const-string/jumbo v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_2
.end method
