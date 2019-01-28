.class public Lc8/GC;
.super Lc8/nF;
.source "WVReporterExtra.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/nF;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 22
    const-string/jumbo v0, "reportPerformanceCheckResult"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p3, p2}, Lc8/GC;->reportPerformanceCheckResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2, p3}, Lc8/nF;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v0

    :goto_0
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportPerformanceCheckResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 18
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v11, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "score"

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v2, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 35
    .local v4, "score":J
    const-string/jumbo v2, "version"

    const-string/jumbo v14, ""

    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "version":Ljava/lang/String;
    const-string/jumbo v2, "result"

    const-string/jumbo v14, ""

    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    .local v8, "result":Ljava/lang/String;
    const-string/jumbo v2, "detail"

    const-string/jumbo v14, ""

    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, "detail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/GC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    .local v3, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 41
    .local v7, "bizcode":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/GC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v2, v2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v2, :cond_4

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/GC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v2, Landroid/taobao/windvane/webview/WVWebView;

    iget-object v7, v2, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 50
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string/jumbo v2, "wvBizCode"

    invoke-virtual {v12, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 52
    .local v13, "wvBizCode":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    move-object v7, v13

    .line 57
    .end local v13    # "wvBizCode":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 58
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    invoke-interface/range {v2 .. v8}, Lc8/cG;->didPerformanceCheckResult(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    const-string/jumbo v2, "WindVaneWebPerfCheck"

    const-string/jumbo v14, "WindVaneWebPerfCheck: %s|%d|%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v9, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "score":J
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "bizcode":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "detail":Ljava/lang/String;
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v12    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 43
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "score":J
    .restart local v6    # "version":Ljava/lang/String;
    .restart local v7    # "bizcode":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "detail":Ljava/lang/String;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/GC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v2, v2, Lc8/DD;

    if-eqz v2, :cond_0

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/GC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v2, Lc8/DD;

    iget-object v7, v2, Lc8/DD;->bizCode:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 64
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "score":J
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "bizcode":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "detail":Ljava/lang/String;
    .end local v11    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 65
    .local v10, "e":Ljava/lang/Exception;
    new-instance v8, Lc8/kE;

    invoke-direct {v8}, Lc8/kE;-><init>()V

    .line 66
    .local v8, "result":Lc8/kE;
    const-string/jumbo v2, "msg"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "score":J
    .restart local v6    # "version":Ljava/lang/String;
    .restart local v7    # "bizcode":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    .restart local v9    # "detail":Ljava/lang/String;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
