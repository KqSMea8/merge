.class public Lc8/nF;
.super Lc8/RD;
.source "WVReporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    .line 25
    const-string/jumbo v0, "reportError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p3, p2}, Lc8/nF;->reportError(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 32
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 27
    :cond_0
    const-string/jumbo v0, "reportDomLoad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0, p3, p2}, Lc8/nF;->reportDomLoad(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized reportDomLoad(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 16
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .local v7, "obj":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v12

    invoke-interface {v12}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "url":Ljava/lang/String;
    const-string/jumbo v12, "time"

    const-wide/16 v14, 0x0

    invoke-virtual {v7, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 60
    .local v8, "time":J
    const-string/jumbo v12, "firstByte"

    const-wide/16 v14, 0x0

    invoke-virtual {v7, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 61
    .local v4, "firstBytetime":J
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 64
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v12, "self_"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 66
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 67
    .local v11, "val":Ljava/lang/Long;
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 68
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v12, v10, v13, v14, v15}, Lc8/cG;->didPageOccurSelfDefinedEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "firstBytetime":J
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "time":J
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "val":Ljava/lang/Long;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    monitor-exit p0

    return-void

    .line 71
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "firstBytetime":J
    .restart local v7    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "time":J
    .restart local v10    # "url":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 72
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v12

    invoke-interface {v12, v10, v8, v9}, Lc8/cG;->didPageDomLoadAtTime(Ljava/lang/String;J)V

    .line 73
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v12

    invoke-interface {v12, v10, v4, v5}, Lc8/cG;->didPageReceiveFirstByteAtTime(Ljava/lang/String;J)V

    .line 75
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized reportError(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v3

    const-string/jumbo v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "line"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v4, v5, v6}, Lc8/HF;->didOccurJSError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
